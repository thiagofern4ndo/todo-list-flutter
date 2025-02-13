import 'package:flutter/material.dart';

class TasksListPage extends StatelessWidget {
  const TasksListPage({super.key});

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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Card(
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
                    trailing: Icon(Icons.star, color: Colors.indigo,),
                    onTap: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text('Adicionar'),
          icon: const Icon(Icons.add), // Material Icons
        ),
      ),
    );
  }
}
