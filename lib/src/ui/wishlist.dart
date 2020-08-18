import 'package:flutter/material.dart';
import 'package:anando_bazar_app/src/ui/auth_ui/signin.dart';
import 'package:anando_bazar_app/src/ui/common_ui/main_drawer.dart';
import 'package:anando_bazar_app/src/ui/common_ui/bottom_nav.dart';

class WishList extends StatefulWidget {
  WishList({Key key}) : super(key: key);

  @override
  _WishListState createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black38),
        centerTitle: true,
        title: Image.asset(
          'assets/images/logo.jpg',
          fit: BoxFit.cover,
          height: 50,
          width: 65,
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.black38,
              ),
              iconSize: 30.0,
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => SignIn()),
                );
              }),
        ],
        backgroundColor: Colors.white,
      ),
      drawer: MainDrawer(),
      body: new ListView(
        padding: EdgeInsets.all(8.0),
        children: _listViewData
            .map((data) => ListTile(
                  leading: Image.asset(
                    'assets/images/categories/06.jpg',
                    fit: BoxFit.fill,
                    // height: 100,
                    // width: 100,
                  ),
                  title: Text(data),
                  subtitle: Text("Just now"),
                  trailing: Icon(
                    Icons.delete_outline,
                    color: Colors.red[300],
                  ),
                  isThreeLine: true,
                ))
            .toList(),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }

  final List<String> _listViewData = [
    "Sample Gradening Machines",
    "Sample Gradening Machines",
    "Sample Gradening Machines",
    "Sample Gradening Machines",
    "Sample Gradening Machines",
    "Sample Gradening Machines",
    "Sample Gradening Machines",
    "Sample Gradening Machines",
    "Sample Gradening Machines",
    "Sample Gradening Machines",
    "Sample Gradening Machines",
    "Sample Gradening Machines",
  ];
}
