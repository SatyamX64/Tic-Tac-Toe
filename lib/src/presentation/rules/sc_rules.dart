import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/presentation/shared/gradient_scaffold.dart';

class RulesScreen extends StatelessWidget {
  const RulesScreen({Key? key}) : super(key: key);

  static const route = '/rules';

  @override
  Widget build(BuildContext context) {
    return const GradientScaffold(
      body: Center(
        child: Text('Rules Screen'),
      ),
    );
  }
}
