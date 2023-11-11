import 'package:flutter/material.dart';
import 'package:quiz_app/data/answerButton.dart';
import 'package:quiz_app/screens/loading.dart';
import 'package:quiz_app/data/question.dart';
import 'package:quiz_app/result_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var answerquestion = 0;
  List<String> selectedAnswers = [];
  void questionindex() {
    setState(() {
      answerquestion++;
    });
  }

  List<String> choosenAnswer(){
    return selectedAnswers;
  }
  @override
  Widget build(BuildContext context) {
    final Currentquestion = question[answerquestion];
    return Scaffold(
        backgroundColor: Colors.blue[900],
        body: SizedBox(
          width: double.infinity,
          child: Container(
            margin: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  Currentquestion.text,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                ...Currentquestion.getshuffled().map(
                  (answer) =>
                      // answerbutton(onTap: questionindex, Answertext: answers)
                      ElevatedButton(
                    onPressed: (){
                      selectedAnswers.add(answer);
                      print(selectedAnswers);
                      setState(() {
                        answerquestion++;
                      });

                      if(selectedAnswers.length==question.length){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Result(selectedAnswers: selectedAnswers,)));
                        });
                      }
                    },
                    child: Text(answer),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
