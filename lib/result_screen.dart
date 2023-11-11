import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quiz_app/screens/loading.dart';
import 'package:quiz_app/screens/home.dart';
import 'package:quiz_app/data/question.dart';

class Result extends StatefulWidget {
  final List<String> selectedAnswers;
  const Result({super.key, required this.selectedAnswers});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  List<Map<String, Object>> getsummarydata() {
    final List<Map<String, Object>> summary = [];
      for(var i =0; i<question.length; i++){
        summary.add({
          'question_number':i,
          'question':question[i].text,
          'answers':question[i].answers[0],
          'user_answer':widget.selectedAnswers[i]
        },);

      }
    return summary;
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin:  const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You Answered x out of Y Correctly!'),
            Text(widget.selectedAnswers[0]),
          const  SizedBox(
              height: 30,
            ),
            Text('List of the Question with its answers'),
           const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => loading()));
                },
                icon: const Icon(Icons.restart_alt),
                label:const Text('Restart the Quiz'))
          ],
        ),
      ),
    );
  }
}
