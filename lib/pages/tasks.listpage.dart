import 'package:flutter/material.dart';

class TasksListPage extends StatelessWidget {
   TasksListPage({super.key});

  final List tasks = [];

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
            itemCount: 6,
            itemBuilder: (ctx, index) {
              return Card(
                  elevation: 3,
                  color: Colors.indigo[100],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: ListTile(
                    title: const Text('Marcar Reunião'),
                    subtitle: Text('Reunião sobre projeto final'),
                    leading: Checkbox(
                      onChanged: (value) {},
                      value: false,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    trailing: Icon(
                      Icons.star,
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
