// import 'dart:html';
//
// import 'dart:wasm';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/screens/home.dart';
import 'package:quiz_app/screens/questions.dart';

// import 'package:flutter_spinkit/src/square_circle.dart';
class loading extends StatefulWidget {
  const loading({super.key});

  @override
  State<loading> createState() => _loadingState();
}

class _loadingState extends State<loading> {
  final List<String> selectedAnswers=[];
  void choosenAnswers(String answer){
   selectedAnswers.add(answer);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Colors.blue,
          Colors.cyan,
          Colors.cyanAccent,
          Colors.greenAccent
        ],
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            "https://media.istockphoto.com/id/1319947380/vector/quiz-logo-banner-pop-art-design-for-survey-answer-question-game-questionnaire-quiz-icon.jpg?s=170667a&w=0&k=20&c=0YZfZa2OU3c6_hziUrvY0yW9y_FCS2Dy-GSuPpk6gAU=",
            height: 280,
            width: 250,
            // color: Color.fromARGB(150, 255, 255, 255)
          ),
        const  Text(
            "Let's Start The Quiz!",
            style: TextStyle(
                color: Colors.white70,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        const  SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blueGrey.withOpacity(0.6),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              icon: const Icon(Icons.arrow_forward,
              color: Colors.white,),
              label: const Text(
                "Start",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ))
        ],
      ),
    ));
  }
}
