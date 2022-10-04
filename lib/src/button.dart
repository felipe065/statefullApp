import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

// guion bajo  es para clases privadas
class _MyButtonState extends State<MyButton> {
  String flutterText = "";
  int index = 0;
  List<String> collections = ['Flutter', 'es', 'genial'];

  void onPressedButton() {
    setState(() {
      flutterText = collections[index];
      index = index < 2 ? index + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget M-190041"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Container(
          child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                flutterText,
                style: TextStyle(fontSize: 40.0),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              ElevatedButton(
                child: Text("Actualizar"),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.pinkAccent)),
                onPressed: onPressedButton,
              )
            ]),
      )),
    );
  }
}
