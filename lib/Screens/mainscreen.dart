import 'package:flutter/material.dart';


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    //return Container();

    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icons.home),
        title: Text(' page Register'),
      ),
    );
  }
}
