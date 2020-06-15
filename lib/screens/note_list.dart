import 'package:flutter/material.dart';
import 'package:notekeeper/screens/note_details.dart';

class NoteList extends StatefulWidget {
  @override
  _NoteListState createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notes',
          style: TextStyle(
              color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: getNoteListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigateToDetail('Add Note');
        },
        tooltip: 'Add Note',
        child: Icon(Icons.add),
      ),
    );
  }

  ListView getNoteListView() {
    TextStyle titleStyle = Theme.of(context).textTheme.subtitle1;
    return ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext context, int position) {
          return Card(
            elevation: 2.0,
            color: Colors.white,
            child: GestureDetector(
              onTap: () {
                navigateToDetail('Edit Note');
              },
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  radius: 20.0,
                  child: Icon(Icons.arrow_forward_ios),
                ),
                title: Text(
                  'Dummy Title',
                  style: titleStyle,
                ),
                subtitle: Text('Dummy Date'),
                trailing: Icon(Icons.delete),
              ),
            ),
          );
        });
  }

  void navigateToDetail(String title) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => NoteDetails(title)));
  }
}
