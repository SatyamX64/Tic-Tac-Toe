import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Move extends Equatable {
  final Widget widget;
  final String id;

  const Move.X()
      : id = 'X',
        widget = const FittedBox(
          fit: BoxFit.fill,
          child: Text(
            'X',
            style: TextStyle(
                color: Color(0xFFE34951),
                fontWeight: FontWeight.w800,
                fontSize: 48),
          ),
        );

  const Move.O()
      : id = 'O',
        widget = const FittedBox(
          fit: BoxFit.fill,
          child: Text(
            'O',
            style: TextStyle(
                color: Color(0xFFF8CE32),
                fontWeight: FontWeight.w800,
                fontSize: 48),
          ),
        );

  const Move.empty()
      : id = ' ',
        widget = const SizedBox.shrink();

  @override
  List<Object?> get props => [id];
}
