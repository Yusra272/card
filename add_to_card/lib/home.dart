import 'package:flutter/material.dart';
import 'package:wallet/models/studentmodels.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<StudentModels> student = [
      StudentModels(
        name: "yusra",
        age: 17,
        rollno: 444921,
        classno: 12,
      ),
      StudentModels(
        name: "umna",
        age: 19,
        rollno: 637421,
        classno: 14,
      ),
      StudentModels(name: "ayesha", age: 16, rollno: 443841, classno: 10),
      StudentModels(name: "nimra", age: 17, rollno: 273894, classno: 11),
      StudentModels(name: "fatima", age: 12, rollno: 273958, classno: 5)
    ];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
        ),
        body: ListView.builder(
          itemCount: student.length,
          itemBuilder: (context, i) {
            return Container(
              margin: EdgeInsets.all(15),
              child: Text(
                  '${student[i].name}\n${student[i].age}\n${student[i].rollno}\n${student[i].classno}'),
            );
          },
        ));
  }
}
