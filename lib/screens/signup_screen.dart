import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final dobController = TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      body: Padding(
        padding: const EdgeInsets.only(top: 80, right: 20, left: 30),
        child: Form(
          key: _formKey,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create Your Account",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.0),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: TextFormField(
                        controller: nameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Name",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
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
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextFormField(
                        controller: dobController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        decoration: InputDecoration(hintText: "Date of birth"),
                      ),
                    ),
                  ),
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
                      child: Text("Next",
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
