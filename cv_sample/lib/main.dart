import 'package:cv_sample/data/remote_data_source/user/user_api.dart';
import 'package:cv_sample/data/repository/user_repository.dart';
import 'package:cv_sample/feature_user_details/view/user_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';

import 'feature_user_details/bloc/user_bloc.dart';

void main() {
  final injector = ModuleContainer().initialise(Injector.getInjector());
  runApp(MyApp(injector));
}

class MyApp extends StatelessWidget {
  MyApp(this.injector);

  final Injector injector;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider(
        create: (context) => UserBloc(injector.get<UserRepository>()),
        child: UserProfilePage(userId: '1'),
      ),
    );
  }
}

class ModuleContainer {
  Injector initialise(Injector injector) {
    injector.map<UserApi>((i) => UserApi(), isSingleton: true);
    injector.map<UserRepository>((i) => UserRepository(i.get<UserApi>()),
        isSingleton: true);
    return injector;
  }
}
