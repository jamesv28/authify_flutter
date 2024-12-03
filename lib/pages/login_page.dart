import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  double _deviceWidth = 0;
  double _deviceHeight = 0;

  Color primaryColor = const Color.fromRGBO(125, 191, 211, 1.0);
  Color secondaryColor = const Color.fromRGBO(169, 225, 241, 1.0);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _avatarWidget(),
            _emailTextField(),
            _passwordTexField(),
            _loginButton()
          ],
        ),
      ),
    );
  }

  Widget _avatarWidget() {
    double circleD = _deviceHeight * 0.20;
    return Container(
      height: circleD,
      width: circleD,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(500),
        color: secondaryColor,
        image: const DecorationImage(
          image: AssetImage('assets/images/main_avatar.png'),
        ),
      ),
    );
  }

  Widget _emailTextField() {
    return SizedBox(
      width: _deviceWidth * 0.70,
      child: const TextField(
        cursorColor: Colors.white,
        autocorrect: false,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: "John.doe@gmail.com",
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _passwordTexField() {
    return Container(
      width: _deviceWidth * 0.70,
      child: const TextField(
        obscureText: true,
        cursorColor: Colors.white,
        autocorrect: false,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: "Password",
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _loginButton() {
    return MaterialButton(
      minWidth: _deviceWidth * 0.38,
      height: _deviceHeight * 0.12,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
        side: const BorderSide(color: Colors.white),
      ),
      child: Text(
        "Login",
        style: TextStyle(
            fontSize: 16, color: primaryColor, fontWeight: FontWeight.bold),
      ),
      onPressed: () {},
    );
  }
}
