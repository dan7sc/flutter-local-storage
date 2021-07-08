import 'package:shared_preferences/shared_preferences.dart';

class HomeController {
  var count = 0;

  Future<void> saveCount() async {
    final instance = await SharedPreferences.getInstance();
    final response = await instance.setInt("contador", count);

    if (response) {
      print("Salvo com sucesso");
    } else {
      print("Não foi possível realizar essa operação");
    }
  }

  Future<void> getCount() async {
    final instance = await SharedPreferences.getInstance();
    final response = instance.getInt("contador");
    count = response ?? 0;
  }
}
