import 'package:flutter/material.dart';
import 'package:anando_bazar_app/src/ui/home.dart';
import 'package:anando_bazar_app/src/ui/auth_ui/signin.dart';
import 'package:anando_bazar_app/src/ui/contactus.dart';
import 'package:anando_bazar_app/src/ui/wishlist.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              // color: Color(0xDD000000),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(
                        top: 30,
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
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'Home',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'Sign In',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => SignIn()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text(
                'Wish List',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => WishList()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_phone),
              title: Text(
                'Contact Us',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => ContactUs()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
