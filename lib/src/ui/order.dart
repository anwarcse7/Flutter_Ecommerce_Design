import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class MyOrder extends StatefulWidget {
  MyOrder({Key key}) : super(key: key);

  @override
  _MyOrderState createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black38),
              onPressed: () => Navigator.of(context).pop(),
            ),
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.redAccent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black38,
              tabs: [
                Tab(text: "ALL"),
                Tab(text: "PENDING"),
                Tab(text: "CONFIRMED"),
                Tab(text: "PROCESSING"),
                Tab(text: "PICKED"),
                Tab(text: "SHIPPED"),
                Tab(text: "DELIVERED"),
                Tab(text: "CANCELLED")
              ],
            ),
            title: Text(
              'Order List',
              style: TextStyle(color: Colors.black38),
            ),
          ),
          body: TabBarView(
            children: [
              // ALL Tab
              ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "ABL654353454",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Badge(
                                        badgeColor: Colors.red,
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Cancelled',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                      Badge(
                                        badgeColor: Colors.orange,
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Unpaid',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "\u09F3 7997",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrange),
                                  ),
                                  Text(
                                    "22 Jun, 11:42 PM",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black38),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "ABL654353454",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Badge(
                                        badgeColor: Colors.red,
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Cancelled',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                      Badge(
                                        badgeColor: Colors.orange,
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Unpaid',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "\u09F3 7997",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrange),
                                  ),
                                  Text(
                                    "22 Jun, 11:42 PM",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black38),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "ABL654353454",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Badge(
                                        badgeColor: Colors.green,
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Delivered',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                      Badge(
                                        badgeColor: Colors.green[300],
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Paid',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "\u09F3 7997",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrange),
                                  ),
                                  Text(
                                    "22 Jun, 11:42 PM",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black38),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "ABL654353454",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Badge(
                                        badgeColor: Colors.green,
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Delivered',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                      Badge(
                                        badgeColor: Colors.green[300],
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Paid',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "\u09F3 7997",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrange),
                                  ),
                                  Text(
                                    "22 Jun, 11:42 PM",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black38),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "ABL654353454",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Badge(
                                        badgeColor: Colors.red,
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Cancelled',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                      Badge(
                                        badgeColor: Colors.orange,
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Unpaid',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "\u09F3 7997",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrange),
                                  ),
                                  Text(
                                    "22 Jun, 11:42 PM",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black38),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "ABL654353454",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Badge(
                                        badgeColor: Colors.red,
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Cancelled',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                      Badge(
                                        badgeColor: Colors.orange,
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Unpaid',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "\u09F3 7997",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrange),
                                  ),
                                  Text(
                                    "22 Jun, 11:42 PM",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black38),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "ABL654353454",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Badge(
                                        badgeColor: Colors.green,
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Delivered',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                      Badge(
                                        badgeColor: Colors.green[300],
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Paid',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "\u09F3 7997",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrange),
                                  ),
                                  Text(
                                    "22 Jun, 11:42 PM",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black38),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "ABL654353454",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Badge(
                                        badgeColor: Colors.green,
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Delivered',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                      Badge(
                                        badgeColor: Colors.green[300],
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Paid',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "\u09F3 7997",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrange),
                                  ),
                                  Text(
                                    "22 Jun, 11:42 PM",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black38),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "ABL654353454",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Badge(
                                        badgeColor: Colors.red,
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Cancelled',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                      Badge(
                                        badgeColor: Colors.orange,
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Unpaid',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "\u09F3 7997",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrange),
                                  ),
                                  Text(
                                    "22 Jun, 11:42 PM",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black38),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "ABL654353454",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Badge(
                                        badgeColor: Colors.red,
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Cancelled',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                      Badge(
                                        badgeColor: Colors.orange,
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Unpaid',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "\u09F3 7997",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrange),
                                  ),
                                  Text(
                                    "22 Jun, 11:42 PM",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black38),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "ABL654353454",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Badge(
                                        badgeColor: Colors.green,
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Delivered',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                      Badge(
                                        badgeColor: Colors.green[300],
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Paid',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "\u09F3 7997",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrange),
                                  ),
                                  Text(
                                    "22 Jun, 11:42 PM",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black38),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "ABL654353454",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Badge(
                                        badgeColor: Colors.green,
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Delivered',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                      Badge(
                                        badgeColor: Colors.green[300],
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Paid',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "\u09F3 7997",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrange),
                                  ),
                                  Text(
                                    "22 Jun, 11:42 PM",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black38),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Pending
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "No orders found",
                    style: TextStyle(fontSize: 20, color: Colors.black38),
                  ),
                ],
              ),
              // Confirmed
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "No orders found",
                    style: TextStyle(fontSize: 20, color: Colors.black38),
                  ),
                ],
              ),
              // Processing
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "No orders found",
                    style: TextStyle(fontSize: 20, color: Colors.black38),
                  ),
                ],
              ),
              // Picked
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "No orders found",
                    style: TextStyle(fontSize: 20, color: Colors.black38),
                  ),
                ],
              ),
              // Shipped
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "No orders found",
                    style: TextStyle(fontSize: 20, color: Colors.black38),
                  ),
                ],
              ),
              // Delivered
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "ABL654353454",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Badge(
                                        badgeColor: Colors.green,
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Delivered',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                      Badge(
                                        badgeColor: Colors.green[300],
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Paid',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "\u09F3 7997",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrange),
                                  ),
                                  Text(
                                    "22 Jun, 11:42 PM",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black38),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "ABL654353454",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Badge(
                                        badgeColor: Colors.green,
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Delivered',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                      Badge(
                                        badgeColor: Colors.green[300],
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Paid',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "\u09F3 7997",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrange),
                                  ),
                                  Text(
                                    "22 Jun, 11:42 PM",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black38),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "ABL654353454",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Badge(
                                        badgeColor: Colors.green,
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Delivered',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                      Badge(
                                        badgeColor: Colors.green[300],
                                        shape: BadgeShape.square,
                                        // borderRadius: 5,
                                        toAnimate: false,
                                        badgeContent: Text('Paid',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "\u09F3 7997",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrange),
                                  ),
                                  Text(
                                    "22 Jun, 11:42 PM",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black38),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Cancelled
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "No orders found",
                    style: TextStyle(fontSize: 20, color: Colors.black38),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
