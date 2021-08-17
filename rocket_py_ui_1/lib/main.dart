import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rocket_py_ui_1/defaults/default_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: DefaultColors.text_grey,
          secondaryHeaderColor: DefaultColors.background_Hightlight,
          backgroundColor: DefaultColors.background,
          scaffoldBackgroundColor: DefaultColors.background),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.title),
          leading: Center(
            child: Text(
              "Menu",
              style: TextStyle(color: Colors.white, fontFamily: "Roboto",fontSize: 20),
            ),
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(color: Colors.white, fontFamily: "Roboto"),
            ),
            Text(
              '$_counter',
              style: TextStyle(
                  color: Colors.white, fontSize: 30, fontFamily: "Roboto"),
            ),
            SvgPicture.asset(
              "assets/vectors/Jupiter_Logo_Nome_Branco.svg",
              color: Colors.white,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
