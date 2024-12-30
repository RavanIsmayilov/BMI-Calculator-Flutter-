class BmiModel {
  String id; 
  double height;
  double weight;
  double bmi;
  bool isMale;
  DateTime date; 

  BmiModel({
    required this.id,
    required this.height,
    required this.weight,
    required this.bmi,
    required this.isMale,
    required this.date,
  });

  factory BmiModel.fromJson(Map<String, dynamic> json) => BmiModel(
        id: json["id"],
        height: json["height"],
        weight: json["weight"],
        bmi: json["bmi"],
        isMale: json["isMale"],
        date: DateTime.parse(json["date"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "height": height,
        "weight": weight,
        "bmi": bmi,
        "isMale": isMale,
        "date": date.toIso8601String(),
      };
}
