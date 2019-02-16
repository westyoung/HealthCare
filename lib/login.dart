import 'package:flutter/material.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}
ThemeData buildTheme(){
 final ThemeData base =ThemeData();
 return base.copyWith(
   hintColor: Colors.white,
 );
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Image.asset('assets/TeloMD_w.png'),
      ),
    );

    final email = TextFormField(
      style: TextStyle(color: Colors.white),
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'Email Address',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
          borderSide:  BorderSide(
            color: Colors.white,
          ),
        ),
    ),
    );

    final password = TextFormField(
      style: TextStyle(color: Colors.white),
      autofocus: false,
      initialValue: 'password',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
          borderSide:  BorderSide(
            color: Colors.white,
          ),
      ),
    ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(HomePage.tag);
        },
        padding: EdgeInsets.all(15),
        color: Colors.deepOrangeAccent,
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {},
    );

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 100.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 120.0),
            loginButton,
            forgotLabel
          ],
        ),
      ),
    );
  }
}