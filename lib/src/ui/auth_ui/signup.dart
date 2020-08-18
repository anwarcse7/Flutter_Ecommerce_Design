import 'package:anando_bazar_app/src/ui/movie_list.dart';
import 'package:flutter/material.dart';
import 'package:anando_bazar_app/src/ui/auth_ui/signin.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool checkedValue = false;
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
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => MovieList()),
                  );
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
                    hintText: "First Name",
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
                  textInputAction: TextInputAction.next,
                  onEditingComplete: () => FocusScope.of(context).nextFocus(),
                  // autofocus: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    prefixIcon: Icon(Icons.person),
                    hintText: "Last Name",
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
                  textInputAction: TextInputAction.next,
                  onEditingComplete: () => FocusScope.of(context).nextFocus(),
                  // autofocus: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    prefixIcon: Icon(Icons.mobile_screen_share),
                    hintText: "Phone Number",
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueAccent, width: 32.0),
                        borderRadius: BorderRadius.circular(25.0)),
                  )),
            ),
            // Wrap(
            //   // spacing: 25.0,
            //   direction: Axis.horizontal,
            //   children: <Widget>[
            //     Checkbox(
            //       value: _isChecked,
            //       onChanged: (bool val) => setState(() => _isChecked = val),
            //     ),
            //     Text(
            //       "I agree to the ",
            //       style: TextStyle(color: Colors.black38, fontSize: 15),
            //     ),
            //     GestureDetector(
            //       onTap: () {},
            //       child: Text(
            //         "Privacy Policy ",
            //         style: TextStyle(
            //             fontWeight: FontWeight.bold,
            //             color: Colors.pink[600],
            //             fontSize: 15),
            //       ),
            //     ),
            //     Text(
            //       "and ",
            //       style: TextStyle(color: Colors.black38, fontSize: 15),
            //     ),
            //     GestureDetector(
            //       onTap: () {},
            //       child: Text(
            //         "Terms & Conditions ",
            //         style: TextStyle(
            //             fontWeight: FontWeight.bold,
            //             color: Colors.pink[600],
            //             fontSize: 15),
            //       ),
            //     ),
            //     Text(
            //       "of Anando Bazar ",
            //       style: TextStyle(color: Colors.black38, fontSize: 15),
            //     ),
            //   ],
            // ),
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
                  "Sign Up".toUpperCase(),
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Already have an account? ",
                  style: TextStyle(color: Colors.black38, fontSize: 15),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      new MaterialPageRoute(builder: (context) => SignIn()),
                    );
                  },
                  child: Text(
                    "Sign In",
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
