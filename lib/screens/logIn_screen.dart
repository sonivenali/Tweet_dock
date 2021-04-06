import 'package:flutter/material.dart';
import 'package:tweet_dock/screens/signup_screen.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 40,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: GestureDetector(onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp()));
              },
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(
              Icons.more_vert,
              color: Colors.blue,
            ),
          )
        ],
        leading: BackButton(
          color: Colors.blue,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 20, top: 16),
        child: Form(
          key: _formKey,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Log in to Tweet.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: TextFormField(
                      controller: emailController,
                      validator: (String text) {
                        if (text.isEmpty ||
                            !text.contains("@") ||
                            !text.contains(".com")) {
                          return "Email is INVALID";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(hintText: "Email address"),
                    ),
                  ),
                  TextFormField(
                    controller: passwordController,
                    validator: (String text) {
                      if (text.isEmpty) {
                        return "Password is INVALID";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.black,
                      hintText: "Password",
                    ),
                  ),
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: Text("Forgot Password?"),
                  ))
                ],
              ),
              Positioned(
                  right: 1,
                  bottom: 20,
                  child: FlatButton(
                      minWidth: 60,
                      height: 35,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20)),
                      color: Colors.blue,
                      onPressed: () {
                        if (_formKey.currentState.validate()) {}
                      },
                      child: Text("Log in",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          )))),
            ],
          ),
        ),
      ),
    );
  }
}
