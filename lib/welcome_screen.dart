import 'package:flutter/material.dart';
import 'package:you_2_interview/signup_screen.dart';

import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
          
              SizedBox(height: 50),
          
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: Text("Build a New Audio Live \nRoom App Similar to Pod \nBean",
                  textAlign: TextAlign.center,
          
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
          
          
          
                ),
              ),
          
              const SizedBox(height: 50),
          
              ElevatedButton(onPressed: (){
          
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => SignUpScreen()));
              }, child: const Text("Sign Up"),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(Colors.blue),
                foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                minimumSize: WidgetStateProperty.all<Size>(const Size(300, 50)),
          
                textStyle: WidgetStateProperty.all<TextStyle>(
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              ),
          
          const SizedBox(height: 16),
              // sign up with google using container and google logo
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.black),
                ),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Image.asset('assets/icons/google.png', width: 30, height: 30),
                    Image.asset('assets/logo/google.png', width: 30, height: 30),
                    SizedBox(width: 16),
                    Text("Continue with Google", style: TextStyle(fontSize: 16, ),),
                  ],
                ),
              ),
          
              const SizedBox(height: 16),
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.black),
                ),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Image.asset('assets/icons/google.png', width: 30, height: 30),
                    Image.asset('assets/logo/facebook.png', width: 30, height: 30),
                    SizedBox(width: 16),
                    Text("Continue with Facebook", style: TextStyle(fontSize: 16),),
          
          
                  ],
                ),
              ),
          
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(child: Text('Log In'),

                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()));
                  },
                  ),
                  const SizedBox(width: 8),
                  Text('|'),
                  const SizedBox(width: 8),
                  Text('Skip'),
          
          
                ],
              )
          
              ,
          
              // terms and conditions
              const SizedBox(height: 60),
              Text("By proceeding you agree to our Terms of Use and Privacy Policy.",
          
              style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
