import 'package:firebase_database/firebase_database.dart';
import 'package:my_first_app/models/flutter_topics_model.dart';

class DatabaseManager {
  final DatabaseReference _databaseReference = FirebaseDatabase.instance.ref();

  Future<List<FlutterTopics>> fetchDataFromFirebase() async {
    List<FlutterTopics> topicsList = [];
    try {
      var snapshot = await _databaseReference.child('flutterTopicsList').once();
      if (snapshot.snapshot.value != null && snapshot.snapshot.value is Map) {
        topicsList = List<FlutterTopics>.from((snapshot.snapshot.value! as Map)
            .values
            .map((topic) => FlutterTopics.fromJson(topic)));
      }
    } catch (error) {
      print("Failed to fetch data: $error");
    }
    return topicsList;
  }
}
