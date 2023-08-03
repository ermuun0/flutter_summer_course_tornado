import 'dart:math';
import 'package:flutter/material.dart';
import 'char_model.dart';
import 'task_model.dart';
import 'package:word_search_safety/word_search_safety.dart';

class TaskWidget extends StatefulWidget {
  final Size size;
  final List<TaskModel> listQuestions;
  const TaskWidget(this.size, this.listQuestions, {super.key});

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  late Size size;
  late List<TaskModel> listQuestions;
  int currentQuestionIndex = 0;
  int hintCount = 0;
  @override
  Widget build(BuildContext context) {
    super.initState();
    size = widget.size;
    listQuestions = widget.listQuestions;
    TaskModel currentQuestion = listQuestions[currentQuestionIndex];

    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Container(
            padding:  EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: genHint(
                    chil
                  ),
                )
              ],
            ),

          )
        ],
      ),
    );
  }

  void genPuzzle({
    List<TaskModel>? loop,
    bool next = false,
    bool left = false,
  }) {
    if (loop != null) {
      currentQuestionIndex = 0;
      listQuestions = [];
      listQuestions.addAll(loop);
    } else if (next && currentQuestionIndex < listQuestions.length - 1) {
      currentQuestionIndex++;
    } else if (left && currentQuestionIndex > 0) {
      currentQuestionIndex--;
    } else if (currentQuestionIndex >= listQuestions.length - 1) {
      return;
    }
    setState(() {});
    if (listQuestions[currentQuestionIndex].isDone = true) {
      return;
    }
    TaskModel currentQuestion = listQuestions[currentQuestionIndex];
    setState(() {});
    final List<String> answer = [currentQuestion.answer];
    final WSSettings ws = WSSettings(
      width: 14, // total random word row we want use
      height: 1,
      orientations: List.from([
        WSOrientation.horizontal,
      ]),
    );
    final WordSearchSafety wordSearch = WordSearchSafety();
    final WSNewPuzzle newPuzzle = wordSearch.newPuzzle(answer, ws);
    if (newPuzzle.errors!.isEmpty) {
      currentQuestion.arrayButtons =
          newPuzzle.puzzle!.expand((list) => list).toList();
      currentQuestion.arrayButtons.shuffle();
      bool isDone = currentQuestion.isDone;

      if (!isDone) {
        currentQuestion.puzzles =
            List.generate(answer[0].split("").length, (index) {
          return CharModel(
              correctValue: currentQuestion.answer.split("")[index]);
        });
      }
    }

    hintCount = 0;
    setState(() {});
  }

}
