import 'package:flutter/material.dart';
import 'package:tic_tac_toe/gen/assets.gen.dart';
import 'package:tic_tac_toe/src/presentation/shared/gradient_scaffold.dart';

class RulesScreen extends StatefulWidget {
  const RulesScreen({Key? key}) : super(key: key);

  static const route = '/rules';

  static const _style = TextStyle(fontWeight: FontWeight.w600, fontSize: 18);

  @override
  State<RulesScreen> createState() => _RulesScreenState();
}

class _RulesScreenState extends State<RulesScreen> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  List<String> _items = [];

  static const _source = [
    '• You can only draw on empty tiles',
    '• 3 match in a row/column  wins',
    '• 3 match in a diagonal  wins',
    '• You can never defeat the hard bot :)',
    '• This list looks too short',
    '• I should probably add more points',
  ];
  @override
  void initState() {
    super.initState();
    addRules();
  }

  void addRules() async {
    for (int i = 0; i < _source.length; i++) {
      await Future.delayed(const Duration(milliseconds: 60));
      addItem(i);
    }
  }

  void addItem(int index) {
    _listKey.currentState?.insertItem(_items.length,
        duration: const Duration(milliseconds: 500));
    _items = [
      ..._items,
      _source[index],
    ];
  }

  @override
  Widget build(BuildContext context) {
    Widget slideIt(BuildContext context, int index, animation) {
      var item = _items[index];
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(1, 0),
          end: const Offset(0, 0),
        ).animate(animation),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Text(
            item,
            style: RulesScreen._style,
          ),
        ),
      );
    }

    return GradientScaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Rules',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: AnimatedList(
                key: _listKey,
                initialItemCount: 0,
                itemBuilder: (context, index, animation) {
                  return slideIt(context, index, animation);
                },
              ),
            ),
            Assets.images.rule.image(),
          ],
        ),
      ),
    );
  }
}
