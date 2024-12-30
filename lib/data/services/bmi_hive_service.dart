import 'dart:convert';
import 'package:hive_flutter/hive_flutter.dart';
import '../models/bmi_model.dart';

class BmiHiveService {
  static const String boxName = 'bmiBox';
  static const String keyName = 'bmiKey';

  static Future<void> saveBmi(List<BmiModel> bmiList) async {
    final box = await Hive.openBox<String>(boxName);
    final list = bmiList.map((bmi) => bmi.toJson()).toList();
    final encodedData = jsonEncode(list);
    await box.put(keyName, encodedData);
  }

  static Future<List<BmiModel>> getBmi() async {
    final box = await Hive.openBox<String>(boxName);
    final list = box.get(keyName) ?? '[]';
    final List bmiData = jsonDecode(list);
    return bmiData.map((data) => BmiModel.fromJson(data)).toList();
  }
}
