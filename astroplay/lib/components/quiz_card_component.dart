import '../exports.dart';
import 'package:intl/intl.dart';

class QuizCard extends StatefulWidget {
  const QuizCard({
    super.key,
  });

  @override
  State<QuizCard> createState() => _QuizCardState();
}

class _QuizCardState extends State<QuizCard> {
  late Map<String, dynamic> todayQuestion;
  int? _selectedIndex;
  bool? _isCorrect;

  @override
  void initState() {
    super.initState();

    DateTime nowUtc = DateTime.now().toUtc();
    DateTime nowIst = nowUtc.add(const Duration(hours: 5, minutes: 30));

    String dateKey = DateFormat('yyyyMMdd').format(nowIst); // safer seed
    int seed = int.parse(dateKey);

    final random = Random(seed);
    int questionIndex = random.nextInt(dailyQuestions.length);

    todayQuestion = dailyQuestions[questionIndex];
  }

  void checkAnswer(int index) {
    setState(() {
      _selectedIndex = index;
      _isCorrect = todayQuestion["options"][index] == todayQuestion["correctAnswer"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1A1B41),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF3DFF92).withValues(alpha: 0.15),
            blurRadius: 10.0,
            spreadRadius: 5.0,
            offset: const Offset(0, 0),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      width: 250,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
        child: Column(
          children: [
            Text(
              todayQuestion["question"],
              style: GoogleFonts.nunito(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            ...List.generate(todayQuestion["options"].length, (index) {
              return RadioListTile<int?>(
                key: ValueKey("${todayQuestion["question"]}_$index"),
                activeColor: const Color(0xFFFF5FA2),
                title: Text(
                  todayQuestion["options"][index],
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                groupValue: _selectedIndex,
                value: index,
                onChanged: (value) {
                  if (_selectedIndex == null) {
                    checkAnswer(index);
                  }
                },
              );
            }),
            if (_isCorrect != null) ...[
              const SizedBox(height: 10),
              Text(
                _isCorrect!
                    ? "✅ Correct!"
                    : "❌ Wrong! The answer is ${todayQuestion["correctAnswer"]}",
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: _isCorrect! ? Colors.green : Colors.red,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}