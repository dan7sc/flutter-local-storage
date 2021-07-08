import 'package:shared_preferences/shared_preferences.dart';

class HomeController {
  final Function onUpdate;
  var count = 0;

  HomeController({required this.onUpdate});

  Future<void> saveCount() async {
    final instance = await SharedPreferences.getInstance();
    final response = await instance.setInt("contador", count);

    if (response) {
      print("Salvo com sucesso");
    } else {
      print("Não foi possível realizar essa operação");
    }
    onUpdate();
  }

  Future<void> getCount() async {
    await Future.delayed(Duration(seconds: 9));
    final instance = await SharedPreferences.getInstance();
    final response = instance.getInt("contador");
    count = response ?? 0;
    onUpdate();
  }
}
