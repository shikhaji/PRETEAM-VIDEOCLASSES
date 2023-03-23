import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr_team/model/shuffleanswers.dart';
import 'package:pr_team/utils/app_color.dart';
import 'package:pr_team/utils/app_text_style.dart';
import 'package:pr_team/views/dashboard/question_pageview.dart';
import 'package:pr_team/widgets/app_text.dart';
import 'api_trivia.dart';

//todo change this name
typedef void Randomise(List options);

class QuizScreen extends StatefulWidget {
  QuizScreen({Key? key}) : super(key: key);
  List wrongRightList = [];

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final ApiTrivia _apitrivia = ApiTrivia();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF053251),
      appBar: AppBar(
        centerTitle: true,
        title:  appText('Quiz questions',style:AppTextStyle.appBarTitle.copyWith(color: AppColor.black)),
      ),
      body: _futureWidget(),
    );
  }

  _futureWidget() {
    return FutureBuilder(
      future: _apitrivia.getStates(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List results = snapshot.data as List;
          ShuffleRight(
              result: results,
              Shuffler: (options) {
                widget.wrongRightList = options;
              });

          return QuestionsPageView(
              results: results, wrongRightList: widget.wrongRightList);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
