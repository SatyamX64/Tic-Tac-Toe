part of 'sc_menu.dart';

const _title = [
  _BigCharacter.yellow('T'),
  _BigCharacter.red('I'),
  _BigCharacter.yellow('C'),
  _BigCharacter('\n'),
  _BigCharacter.red('T'),
  _BigCharacter.yellow('A'),
  _BigCharacter.red('C'),
  _BigCharacter('\n'),
  _BigCharacter.yellow('T'),
  _BigCharacter.red('O'),
  _BigCharacter.yellow('E'),
];

class _BigCharacter {
  final String character;
  final Color color;

  const _BigCharacter(this.character)
      : color = const Color(0x00000000),
        assert(character.length == 1);

  const _BigCharacter.yellow(this.character)
      : color = const Color(0xFFF9CF33),
        assert(character.length == 1);

  const _BigCharacter.red(this.character)
      : color = const Color(0xFFE34950),
        assert(character.length == 1);
}

TextSpan _bigCharacter(String character, Color color) {
  assert(character.length == 1);
  return TextSpan(
    text: character,
    style: TextStyle(
      color: color,
      fontSize: 112,
      fontFamily: FontFamily.amity,
      shadows: const <Shadow>[
        Shadow(
          offset: Offset(10.0, 10.0),
          blurRadius: 3.0,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
        Shadow(
          offset: Offset(10.0, 10.0),
          blurRadius: 8.0,
          color: Color.fromARGB(125, 0, 0, 255),
        ),
      ],
    ),
  );
}
