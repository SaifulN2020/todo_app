import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context,index){
            return ListTile(
              title: Text("Todo Title"),
              subtitle: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text("Todo Body"),
                  Text("Time")
                ],
              ),
              trailing: Wrap(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.delete))
                ],
              ),
            );
          },


          separatorBuilder: (context,index){
            return Divider();
          }, )
    );
  }
}
