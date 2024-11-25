import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter/gestures.dart';
import 'MainScreens.dart'; // Import MainScreens
import 'register.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Visi Generasi Indonesia'),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromARGB(255, 149, 234, 255),
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Login Area - Security System',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 20),
                Center(
                  child: Form(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.3,
                      child: Column(
                        children: [
                          // TextField untuk Email
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
                          
                          // TextField untuk Password
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
                          SizedBox(height: 20), // Space between password and button

                          // Button Login
                          ElevatedButton(
                            onPressed: () {
                              if (emailController.text.isNotEmpty &&
                                  passwordController.text.isNotEmpty) {
                                // Lanjut ke halaman MainScreens
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MainScreen(),
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Email dan Password wajib diisi!'),
                                    backgroundColor: Colors.red,
                                  ),
                                );
                              }
                            },
                            child: Text("Login"),
                          ),
                          SizedBox(height: 30), // Spacing between button and "Sign Up" text
                          
                          // Teks "Don't Have Account?" dan "Sign Up"
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Don\'t Have Account? ',
                                  style: TextStyle(color: Colors.black54),
                                ),
                                TextSpan(
                                  text: 'Sign Up',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Register(), // Navigasi ke halaman Register
                                        ),
                                      );
                                    },
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.blueAccent,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
