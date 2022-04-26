import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/utility/palette.dart';

class GradientScaffold extends StatelessWidget {
  const GradientScaffold({required this.body, this.appBar, Key? key})
      : super(key: key);

  final Widget body;
  final PreferredSizeWidget? appBar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
                0.1,
                1.0
              ],
              colors: [
                Palette.lightBlue,
                Palette.darkBlue,
              ]),
        ),
        child: SafeArea(child: body),
      ),
      appBar: appBar,
    );
  }
}
