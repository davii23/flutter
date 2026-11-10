import 'package:flutter/material.dart';
import 'student.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StudentPage(),
    );
  }
}

class StudentPage extends StatefulWidget {
  const StudentPage({super.key});

  @override
  State<StudentPage> createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  List<String> students = [];
  String jsonOutput = '';

  void addStudent() {
    Student student = Student(id: 1, name: 'Raj', course: 'CSE');

    Map<String, dynamic> data = student.toJson();

    Student newStudent = Student.fromJson(data);

    setState(() {
      students.add(newStudent.name);
      jsonOutput = data.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student State App'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: addStudent,
              child: const Text('Add Student'),
            ),

            const SizedBox(height: 16),

            SelectableText('JSON Data: $jsonOutput'),

            const SizedBox(height: 12),

            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.person),
                    title: Text(students[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
