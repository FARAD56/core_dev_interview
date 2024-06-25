class Joke {
  String category;
  String title;
  String answer;

  Joke({
    required this.category,
    required this.title, // Added initializer for 'title' field
    required this.answer,
  });

  factory Joke.fromJson(Map<String, dynamic> json) {
    return Joke(
      category: json['category'],
      title: '', // Provide a default value for 'title' if needed
      answer: json['answer']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'title': title,
      'answer': answer
    };
  }
}

