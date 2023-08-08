import 'package:flutter/material.dart';
import 'package:wordfind_app/data/questions.dart';
import 'package:wordfind_app/start_page.dart';
import 'package:wordfind_app/task_widget_solution.dart';
import 'model/user.dart';
import 'model/task_model.dart';

class Game extends StatefulWidget {
  final User user;

  const Game(this.user, {super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  GlobalKey<TaskWidgetSolutionState> globalKey = GlobalKey();
  late List<TaskModel> listQuestions;
  late User user;

  @override
  void initState() {
    listQuestions = questions;
    user = widget.user;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset('assets/arrow_back.png'),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          '${newUser.userName}',
          style: TextStyle(fontSize: 24, color: Color(0xFFE86B02)),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/back2.png'), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Expanded(
                child: LayoutBuilder(builder: (context, constraints) {
                  return TaskWidgetSolution(
                    constraints.biggest,
                    listQuestions.map((question) => question.clone()).toList(),
                    key: globalKey,
                  );
                }),
              ),
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(bottom: 10),
                color: Colors.white,
                child: Center(
                  child: Container(
                    width: 150,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xFFE86B02), Color(0xFFFA9541)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25))),
                      child: Text(
                        'Reload',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );

  }
}
