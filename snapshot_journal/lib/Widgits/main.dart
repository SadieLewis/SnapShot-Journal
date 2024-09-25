import 'package:flutter/material.dart';
import 'package:snapshot_journal/Object/Entry.dart';
import 'package:snapshot_journal/Widgits/Entry_list.dart';

void main() {
  runApp(MaterialApp(title: "Journal",
  home: const JournalList(), 
  theme: ThemeData(primarySwatch: Colors.deepPurple, scaffoldBackgroundColor: const Color.fromARGB(255, 218, 195, 161)),));
}

// Changing StatelessWidget to StatefulWidget
class JournalList extends StatefulWidget {
  const JournalList({super.key});

  @override
  State<JournalList> createState() => _JournalListState();
}

class _JournalListState extends State<JournalList> {
  final List<Entry> entries = [
    Entry()
  ];


  @override
  void initState() {
    super.initState();
  }

  // Moving build method inside the _JournalListState class
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        children: entries.map((entry) {
          return EntryList(
            entry: entry,
          );
        }).toList(),
      ),
    floatingActionButton: FloatingActionButton.extended(
      label: const Text("Entry"),
      icon: const Icon(Icons.add_a_photo_outlined),
      onPressed: null)
    );
  }
}






