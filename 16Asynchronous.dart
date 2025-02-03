// 8. Asynchronous Programming in Dart
// Asynchronous programming allows for non-blocking code execution, enabling the program to
// perform other tasks while waiting for long-running operations, such as I/O operations, to complete.
//Dart provides Future, async/await, and Stream to handle asynchronous operations.

// Futures & async/await
// A Future in Dart represents a value that will be available at some point in the future.
//It is used to handle operations that take time, such as reading files, making network requests,
//or performing computations.

// Working with Future API: A Future is an object that will eventually contain a value or an error.

import 'dart:async';

Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2)); // Simulating a delay
  return 'Data fetched successfully';
}

//Handling Errors in Futures: You can handle errors in Future using .
//catchError() or by using try-catch blocks with async/await.
Future<String> fetchDataWithError() async {
  await Future.delayed(Duration(seconds: 2));
  throw Exception('Failed to fetch data');
}

//Streams
// A Stream is used for handling a sequence of asynchronous events.
//Streams are especially useful when you need to deal with multiple asynchronous results over time
//(e.g., events, user input, data updates from a server).

// Single vs Multiple Subscription Streams:

// Single Subscription Stream: Can only have one listener.
//It is used for things like file reading or HTTP requests where data is only emitted once.
// Broadcast Stream (Multiple Subscription): Can have multiple listeners.
//It is used for things like user input or real-time data streams.
Future<void> main1() async {
  Stream<int> countStream() async* {
    for (var i = 0; i < 5; i++) {
      await Future.delayed(Duration(seconds: 1));
      yield i;
    }
  }

  await for (var count in countStream()) {
    print(count);
  }
}

//StreamController
//A StreamController is used to create and manage streams manually.
//You can add events to a stream using add(), addError(), or close the stream using close().

StreamController<int> controller = StreamController<int>();

void main2() {
  controller.stream.listen(
    (data) {
      print('Received: $data');
    },
    onError: (error) {
      print('Error: $error');
    },
    onDone: () {
      print('Stream closed');
    },
  );

  controller.add(1); // Adding data
  controller.add(2); // Adding data
  controller.addError('An error occurred'); // Adding error
  controller.close(); // Closing the stream
}

//Listening to Streams
// You can listen to a stream using listen(), which allows you to define callbacks for handling data,
//errors, and the completion of the stream.

// Using listen() with onData(), onError(), and onDone():

// onData(): Handles the data emitted by the stream.
// onError(): Handles errors thrown by the stream.
// onDone(): Handles the completion of the stream.
Stream<int> countStream() async* {
  for (var i = 0; i < 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main4() {
  countStream().listen(
    (data) {
      print('Data: $data');
    },
    onError: (error) {
      print('Error: $error');
    },
    onDone: () {
      print('Stream completed');
    },
  );
}

void main() async {
  print('Fetching data...');
  String result = await fetchData();
  print(result); // Data fetched successfully
  try {
    String result = await fetchDataWithError();
    print(result);
  } catch (e) {
    print('Error: $e'); // Error: Exception: Failed to fetch data
  }
}


// Summary of Asynchronous Programming in Dart
// Futures: Represents a value that will be available at some point in the future. Use async and await to handle asynchronous code.
// Streams: Used to handle sequences of asynchronous events. Can be single subscription or broadcast (multiple subscribers).
// StreamController: Manages and controls a stream, allowing you to add data and handle errors.
// Error Handling: Handle errors in Futures and Streams using try-catch blocks or callbacks.
// Asynchronous programming is essential for handling long-running tasks like network requests or file I/O without blocking the main thread, 
// improving performance and user experience in Dart applications.