import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var todoList = FirebaseFirestore.instance.collection("TodoList");
  TextEditingController titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => Container(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        controller: titleController,
                        decoration: InputDecoration(
                          hintText: "New task",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      InkWell(
                        onTap: () async {
                          if (titleController.text.isNotEmpty) {
                            await FirebaseFirestore.instance
                                .collection('TodoList')
                                .add({
                              "title": titleController.text,
                              "completed": false,
                            });
                            titleController.clear();
                            Navigator.pop(context);
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 50,
                                child: Center(child: Text("Save")),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: 50,
                                  child: Center(child: Text("Cancel")),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "TODO APP",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('TodoList').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          final tasks = snapshot.data!.docs;
          return ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              var task = tasks[index];
              return InkWell(
                onLongPress: () {
                  FirebaseFirestore.instance
                      .collection('TodoList')
                      .doc(task.id)
                      .delete();
                },
                child: Card(
                  margin: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: IconButton(
                      icon: Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        FirebaseFirestore.instance
                            .collection('TodoList')
                            .doc(task.id)
                            .delete();
                      },
                    ),
                    title: Text(task['title']),
                    trailing: IconButton(
                      icon: Icon(
                        task['completed']
                            ? Icons.check_box
                            : Icons.check_box_outline_blank,
                      ),
                      onPressed: () {
                        FirebaseFirestore.instance
                            .collection('TodoList')
                            .doc(task.id)
                            .update({'completed': !task['completed']});
                      },
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
