import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provincy_cricket_app/screens/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool hidePassword = false;
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _backPress,
      child: Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Stack(
              children: [
                Container(
                  color: Theme.of(context).primaryColor,
                  child: Center(
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF73AEF5),
                            Color(0xFF61A4F1),
                            Color(0xFF478DE0),
                            Color(0xFF398AE5),
                          ],
                          stops: [0.1, 0.4, 0.7, 0.9],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: double.infinity,
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(
                      horizontal: 40.0,
                      vertical: 120.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          isLogin ? "Sign-In" : "Sign-Up",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 25.0,
                              fontFamily: "workSans"),
                        ),
                        SizedBox(height: 30.0),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: isLogin ? LoginFields() : SignUpFields()),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> LoginFields() {
    return [
      buildLoginIdField(),
      SizedBox(height: 15.0),
      buildPasswordField(),
      buildForgetPasswordLink(),
      SizedBox(height: 15.0),
      buildLoginSignUPButton(),
      SizedBox(height: 25.0),
      buildORText(),
      SizedBox(height: 25.0),
      buildSocialMediaSignup(),
      SizedBox(height: 25.0),
      buildLoginSignUpLink(),
    ];
  }

  List<Widget> SignUpFields() {
    return [
      buildUserIdField(),
      SizedBox(height: 15.0),
      buildEmailField(),
      SizedBox(height: 15.0),
      buildPhoneNumberField(),
      SizedBox(height: 15.0),
      buildPasswordField(),
      SizedBox(height: 25.0),
      buildLoginSignUPButton(),
      SizedBox(height: 25.0),
      buildLoginSignUpLink()
    ];
  }

  Widget buildORText() {
    return Text(
      "-OR-",
      style: TextStyle(
        fontSize: 20.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget buildPhoneNumberField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Mobile No.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          color: Color(0xFF398AE5),
          child: TextField(
            keyboardType: TextInputType.phone,
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 15.0),
              prefixIcon: Icon(
                Icons.phone,
                size: 30.0,
                color: Colors.white,
              ),
              hintText: "Mobile No",
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildUserIdField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'User Id',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          color: Color(0xFF398AE5),
          child: TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 15.0),
              prefixIcon: Icon(
                Icons.person,
                size: 30.0,
                color: Colors.white,
              ),
              hintText: "User Id",
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildEmailField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          color: Color(0xFF398AE5),
          //color: Colors.blueAccent,
          //decoration:,
          /*decoration: BoxDecoration(
            border: Border.all(
              width: 1.0,
              color: Color(0xFF398AE5),
            ),
          ),*/
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 15.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: "E-Mail",
              hintStyle: TextStyle(
                color: Colors.grey,
                //fontWeight: FontWeight.
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildLoginIdField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          color: Color(0xFF398AE5),
          //color: Colors.blueAccent,
          //decoration:,
          /*decoration: BoxDecoration(
            border: Border.all(
              width: 1.0,
              color: Color(0xFF398AE5),
            ),
          ),*/
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 15.0),
              prefixIcon: Icon(
                Icons.person,
                size: 30.0,
                color: Colors.white,
              ),
              hintText: "E-Mail or User-Id or Phone",
              hintStyle: TextStyle(
                color: Colors.grey,
                //fontWeight: FontWeight.
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPasswordField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Password',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          color: Color(0xFF398AE5),
          //color: Colors.blueAccent,
          //decoration:,
          /*decoration: BoxDecoration(
            border: Border.all(
              width: 1.0,
              color: Color(0xFF398AE5),
            ),
          ),*/
          child: TextField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: hidePassword,
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 15.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  (hidePassword) ? Icons.visibility_off : Icons.visibility,
                  color: Colors.white,
                ),
                onPressed: () => {
                  setState(() {
                    hidePassword = !hidePassword;
                  }),
                },
              ),
              hintText: "Password",
              hintStyle: TextStyle(
                color: Colors.grey,
                //fontWeight: FontWeight.
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildForgetPasswordLink() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        child: Text(
          "Forget Password",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: () => print('Forget clicked'),
      ),
    );
  }

  Widget buildLoginSignUPButton() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1.0, color: Colors.white),
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: FlatButton(
        child: Text(
          isLogin ? "LOGIN" : "Sign Up",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "workSans",
            letterSpacing: 2.5,
            fontSize: 18.0,
          ),
        ),
        onPressed: () => {
          print("Login Clicked"),
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          ),
        },
      ),
    );
  }

  Widget buildLoginSignUpLink() {
    return GestureDetector(
      onTap: () => setState(() {
        isLogin = !isLogin;
      }),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
                text: isLogin
                    ? "Don't have an account? "
                    : "Already have an account? ",
                style: TextStyle(color: Colors.white, fontSize: 15.0)),
            TextSpan(
              text: isLogin ? "Sign Up" : "Login",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSocialMediaSignup() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 70.0,
          width: 70.0,
          child: Image.asset("assets/images/fb_logo.png"),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
        ),
        Container(
          height: 70.0,
          width: 70.0,
          child: Image.asset("assets/images/google_logo.png"),
          decoration: BoxDecoration(shape: BoxShape.circle),
        ),
      ],
    );
  }

  Future<bool> _backPress() {
    //print("BackPress Detected");
    if (!isLogin) {
      setState(() {
        print("Login Page comes");
        isLogin = true;
      });
      return Future.value(false);
    }
    return Future.value(true);
  }
}
