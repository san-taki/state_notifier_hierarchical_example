import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:hierarchicalstateexample/app_state.dart';
import 'package:hierarchicalstateexample/resource/api/login_service.dart';
import 'package:hierarchicalstateexample/screens/home/home_page.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => LoginService()),
        StateNotifierProvider<AppStateNotifier, AppState>(
          create: (_) => AppStateNotifier(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage(),
      ),
    );
  }
}
