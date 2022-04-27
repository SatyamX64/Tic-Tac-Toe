import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Move extends Equatable {
  final Widget widget;
  final String id;

  Move.X()
      : id = 'X',
        widget = FittedBox(
          fit: BoxFit.fill,
          child: Text(
            'X',
            style: GoogleFonts.poppins(
                color: const Color(0xFFE34951),
                fontWeight: FontWeight.w800,
                fontSize: 44),
          ),
        );

  Move.O()
      : id = 'O',
        widget = FittedBox(
          fit: BoxFit.fill,
          child: Text(
            'O',
            style: GoogleFonts.poppins(
                color: const Color(0xFFF8CE32),
                fontWeight: FontWeight.w800,
                fontSize: 44),
          ),
        );

  const Move.empty()
      : id = ' ',
        widget = const SizedBox.shrink();

  @override
  List<Object?> get props => [id];
}
