import 'exports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AstroPlay',
      theme: ThemeData(
        primaryColor: Color(0xFF7B5CFF), // Vibrant Purple
        scaffoldBackgroundColor: Color(0xFF0B0D26), // Deep Navy
        colorScheme: ColorScheme.dark(
          primary: Color(0xFF7B5CFF),
          secondary: Color(0xFFFF5FA2),
          tertiary: Color(0xFF3DFF92),
          surface: Color(0xFF1A1B41),
          onPrimary: Colors.white,
          onSecondary: Colors.white,
        ),
      ),
      home: const MyHomePage(),
      routes: {
        '/home': (context) => const MyHomePage(),
        '/explore': (context) => const ExploreScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [HomeScreen(), ExploreScreen()];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(5),
          child: Image.asset('assets/app_images/logo.webp'),
        ),
        scrolledUnderElevation: 10.0,
        elevation: 0,
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF7B5CFF), Color(0xFFFF5FA2)],
            ),
          ),
        ),
        title: Text(
          'AstroPlay',
          style: GoogleFonts.baloo2(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10.0,
        iconSize: 23.0,
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Symbols.home_filled_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Symbols.planet_rounded),
            label: 'Explore',
          ),
        ],
      ),
    );
  }
}
