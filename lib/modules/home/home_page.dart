import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Local Storage"),
      ),
      body: Center(
        child: Text("CONTADOR: $count"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          count++;
          setState(() {});
        },
      ),
    );
  }
}
