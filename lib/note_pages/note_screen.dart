import 'package:_BeHealthey/constant/constant.dart';
import 'package:_BeHealthey/new%20component/database_helper.dart';
import 'package:_BeHealthey/note_pages/note.dart';
import 'package:flutter/material.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({Key? key}) : super(key: key);

  @override
  _NoteScreenState createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  List<Note> _notes = [];
  List<Note> _filteredNotes = [];

  @override
  void initState() {
    super.initState();
    _loadNotes();
    _filteredNotes = _notes;
  }

  void _loadNotes() async {
    _notes = await DatabaseHelper.instance.getNotes();
    setState(() {
      _filteredNotes = _notes;
    });
  }

  void _addNote() async {
    // Create a TextEditingController to handle user input
    TextEditingController titleController = TextEditingController();
    TextEditingController contentController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add Note'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: const InputDecoration(labelText: 'Title'),
              ),
              TextField(
                controller: contentController,
                decoration: const InputDecoration(labelText: 'Content'),
              ),
            ],
          ),
          actions: [
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: const Text('Add'),
              onPressed: () async {
                // Create a new note from the user input
                Note note = Note(
                  title: titleController.text,
                  content: contentController.text,
                );

                await DatabaseHelper.instance.insert(note);
                _loadNotes();
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  void _updateNote(Note note) async {
    // Create a TextEditingController to handle user input
    TextEditingController titleController =
        TextEditingController(text: note.title);
    TextEditingController contentController =
        TextEditingController(text: note.content);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Edit Note'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: const InputDecoration(labelText: 'Title'),
              ),
              TextField(
                controller: contentController,
                decoration: const InputDecoration(labelText: 'Content'),
              ),
            ],
          ),
          actions: [
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: const Text('Save'),
              onPressed: () async {
                // Update the note with the new values
                note.title = titleController.text;
                note.content = contentController.text;

                await DatabaseHelper.instance.update(note);
                _loadNotes();
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  void _deleteNote(Note note) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Delete Note'),
          content: const Text('Are you sure you want to delete this note?'),
          actions: [
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: const Text('Delete'),
              onPressed: () async {
                await DatabaseHelper.instance.delete(note.id!);
                _loadNotes();
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> filterNotes(String query) async {
    final notes = await DatabaseHelper.instance.getNotes();
    final filteredNotes = notes.where((note) {
      final titleLower = note.title!.toLowerCase();
      final contentLower = note.content!.toLowerCase();
      final searchLower = query.toLowerCase();

      return titleLower.contains(searchLower) ||
          contentLower.contains(searchLower);
    }).toList();

    setState(() {
      _filteredNotes = filteredNotes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kprimaryColor,
        title: const Text('Notes'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {
              showSearch(
                context: context,
                delegate: NoteSearchDelegate(filterNotes),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _filteredNotes.length,
        itemBuilder: (context, index) {
          final note = _filteredNotes[index];
          return ListTile(
            title: Text(note.title!),
            subtitle: Text(note.content!),
            onTap: () {
              _updateNote(
                note,
              );
            },
            trailing: IconButton(
              color: kprimaryColor,
              icon: const Icon(Icons.delete),
              onPressed: () {
                _deleteNote(
                  note,
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kprimaryColor,
        child: const Icon(Icons.add),
        onPressed: () {
          _addNote();
        },
      ),
    );
  }
}

class NoteSearchDelegate extends SearchDelegate<String> {
  final Function(String) filterCallback;

  NoteSearchDelegate(this.filterCallback);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
          filterCallback(query);
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    filterCallback(query);
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
