import 'package:adrian_maulana_firdaus_2142425/pages/homePage/home_page.dart';
import 'package:adrian_maulana_firdaus_2142425/utils/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../utils/dimention/dimentions.dart';
import '../../utils/widget/big_text.dart';
import '../../utils/widget/small_text.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Dimensi().init(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: ColorTheme.bgColor,
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: Dimensi.blockSizeHorizontal! * 50,
                height: Dimensi.blockSizeVertical! * 40,
                child: Lottie.network(
                    'https://assets1.lottiefiles.com/packages/lf20_LC3qX6u1iF.json',
                    fit: BoxFit.fill),
              ),
              BigText(
                text: "Love Wedding",
                spacing: 1,
                size: Dimensi.blockSizeVertical! * 3,
              ),
              _formLogin(context),
            ],
          ),
        ),
      ),
    );
  }

  Form _formLogin(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        width: Dimensi.blockSizeHorizontal! * 100,
        height: Dimensi.blockSizeVertical! * 37,
        margin: EdgeInsets.only(
            left: Dimensi.blockSizeHorizontal! * 3,
            right: Dimensi.blockSizeHorizontal! * 3),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 24,
                offset: Offset(0, 11),
              ),
            ],
            color: Colors.white,
            borderRadius:
                BorderRadius.circular(Dimensi.blockSizeVertical! * 2)),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.only(),
              child: TextFormField(
                controller: username,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username.';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hoverColor: ColorTheme.primaryColor,
                  labelText: 'Username',
                  labelStyle: TextStyle(
                    color: ColorTheme.textColor,
                  ),
                  suffixIcon: Icon(
                    Icons.person,
                    color: ColorTheme.primaryColor,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ColorTheme.primaryColor),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ColorTheme.primaryColor),
                  ),
                  helperText: 'Enter your username to login',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.only(),
              child: TextFormField(
                obscureText: true,
                controller: password,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password.';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hoverColor: ColorTheme.primaryColor,
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: ColorTheme.textColor,
                  ),
                  suffixIcon: Icon(
                    Icons.key,
                    color: ColorTheme.primaryColor,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ColorTheme.primaryColor),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ColorTheme.primaryColor),
                  ),
                  helperText: 'Enter your password to login',
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: ColorTheme.textColor, // Background color
              ),
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  if (username.text == 'mauleee' && password.text == '270502') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Login success.'),
                    ));
                  } else if (username.text != 'mauleee') {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Incorrect username.'),
                    ));
                  } else if (password.text != '270502') {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Incorrect password.'),
                    ));
                  }
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
