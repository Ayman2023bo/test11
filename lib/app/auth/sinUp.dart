import 'package:flutter/material.dart';
import 'package:t11/components/crud.dart';
import 'package:t11/components/customTextFiled.dart';
import 'package:t11/constant/linkApi.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    Crud crud = Crud();
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController email = TextEditingController();
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    sinUP() async {
      var response = await crud.postRequest(linkSingUp, {
        "username": username.text,
        "password": password.text,
        "email": email.text,
      });
      if (response?["status"] == "successful") {
        Navigator.of(context).pushReplacementNamed("/home");
      } else {
        print("error");
      }
    }

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
                    // Image.asset("name",width: 200,height: 200,),
                    CustomTextFiled(hintText: "username", controller: username),
                    const SizedBox(height: 8),
                    CustomTextFiled(hintText: "password", controller: password),
                    const SizedBox(height: 8),
                    CustomTextFiled(hintText: "email", controller: email),
                    const SizedBox(height: 8),
                    MaterialButton(
                      onPressed: ()async {
                        await sinUP();
                      },
                      color: Colors.blue,
                      textColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: 70,
                        vertical: 10,
                      ),
                      child: Text("sign up"),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Row(
                        children: [
                          Text("if you don't have an account? "),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushReplacementNamed("/");
                            },
                            child: Text("log in"),
                          ),
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
