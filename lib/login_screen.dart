import 'package:flutter/material.dart';
import 'package:you_2_interview/home_screen/home_screen.dart';
import 'package:you_2_interview/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
          
          
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 60),
                  child: Text("I forgot password?",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
          
              const SizedBox(height: 20),
          
          
              ElevatedButton(onPressed: (){


                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => HomeScreen()));

              }, child: const Text("Log In"),
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
                  Text("Don't have an account??  ",
          
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
          
                  InkWell(
                    onTap: (){
          
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => SignUpScreen()));
                    },
                    child: const Text("Sign Up",
          
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
