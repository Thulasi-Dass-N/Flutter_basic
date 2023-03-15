import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalResult;
  final VoidCallback resetter;

  const Result(this.finalResult, this.resetter, {super.key});

  String get resultValue {
    String resultText = '';
    if (finalResult >= 39) {
      resultText = 'Your are Awesome!!!';
    } else if (finalResult >= 38) {
      resultText = 'Your are excellent!!!';
    } else if (finalResult >= 35) {
      resultText = 'Your are Good!';
    } else if (finalResult >= 33) {
      resultText = 'Your are average ';
    } else if (finalResult <= 28) {
      resultText = 'Try to do better';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultValue,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 48),
            textAlign: TextAlign.center,
          ),
          Text(
            'Your Score : $finalResult',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 48),
            textAlign: TextAlign.center,
          ),
          TextButton(
              onPressed: resetter,
              child: const Text(
                'Restart the quiz',
                style: TextStyle(
                    fontSize: 35, color: Color.fromARGB(255, 92, 210, 49)),
                strutStyle: StrutStyle(fontSize: Checkbox.width),
              ))
        ],
      ),
    );
  }
}
