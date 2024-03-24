class Note {
  final String title;
  final String body;
  final String userEmail; // Add userEmail field

  Note({
    required this.title,
    required this.body,
    required this.userEmail,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'body': body,
      'user_email': userEmail, // Include userEmail in the map
    };
  }

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      title: map['title'],
      body: map['body'],
      userEmail: map['userEmail'],
    );
  }
}
