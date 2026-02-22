/*1. Notes App – Organize Your Notes
You are building a simple notes app where users can write and manage their notes.
- Each note should have a title, some content, and the date it was created.
- The app should allow creating new notes.
- The app should allow listing all notes.
- The app should allow searching for a note by its title.*/

class Note {
  String title;
  String? content;
  DateTime dateCreated;

  Note(this.title, this.content) : dateCreated = DateTime.now();
  void display() {
    print("Title: $title");
    print("Content: $content");
    print("Created: $dateCreated");
    print("-------------------");
  }
}

class NotesApp {
  List<Note> notes = [];

  void createNote(String title, content) {
    Note newNote = Note(title, content);
    notes.add(newNote);
  }

  void listNotes() {
    if (notes.isEmpty) {
      print("No notes found.");
      return;
    }
    for (var note in notes) {
      note.display();
    }
  }

  void searchByTitle(String title) {
    for (var note in notes) {
      if (note.title == title) {
        note.display();
        return;
      }
    }
    print('Note not found');
  }
}

void main() {
  NotesApp app = NotesApp();

  app.createNote("Study", "Study OOP in Dart");
  app.createNote("Gym", "Go to the gym at 6 PM");

  print("All Notes:");
  app.listNotes();

  print("Search Result:");
  app.searchByTitle("Study");
}
