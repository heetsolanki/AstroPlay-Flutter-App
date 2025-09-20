import '../exports.dart';

class SpaceCard extends StatefulWidget {
  final String title;
  final String imagePath;

  const SpaceCard({super.key, required this.title, required this.imagePath});

  @override
  State<SpaceCard> createState() => _SpaceCardState();
}
class _SpaceCardState extends State<SpaceCard> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF1A1B41),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF3DFF92).withValues(alpha: 0.15),
              blurRadius: 10.0,
              spreadRadius: 5.0,
              offset: Offset(0, 0),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        height: 250,
        width: 250,
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            spacing: 10.0,
            children: [
              Text(
                widget.title,
                style: GoogleFonts.fredoka(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 120, width: 120, child: Image.asset(widget.imagePath)),
            ],
          ),
        ),
      ),
    );
  }
}
