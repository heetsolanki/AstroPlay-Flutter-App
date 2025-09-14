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
      routes: {},
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

  final List<Widget> _screens = [HomeScreen(), HomeScreen()];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 10.0,
        elevation: 10.0,
        backgroundColor: Theme.of(context).colorScheme.primary,
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
            icon: Icon(Symbols.home_filled_rounded),
            label: 'Home',
          ),
        ],
      ),
    );
  }
}
