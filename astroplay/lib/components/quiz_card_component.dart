import '../exports.dart';

class QuizCard extends StatefulWidget {
  final String question;
  final List<String> options;
  final String correctAnswer;

  // final Function(String) onOptionSelected;

  const QuizCard({
    super.key,
    required this.question,
    required this.options,
    required this.correctAnswer,
  });

  @override
  State<QuizCard> createState() => _QuizCardState();
}

class _QuizCardState extends State<QuizCard> {
  int? _selectedIndex;
  bool? _isCorrect;

  void checkAnswer(int index) {
    setState(() {
      _selectedIndex = index;
      _isCorrect = widget.options[index] == widget.correctAnswer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
      width: 250,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
        child: Column(
          children: [
            Text(
              widget.question,
              style: GoogleFonts.nunito(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10),
            ...List.generate(widget.options.length, (index) {
              return RadioListTile<int?>(
                activeColor: Color(0xFFFF5FA2),
                title: Text(
                  widget.options[index],
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
                    : "❌ Wrong! The answer is ${widget.correctAnswer}",
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
