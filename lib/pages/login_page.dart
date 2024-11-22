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
            children: [_avatarWidget()],
          ),
        ));
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
        ));
  }
}
