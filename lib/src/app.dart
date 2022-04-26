import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/presentation/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRouter.initialRoute,
      onGenerateRoute: AppRouter.generateRoute,
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}
