class Note {

  int? id;
  String? title;
  String? content;

  Note({
    this.id,
    this.title,
    this.content,
  });

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'title': title,
      'content': content,
    };
  }
}
