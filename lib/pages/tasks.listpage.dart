import 'package:first_app/models/task.model.dart';
import 'package:flutter/material.dart';

class TasksListPage extends StatelessWidget {
   TasksListPage({super.key});

  final List<Task>tasks = [
    Task(title: 'Reunião Projeto', description: 'Definir tecnologias', important: true),
     Task(title: 'Reunião Projeto', description: 'Definir template'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tarefas"),
          backgroundColor: Colors.indigo[200],
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (ctx, index) {

              final task = tasks[index];

              return Card(
                  elevation: 3,
                  color: Colors.indigo[100],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: ListTile(
                    title:  Text(task.title),
                    subtitle: task.description != null ? Text(task.description!) : null,
                    leading: Checkbox(
                      onChanged: (value) {
                        task.changeStatus(value!);
                      },
                      value: task.completed,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    trailing: Icon(
                     task.important ? Icons.star : Icons.star_border,
                      color: Colors.indigo,
                    ),
                    onTap: () {},
                  ),
                );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text('Nova Tarefa'),
          icon: const Icon(Icons.add),
        ),
      ),
    );
  }
}
