import '../exports.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 20),
        children: [
          // Planets
          Row(
            children: [
              SizedBox(
                height: 30,
                width: 30,
                child: Image.asset('assets/app_images/planet.webp'),
              ),
              SizedBox(width: 10),
              Text(
                'Planets',
                style: GoogleFonts.baloo2(
                  fontWeight: FontWeight.w600,
                  fontSize: 33,
                ),
              ),
            ],
          ),
          Divider(height: 20, thickness: 2, endIndent: 125),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: [
                SpaceCard(
                  title: 'Mercury',
                  imagePath: 'assets/planet_images/mercury.webp',
                ),
                SpaceCard(
                  title: 'Venus',
                  imagePath: 'assets/planet_images/venus.webp',
                ),
                SpaceCard(
                  title: 'Earth',
                  imagePath: 'assets/planet_images/earth.webp',
                ),
                SpaceCard(
                  title: 'Mars',
                  imagePath: 'assets/planet_images/mars.webp',
                ),
                SpaceCard(
                  title: 'Jupiter',
                  imagePath: 'assets/planet_images/jupiter.webp',
                ),
                SpaceCard(
                  title: 'Saturn',
                  imagePath: 'assets/planet_images/saturn.webp',
                ),
                SpaceCard(
                  title: 'Uranus',
                  imagePath: 'assets/planet_images/uranus.webp',
                ),
                SpaceCard(
                  title: 'Neptune',
                  imagePath: 'assets/planet_images/neptune.webp',
                ),
              ],
            ),
          ),

          // Moon
          Row(
            children: [
              SizedBox(
                height: 30,
                width: 30,
                child: Image.asset('assets/app_images/moon.webp'),
              ),
              SizedBox(width: 10),
              Text(
                'Moons',
                style: GoogleFonts.baloo2(
                  fontWeight: FontWeight.w600,
                  fontSize: 33,
                ),
              ),
            ],
          ),
          Divider(height: 20, thickness: 2, endIndent: 125),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: [
                SpaceCard(
                  title: 'Moon',
                  imagePath: 'assets/moon_images/moon.webp',
                ),
                SpaceCard(
                  title: 'Europa',
                  imagePath: 'assets/moon_images/europa.webp',
                ),
                SpaceCard(
                  title: 'Ganymede',
                  imagePath: 'assets/moon_images/ganymede.webp',
                ),
                SpaceCard(title: 'Io', imagePath: 'assets/moon_images/io.webp'),
                SpaceCard(
                  title: 'Titan',
                  imagePath: 'assets/moon_images/titan.webp',
                ),
                SpaceCard(
                  title: 'Enceladus',
                  imagePath: 'assets/moon_images/enceladus.webp',
                ),
                SpaceCard(
                  title: 'Triton',
                  imagePath: 'assets/moon_images/triton.webp',
                ),
                SpaceCard(
                  title: 'Phobos',
                  imagePath: 'assets/moon_images/phobos.webp',
                ),
              ],
            ),
          ),

          // Constellations
          Row(
            children: [
              SizedBox(
                height: 30,
                width: 30,
                child: Image.asset('assets/app_images/constellation.webp'),
              ),
              SizedBox(width: 10),
              Text(
                'Constellations',
                style: GoogleFonts.baloo2(
                  fontWeight: FontWeight.w600,
                  fontSize: 33,
                ),
              ),
            ],
          ),
          Divider(height: 20, thickness: 2, endIndent: 125),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: [
                SpaceCard(
                  title: 'Capricorn',
                  imagePath: 'assets/constellation_images/capricorn.webp',
                ),
                SpaceCard(
                  title: 'Scorpio',
                  imagePath: 'assets/constellation_images/scorpio.webp',
                ),
                SpaceCard(
                  title: 'Gemini',
                  imagePath: 'assets/constellation_images/gemini.webp',
                ),
                SpaceCard(
                  title: 'Sagittarius',
                  imagePath: 'assets/constellation_images/sagittarius.webp',
                ),
                SpaceCard(
                  title: 'Piesces',
                  imagePath: 'assets/constellation_images/piesces.webp',
                ),
                SpaceCard(
                  title: 'Leo',
                  imagePath: 'assets/constellation_images/leo.webp',
                ),
                SpaceCard(
                  title: 'Taurus',
                  imagePath: 'assets/constellation_images/taurus.webp',
                ),
                SpaceCard(
                  title: 'Libra',
                  imagePath: 'assets/constellation_images/libra.webp',
                ),
                SpaceCard(
                  title: 'Virgo',
                  imagePath: 'assets/constellation_images/virgo.webp',
                ),
                SpaceCard(
                  title: 'Aries',
                  imagePath: 'assets/constellation_images/aries.webp',
                ),
                SpaceCard(
                  title: 'Aquarius',
                  imagePath: 'assets/constellation_images/aquarius.webp',
                ),
                SpaceCard(
                  title: 'Cancer',
                  imagePath: 'assets/constellation_images/cancer.webp',
                ),
              ],
            ),
          ),

          // Stars
          Row(
            children: [
              SizedBox(
                height: 30,
                width: 30,
                child: Image.asset('assets/app_images/star.webp'),
              ),
              SizedBox(width: 10),
              Text(
                'Stars',
                style: GoogleFonts.baloo2(
                  fontWeight: FontWeight.w600,
                  fontSize: 33,
                ),
              ),
            ],
          ),
          Divider(height: 20, thickness: 2, endIndent: 125),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: [
                SpaceCard(
                  title: 'Sun',
                  imagePath: 'assets/star_images/sun.webp',
                ),
                SpaceCard(
                  title: 'Sirius',
                  imagePath: 'assets/star_images/sirius.webp',
                ),
                SpaceCard(
                  title: 'Betelgeuse',
                  imagePath: 'assets/star_images/betelgeuse.webp',
                ),
                SpaceCard(
                  title: 'Rigel',
                  imagePath: 'assets/star_images/rigel.webp',
                ),
                SpaceCard(
                  title: 'Polaris',
                  imagePath: 'assets/star_images/polaris.webp',
                ),
                SpaceCard(
                  title: 'Vega',
                  imagePath: 'assets/star_images/vega.webp',
                ),
                SpaceCard(
                  title: 'Altair',
                  imagePath: 'assets/star_images/altair.webp',
                ),
                SpaceCard(
                  title: 'Antares',
                  imagePath: 'assets/star_images/antares.webp',
                ),
              ],
            ),
          ),

          // Rockets
          Row(
            children: [
              SizedBox(
                height: 30,
                width: 30,
                child: Image.asset('assets/app_images/rocket.webp'),
              ),
              SizedBox(width: 10),
              Text(
                'Rockets',
                style: GoogleFonts.baloo2(
                  fontWeight: FontWeight.w600,
                  fontSize: 33,
                ),
              ),
            ],
          ),
          Divider(height: 20, thickness: 2, endIndent: 125),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: [
                SpaceCard(
                  title: 'Saturn V',
                  imagePath: 'assets/rocket_images/saturn-v.webp',
                ),
                SpaceCard(
                  title: 'Space Shuttle',
                  imagePath: 'assets/rocket_images/space-shuttle.webp',
                ),
                SpaceCard(
                  title: 'Falcon 9',
                  imagePath: 'assets/rocket_images/falcon9.webp',
                ),
                SpaceCard(
                  title: 'Apollo Lunar Module',
                  imagePath: 'assets/rocket_images/apollo-lunar.webp',
                ),
                SpaceCard(
                  title: 'Soyuz',
                  imagePath: 'assets/rocket_images/soyuz.webp',
                ),
              ],
            ),
          ),

          // Astronauts
          Row(
            children: [
              SizedBox(
                height: 30,
                width: 30,
                child: Image.asset('assets/app_images/astronaut.webp'),
              ),
              SizedBox(width: 10),
              Text(
                'Astronauts',
                style: GoogleFonts.baloo2(
                  fontWeight: FontWeight.w600,
                  fontSize: 33,
                ),
              ),
            ],
          ),
          Divider(height: 20, thickness: 2, endIndent: 125),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: [
                SpaceCard(
                  title: 'Neil Armstrong',
                  imagePath: 'assets/astronaut_images/neil-armstrong.webp',
                ),
                SpaceCard(
                  title: 'Buzz Aldrin',
                  imagePath: 'assets/astronaut_images/buzz-aldrin.webp',
                ),
                SpaceCard(
                  title: 'Yuri Gagarin',
                  imagePath: 'assets/astronaut_images/yuri-gagarin.webp',
                ),
                SpaceCard(
                  title: 'Valentina Tereshkova',
                  imagePath: 'assets/astronaut_images/valentina.webp',
                ),
                SpaceCard(
                  title: 'Kalpana Chawla',
                  imagePath: 'assets/astronaut_images/kalpana-chawla.webp',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
