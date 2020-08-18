import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  ChangePassword({Key key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
                    hintText: "Current Password",
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
                    hintText: "New Password",
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
                    hintText: "Confirm Password",
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueAccent, width: 32.0),
                        borderRadius: BorderRadius.circular(25.0)),
                  )),
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
                  "Change Password".toUpperCase(),
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
