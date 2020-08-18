import 'package:flutter/material.dart';
import 'package:anando_bazar_app/src/ui/auth_ui/signup.dart';
import 'package:anando_bazar_app/src/ui/auth_ui/forgot_password.dart';

class SignIn extends StatefulWidget {
  SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 15.0),
        child: new Column(
          children: <Widget>[
            ListTile(
                leading: Icon(Icons.close),
                onTap: () {
                  Navigator.of(context).pop();
                }),
            Container(
              width: double.infinity,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 130,
                      height: 80,
                      margin: EdgeInsets.only(
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/logo.jpg"),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: TextField(
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black38,
                  ),
                  textInputAction: TextInputAction.next,
                  onEditingComplete: () => FocusScope.of(context).nextFocus(),
                  // autofocus: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    prefixIcon: Icon(Icons.person),
                    hintText: "Phone Number",
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueAccent, width: 32.0),
                        borderRadius: BorderRadius.circular(25.0)),
                  )),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: TextField(
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black38,
                  ),
                  autofocus: false,
                  obscureText: _obscureText,
                  textInputAction: TextInputAction.done,
                  onEditingComplete: () => FocusScope.of(context).unfocus(),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye),
                      onPressed: () {
                        setState(() => this._obscureText = !this._obscureText);
                      },
                    ),
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueAccent, width: 32.0),
                        borderRadius: BorderRadius.circular(25.0)),
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => ForgotPassword()),
                );
              },
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot your password?",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              height: 70.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  side: BorderSide(color: Colors.red),
                ),
                onPressed: () {},
                color: Colors.red,
                textColor: Colors.white,
                child: Text(
                  "Sign in".toUpperCase(),
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Don't have an account? ",
                  style: TextStyle(color: Colors.black38, fontSize: 15),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.pink[600],
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
