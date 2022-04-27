import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class PlayerCard extends StatelessWidget {
  const PlayerCard.X({
    required this.backgroundColor,
    required this.image,
    required this.name,
    required this.turn,
    Key? key,
  })  : character = 'X',
        characterColor = const Color(0xFFE34951),
        super(key: key);

  const PlayerCard.O({
    required this.backgroundColor,
    required this.image,
    required this.name,
    required this.turn,
    Key? key,
  })  : character = 'O',
        characterColor = const Color(0xFFF8CE32),
        super(key: key);

  final ImageProvider image;
  final Color backgroundColor;
  final Color characterColor;
  final String name;
  final String character;
  final bool turn;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
          child: turn
              ? Lottie.network(
                  'https://assets6.lottiefiles.com/packages/lf20_o87tttfh.json')
              : null,
        ),
        const SizedBox(
          height: 6,
        ),
        Expanded(
          child: AspectRatio(
            aspectRatio: 0.75,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black54,
                border: turn ? Border.all(color: Colors.white) : null,
                borderRadius: BorderRadius.circular(12),
              ),
              height: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: backgroundColor),
                    height: 64,
                    width: 64,
                    padding: const EdgeInsets.all(12),
                    child: Image(image: image),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    name,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  Text(
                    character,
                    style: GoogleFonts.poppins(
                        color: characterColor,
                        fontWeight: FontWeight.w800,
                        fontSize: 44),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 40,
          child: Text(
            turn ? 'Your Turn' : '',
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
