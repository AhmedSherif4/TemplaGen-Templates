class Model {
  String something;
  Model({required this.something});

  factory Model.fromJson(Map<String, dynamic> json) {
    return Model(something: 'something');
  }

  Map<String, dynamic> toMap(Model model) {
    return {
      'something': model.something,
    };
  }
}
