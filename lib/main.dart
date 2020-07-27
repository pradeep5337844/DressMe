import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner : false,
      theme: ThemeData(fontFamily: 'Montserrat'),
      home :Scaffold(
        appBar: AppBar(
          title: Text('DRESSME',style: TextStyle(fontFamily: "Montserrat"),),
          backgroundColor: Colors.blueGrey,
        ),
        body : MyCustomForm(),
      ),
    );

  }
}
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  void Hello()
  {

  }

  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}