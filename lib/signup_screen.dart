import 'package:flutter/material.dart';

import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body:  Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  <Widget>[
              const SizedBox(height: 16),
              Image.asset('assets/logo/Frame.png'),
          
          
              const SizedBox(height: 50),
          
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text("Nickname*",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              // Round textfield similar to button for email
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
          
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Davide Oretti",
                    contentPadding: EdgeInsets.only(left: 20),
                  ),
                ),
              ),
          
              const SizedBox(height: 20),
          
          
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text("Email*",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              // Round textfield similar to button for email
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
          
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Davide Oretti@gmail.com",
                    contentPadding: EdgeInsets.only(left: 20),
                  ),
                ),
              ),
          
              const SizedBox(height: 20),
          
          
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text("Password*",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              // Round textfield similar to button for email
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
          
                ),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter your Password",
                    contentPadding: EdgeInsets.only(left: 20),
                  ),
                ),
              ),
          
              const SizedBox(height: 20),
          
              ElevatedButton(onPressed: (){}, child: const Text("Sign Up"),
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.blue),
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                  minimumSize: WidgetStateProperty.all<Size>(const Size(300, 50)),
          
                  textStyle: WidgetStateProperty.all<TextStyle>(
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
          
          
          
          
              // terms and conditions
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have account?  ",
          
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
          
                  InkWell(
                    onTap: (){
          
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()));
                    },
                    child: Text("Login now",
          
                      style: TextStyle(fontSize: 12, color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
          
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
