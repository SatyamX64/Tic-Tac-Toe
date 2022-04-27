part of 'sc_difficulty.dart';

class _DifficultyOption extends StatelessWidget {
  const _DifficultyOption({
    required this.image,
    required this.title,
    required this.primary,
    required this.secondary,
    Key? key,
  }) : super(key: key);

  final ImageProvider image;
  final String title;
  final Color primary;
  final Color secondary;
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
                  color: secondary,
                  borderRadius: BorderRadius.circular(72),
                  border: Border.all(color: primary, width: 2)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(GameScreen.route);
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
                  title,
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
              decoration: BoxDecoration(shape: BoxShape.circle, color: primary),
              height: 120,
              width: 120,
              padding: const EdgeInsets.all(24),
              child: Image(
                image: image,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
