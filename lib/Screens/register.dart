import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'login.dart'; // Ensure to import the Login page

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController profesiController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Register'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 2.3,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Register Your Account",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 50),
                  FormBuilderTextField(
                    name: "name",
                    controller: nameController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10),
                      border: OutlineInputBorder(),
                      labelText: "Nama",
                    ),
                  ),
                  SizedBox(height: 20),
                  FormBuilderTextField(
                    name: "profesi",
                    controller: profesiController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10),
                      border: OutlineInputBorder(),
                      labelText: "Profesi",
                    ),
                  ),
                  SizedBox(height: 20),
                  FormBuilderTextField(
                    name: "email",
                    controller: emailController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10),
                      border: OutlineInputBorder(),
                      labelText: "Email",
                    ),
                  ),
                  SizedBox(height: 20),
                  FormBuilderTextField(
                    obscureText: true,
                    name: "password",
                    controller: passwordController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10),
                      border: OutlineInputBorder(),
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(height: 40), // Spacing before the button
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigate to the login page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ),
                        );
                      },
                      child: Text("Daftar"), // Button text
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
