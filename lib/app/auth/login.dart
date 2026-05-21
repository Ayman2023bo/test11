import 'package:flutter/material.dart';
import 'package:t11/components/customTextFiled.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController password = TextEditingController();
    TextEditingController email = TextEditingController();
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Form(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    CustomTextFiled(hintText: "password", controller: password),
                    const SizedBox(height: 8),
                    CustomTextFiled(hintText: "email", controller: email),
                    const SizedBox(height: 8),
                    MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed("/home");
                      },
                      color: Colors.blue,
                      textColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: 70,
                        vertical: 10,
                      ),
                      child: Text("login"),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Row(
                        children: [
                          Text("if you don't have an account? "),
                          InkWell(onTap: () {
                            Navigator.of(context).pushReplacementNamed("/singup");
                          }, child: Text("sign up")),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
