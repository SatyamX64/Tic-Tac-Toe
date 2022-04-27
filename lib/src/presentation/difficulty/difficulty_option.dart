part of 'sc_difficulty.dart';

class _DifficultyOption extends StatelessWidget {
  const _DifficultyOption({
    required this.player,
    required this.color,
    Key? key,
  }) : super(key: key);

  final Color color;
  final Player player;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: double.maxFinite,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 68,
              width: double.maxFinite,
              margin: const EdgeInsets.symmetric(horizontal: 52),
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(72),
                  border: Border.all(color: player.color, width: 2)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(GameScreen.route,
                      arguments: player);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(72),
                  ),
                  padding: const EdgeInsets.only(left: 60),
                ),
                child: Text(
                  player.name,
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ),
          Positioned(
            left: 52,
            child: Container(
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: player.color),
              height: 120,
              width: 120,
              padding: const EdgeInsets.all(24),
              child: Image(
                image: player.image,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
