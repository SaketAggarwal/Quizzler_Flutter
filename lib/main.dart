import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scores = [
    // Icon(Icons.import_contacts_sharp),
  ];
  int daksh = 0;
  List<String> questions = [
    "The first song ever sung in the space was \“Happy Birthday.\” ",
    "Tea contains more caffeine than coffee and soda. ",
    "Bill Gates is the founder of Amazon. ",
    "Mice have more bones than humans.",
    "Quidditch is the most popular sport among witches and wizards in “Harry Potter”.",
    "The Beatles is a famous rock band from Manchester, the United Kingdom.",
    "The star is the most common symbol used in all national flags around the world.",
    "Black is the most commonly used colour in all national flags around the world.",
    "The capital of Australia is Sydney.",
    "The World War II began in 1939 when Germany invaded Poland."
        "English is the most spoken language in the world.",
    "Mount Everest, the highest mountain above the sea level in the world, is located in the Himalayas.",
    "An octopus typically has three hearts."
  ];
  List<bool> ans = [
    true,
    false,
    false,
    true,
    true,
    false,
    true,
    false,
    false,
    true,
    false,
    true,
    true
  ];

  @override
  Widget build(BuildContext context) {
    if (daksh == questions.length) {
      daksh--;
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questions[daksh],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.

                setState(() {
                  if (ans[daksh] == true) {
                    Alert(
                      context: context,
                      title: " Shabash",
                      desc: "Sahi Jawaab ",
                      image: Image.asset("assets/aa.png"),
                    ).show();
                    scores.add(
                      Icon(
                        Icons.check,
                        size: 30,
                        color: Colors.green,
                      ),
                    );
                  } else {
                    Alert(
                      context: context,
                      title: "Doob Mar ",
                      desc: "\nGalat Jawaab ",
                      image: Image.asset("assets/s.png"),
                    ).show();
                    scores.add(
                      Icon(
                        Icons.cancel,
                        size: 30,
                        color: Colors.red,
                      ),
                    );
                  }
                  daksh = daksh + 1;
                });
                // scores.removeRange(0, scores.length);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)),
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  if (ans[daksh] == false) {
                    Alert(
                      context: context,
                      title: " Shabash",
                      desc: "Sahi Jawaab ",
                      image: Image.asset("assets/aa.png"),
                    ).show();
                    scores.add(
                      Icon(
                        Icons.check,
                        size: 30,
                        color: Colors.green,
                      ),
                    );
                  } else {
                    Alert(
                      context: context,
                      title: "Doob Mar ",
                      desc: "\nGalat Jawaab ",
                      image: Image.asset("assets/s.png"),
                    ).show();
                    scores.add(
                      Icon(
                        Icons.cancel,
                        size: 30,
                        color: Colors.red,
                      ),
                    );
                  }
                  daksh = daksh + 1;
                });
                //The user picked false.
              },
            ),
          ),
        ),
        //TODO: Add a Row here as your score keeper
        Row(
          children: scores

          //   Icon(
          //     Icons.icecream_outlined,
          //     color: Colors.white,
          //     size: 50,
          //   ),
          ,
        ),
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
