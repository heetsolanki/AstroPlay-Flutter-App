import '../exports.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String todayFacts;

  @override
  void initState() {
    super.initState();

    DateTime nowUtc = DateTime.now().toUtc();
    DateTime nowIst = nowUtc.add(const Duration(hours: 5, minutes: 30));

    String dateKey = DateFormat('yyyyMMdd').format(nowIst);
    int seed = int.parse(dateKey);

    final random = Random(seed);
    int factIndex = random.nextInt(dailyFacts.length);

    todayFacts = dailyFacts[factIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 20),
        children: [
          // Main Exploration Cards
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SpaceCard(
                  title: 'Planets',
                  imagePath: 'assets/app_images/planet.webp',
                ),
                SpaceCard(
                  title: 'Moons',
                  imagePath: 'assets/app_images/moon.webp',
                ),
                SpaceCard(
                  title: 'Constellations',
                  imagePath: 'assets/app_images/constellation.webp',
                ),
                SpaceCard(
                  title: 'Stars',
                  imagePath: 'assets/app_images/star.webp',
                ),
                SpaceCard(
                  title: 'Rockets',
                  imagePath: 'assets/app_images/rocket.webp',
                ),
                SpaceCard(
                  title: 'Astronauts',
                  imagePath: 'assets/app_images/astronaut.webp',
                ),
              ],
            ),
          ),

          // Fun Fact Card
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF1A1B41),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFFF5FA2).withValues(alpha: 0.15),
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(0, 0),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              // height: 250,
              width: 250,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/app_images/idea.webp'),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Daily Fun Fact!',
                          style: GoogleFonts.fredoka(
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Did you know Jupiter has 79 moons?',
                        style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Daily Quiz Card
          Padding(
            padding: EdgeInsets.symmetric(vertical: 28, horizontal: 20),
            child: QuizCard(),
          ),
        ],
      ),
    );
  }
}
