import 'package:flutter/material.dart';

class AddTaskView extends StatefulWidget {
  final Function(String, String, String) onAddTaskView;

  const AddTaskView({super.key, required this.onAddTaskView});

  @override
  State<AddTaskView> createState() => _AddTaskViewState();
}

class _AddTaskViewState extends State<AddTaskView> {
  final _titleController = TextEditingController();
  final _dateController = TextEditingController();
  final _statusController = TextEditingController();

  void _submitForm() {
    final title = _titleController.text;
    final date = _dateController.text;
    final status = _statusController.text;

    if (title.isNotEmpty && date.isNotEmpty && status.isNotEmpty) {
      widget.onAddTaskView(title, date, status);
      Navigator.of(context).pop(); // Go back to the previous screen
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    'Create New Task',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 75,
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: ClipOval(
                      child: Image.asset(
                        '../assets/images/pics4.jpeg',
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Task Title',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Date',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _dateController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Status',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _statusController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Choose Priority',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red),
                    child: const Center(child: Text('High')),
                  ),
                  const SizedBox(
                    width: 85,
                  ),
                  Container(
                    height: 20,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.shade400),
                    child: const Center(child: Text('Medium')),
                  ),
                  const SizedBox(
                    width: 85,
                  ),
                  Container(
                    height: 20,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 88, 153, 91)),
                    child: const Center(child: Text('Low')),
                  )
                ],
              ),
              const SizedBox(height: 90),
              ElevatedButton(
                onPressed: _submitForm,
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor:
                      const Color.fromARGB(255, 88, 153, 91), // Text color
                  padding: const EdgeInsets.symmetric(
                      horizontal: 130, vertical: 10), // Button size
                  textStyle: const TextStyle(fontSize: 20), // Text size
                ),
                child: const Text(
                  'Add Task',
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 82, 133, 252),
    );
  }
}
