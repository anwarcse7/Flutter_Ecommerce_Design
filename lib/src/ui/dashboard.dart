import 'package:anando_bazar_app/src/ui/auth_ui/change_password.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:anando_bazar_app/src/ui/notifications.dart';
import 'package:anando_bazar_app/src/ui/transaction_history.dart';
import 'package:anando_bazar_app/src/ui/order.dart';
import 'package:anando_bazar_app/src/ui/edit_profile.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void _showMessageInScaffold(String message) {
    try {
      _scaffoldKey.currentState.removeCurrentSnackBar();
      
      _scaffoldKey.currentState.showSnackBar(SnackBar(
        duration: Duration(seconds: 10),
        backgroundColor: Colors.redAccent,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(20.0),
            topRight: const Radius.circular(20.0),
          ),
        ),
        action: SnackBarAction(
          label: 'Dissmiss',
          textColor: Colors.yellow,
          onPressed: () {
            _scaffoldKey.currentState.hideCurrentSnackBar();
          },
        ),
        content: Container(
          height: 80,
          child: Text(message, style: TextStyle(color: Colors.black38)),
        ),
      ));
    } on Exception catch (e, s) {
      print(s);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black38),
        // centerTitle: true,
        title: Text(
          "Dashboard",
          style: TextStyle(color: Colors.black38),
        ),
        actions: <Widget>[
          IconButton(
              icon: FaIcon(FontAwesomeIcons.signOutAlt, color: Colors.black38),
              iconSize: 20.0,
              tooltip: 'Logout',
              onPressed: () {
                // Navigator.of(context).pop();
                // Navigator.push(
                //   context,
                //   new MaterialPageRoute(builder: (context) => SignIn()),
                // );
              }),
        ],
      ),
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(0),
            sliver: SliverGrid.count(
              // crossAxisSpacing: 2,
              // mainAxisSpacing: 2,
              crossAxisCount: 1,
              childAspectRatio: 4,
              children: <Widget>[
                SingleChildScrollView(
                  // height: 400,
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      // const FaIcon(
                      //   FontAwesomeIcons.solidUserCircle,
                      //   color: Colors.black38,
                      //   size: 70,
                      // ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'assets/images/anwar.jpg',
                          width: 60.0,
                          height: 60.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(width: 30),
                      Column(
                        children: <Widget>[
                          const Text(
                            "Anwar Hossain",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black38),
                          ),
                          // const SizedBox(height: 30),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.red)),
                            onPressed: () {
                              _showMessageInScaffold(
                                  "Hello dear! I'm SnackBar.");
                            },
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text("Check Balance",
                                style: TextStyle(fontSize: 14)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // color: Colors.green[100],
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(10),
            sliver: SliverGrid.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              // childAspectRatio: 1.5,
              children: <Widget>[
                SingleChildScrollView(
                  // padding: const EdgeInsets.all(8),
                  child: Column(
                    children: <Widget>[
                      IconButton(
                          icon: FaIcon(FontAwesomeIcons.listAlt,
                              color: Colors.black38),
                          iconSize: 30.0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => MyOrder()),
                            );
                          }),
                      Text(
                        "Orders",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),

                  // color: Colors.green[100],
                ),
                SingleChildScrollView(
                  // padding: const EdgeInsets.all(8),
                  child: Column(
                    children: <Widget>[
                      IconButton(
                          icon: FaIcon(FontAwesomeIcons.comment,
                              color: Colors.black38),
                          iconSize: 30.0,
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   new MaterialPageRoute(builder: (context) => SignIn()),
                            // );
                          }),
                      Text(
                        "Messages",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),

                  // color: Colors.green[100],
                ),
                SingleChildScrollView(
                  // padding: const EdgeInsets.all(8),
                  child: Column(
                    children: <Widget>[
                      IconButton(
                          icon: FaIcon(FontAwesomeIcons.bell,
                              color: Colors.black38),
                          iconSize: 30.0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => MyNotification()),
                            );
                          }),
                      Text(
                        "Notifications",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  // color: Colors.green[100],
                ),
                SingleChildScrollView(
                  // padding: const EdgeInsets.all(8),
                  child: Column(
                    children: <Widget>[
                      IconButton(
                          icon: FaIcon(FontAwesomeIcons.moneyBill,
                              color: Colors.black38),
                          iconSize: 30.0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => TransactionHistory()),
                            );
                          }),
                      Text(
                        "Transaction History",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),

                  // color: Colors.green[100],
                ),
                SingleChildScrollView(
                  // padding: const EdgeInsets.all(8),
                  child: Column(
                    children: <Widget>[
                      IconButton(
                          icon: FaIcon(FontAwesomeIcons.userEdit,
                              color: Colors.black38),
                          iconSize: 30.0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => EditProfile()),
                            );
                          }),
                      Text(
                        "Edit Profile",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),

                  // color: Colors.green[100],
                ),
                SingleChildScrollView(
                  // padding: const EdgeInsets.all(8),
                  child: Column(
                    children: <Widget>[
                      IconButton(
                          icon: FaIcon(FontAwesomeIcons.lock,
                              color: Colors.black38),
                          iconSize: 30.0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => ChangePassword()),
                            );
                          }),
                      Text(
                        "Change Password",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  // color: Colors.green[100],
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(0),
            sliver: SliverGrid.count(
              // crossAxisSpacing: 2,
              // mainAxisSpacing: 2,
              crossAxisCount: 1,
              childAspectRatio: 4,
              children: <Widget>[
                SingleChildScrollView(
                  // height: 400,
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      const FaIcon(
                        FontAwesomeIcons.home,
                        color: Colors.black38,
                        size: 20,
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: Column(
                          children: <Widget>[
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Address",
                                // textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black38),
                              ),
                            ),
                            // SizedBox(height: 20),
                            const Text(
                              "574/1 (2nd floor), Abdul Hamid Road, West Shewarapar, Dhaka-1207",
                              textAlign: TextAlign.justify,
                              overflow: TextOverflow.clip,
                              maxLines: 5,
                              style: TextStyle(height: 1.2, letterSpacing: 1),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      const FaIcon(
                        FontAwesomeIcons.pencilAlt,
                        color: Colors.lightGreen,
                        size: 15,
                      ),
                    ],
                  ),
                  // color: Colors.green[100],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
