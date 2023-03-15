import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // final void Function()? selectHandler;
  final VoidCallback selectHandler;
  final String answerText;

const Answer(this.selectHandler,this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        
        onPressed: selectHandler,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue, // Background color
         textStyle: const TextStyle(color: Colors.green)
        ),
        child:  Text(answerText),
      ),
    );
  }
}
