import '../exports.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen ({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            'Explore the Universe!',
            style: GoogleFonts.baloo2(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          )
        ],
      )
    );
  }
}