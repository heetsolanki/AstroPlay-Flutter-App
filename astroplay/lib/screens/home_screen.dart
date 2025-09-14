import '../exports.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 20),
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SpaceCard(
                  title: 'Planets',
                  imagePath: 'assets/planet-earth.png',
                ),
                SpaceCard(
                  title: 'Stars',
                  imagePath: 'assets/star.png',
                ),
                SpaceCard(
                  title: 'Moons',
                  imagePath: 'assets/moon.png',
                ),
                SpaceCard(
                  title: 'Rockets',
                  imagePath: 'assets/rocket.png',
                ),
                SpaceCard(
                  title: 'Astronauts',
                  imagePath: 'assets/astronaut.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
