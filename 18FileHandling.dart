import 'dart:convert';
import 'dart:io'; // Import dart:io for file and directory handling

// Reading Files
// File reading allows you to read the contents of a file asynchronously or synchronously.

Future<void> readFile() async {
  try {
    // Read the file asynchronously
    var file = File('example.txt'); // File path (ensure the file exists)
    String contents = await file.readAsString();
    print('File contents: $contents');
  } catch (e) {
    print('Error reading file: $e');
  }
}

// Writing to Files
// Writing allows you to write data into a file either asynchronously or synchronously.

Future<void> writeFile() async {
  try {
    var file = File('example.txt');
    // Write to the file asynchronously, creates a new file if it doesn't exist
    await file.writeAsString('Hello, Dart File Handling!\n',
        mode: FileMode.append);
    print('Data written to file');
  } catch (e) {
    print('Error writing to file: $e');
  }
}

// Handling Directories
// Directories help in managing file paths and organization of files. You can list contents, create, or delete directories.

Future<void> handleDirectories() async {
  try {
    // Create a new directory
    var directory = Directory('myDirectory');
    if (await directory.exists()) {
      print('Directory already exists');
    } else {
      await directory.create();
      print('Directory created');
    }

    // List contents of the directory
    var dir = Directory('.');
    await for (var entity in dir.list()) {
      print(entity.path);
    }
  } catch (e) {
    print('Error with directory handling: $e');
  }
}

// Working with Streams for File Handling
// Streams are useful when working with large files or when you want to process data in chunks.

Future<void> readFileWithStream() async {
  try {
    var file = File('example.txt');
    // Use a stream to read file contents line by line
    var lines = file.openRead();
    await for (var line
        in lines.transform(utf8.decoder).transform(LineSplitter())) {
      print('Line: $line');
    }
  } catch (e) {
    print('Error reading file with stream: $e');
  }
}

void main() async {
  // Call the functions to demonstrate file handling
  await writeFile(); // Write data to the file
  await readFile(); // Read data from the file
  await handleDirectories(); // Handle directories
  await readFileWithStream(); // Read file using stream
}
