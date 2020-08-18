import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:anando_bazar_app/src/ui/common_ui/bottom_nav.dart';

class MyCart extends StatefulWidget {
  MyCart({Key key}) : super(key: key);

  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black38),
        // centerTitle: true,
        title: Text(
          "Shopping Cart",
          style: TextStyle(color: Colors.black38),
        ),
        actions: <Widget>[
          IconButton(
              icon: FaIcon(FontAwesomeIcons.trashAlt, color: Colors.black38),
              iconSize: 20.0,
              onPressed: () {
                // Navigator.of(context).pop();
                // Navigator.push(
                //   context,
                //   new MaterialPageRoute(builder: (context) => SignIn()),
                // );
              }),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          Card(
            child: CheckboxListTile(
              onChanged: (bool value) {
                setState(() {
                  timeDilation = value ? 10.0 : 1.0;
                });
              },
              title: Flexible(
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/categories/09.jpg',
                      fit: BoxFit.cover,
                      height: 80,
                      width: 80,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: Column(
                        children: <Widget>[
                          const Text("Ahmed Custard Powder Tin 265 gm"),
                          SizedBox(height: 10),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "\u09F3 95 * 1",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "\u09F3 95",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.redAccent),
                              ),
                              Container(
                                color: Colors.black38,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 18,
                                ),
                              ),
                              Container(
                                width: 20.0,
                                child: TextField(
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                    controller: TextEditingController()
                                      ..text = '1',
                                    style: TextStyle(
                                        fontSize: 20.0, color: Colors.black)),
                              ),
                              Container(
                                color: Colors.black38,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.black,
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // child: Text("Ahmed Custard Powder Tin 265 gm"),
                    ),
                  ],
                ),
              ),
              // isThreeLine: true,
              // subtitle: const Text("Sub title"),
              value: timeDilation != 1.0,
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ),
          Card(
            child: CheckboxListTile(
              onChanged: (bool value) {
                setState(() {
                  timeDilation = value ? 10.0 : 1.0;
                });
              },
              title: Flexible(
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/categories/08.jpg',
                      fit: BoxFit.cover,
                      height: 80,
                      width: 80,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: Column(
                        children: <Widget>[
                          const Text("Ahmed Custard Powder Tin 265 gm"),
                          SizedBox(height: 10),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "\u09F3 95 * 1",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "\u09F3 95",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.redAccent),
                              ),
                              Container(
                                color: Colors.black38,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 18,
                                ),
                              ),
                              Container(
                                width: 20.0,
                                child: TextField(
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                    controller: TextEditingController()
                                      ..text = '1',
                                    style: TextStyle(
                                        fontSize: 20.0, color: Colors.black)),
                              ),
                              Container(
                                color: Colors.black38,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.black,
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // child: Text("Ahmed Custard Powder Tin 265 gm"),
                    ),
                  ],
                ),
              ),
              // isThreeLine: true,
              // subtitle: const Text("Sub title"),
              value: timeDilation != 1.0,
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ),
          Card(
            child: CheckboxListTile(
              onChanged: (bool value) {
                setState(() {
                  timeDilation = value ? 10.0 : 1.0;
                });
              },
              title: Flexible(
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/categories/07.jpg',
                      fit: BoxFit.cover,
                      height: 80,
                      width: 80,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: Column(
                        children: <Widget>[
                          const Text("Ahmed Custard Powder Tin 265 gm"),
                          SizedBox(height: 10),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "\u09F3 95 * 1",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "\u09F3 95",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.redAccent),
                              ),
                              Container(
                                color: Colors.black38,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 18,
                                ),
                              ),
                              Container(
                                width: 20.0,
                                child: TextField(
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                    controller: TextEditingController()
                                      ..text = '1',
                                    style: TextStyle(
                                        fontSize: 20.0, color: Colors.black)),
                              ),
                              Container(
                                color: Colors.black38,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.black,
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // child: Text("Ahmed Custard Powder Tin 265 gm"),
                    ),
                  ],
                ),
              ),
              // isThreeLine: true,
              // subtitle: const Text("Sub title"),
              value: timeDilation != 1.0,
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ),
          Card(
            child: CheckboxListTile(
              onChanged: (bool value) {
                setState(() {
                  timeDilation = value ? 10.0 : 1.0;
                });
              },
              title: Flexible(
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/categories/06.jpg',
                      fit: BoxFit.cover,
                      height: 80,
                      width: 80,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: Column(
                        children: <Widget>[
                          const Text("Ahmed Custard Powder Tin 265 gm"),
                          SizedBox(height: 10),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "\u09F3 95 * 1",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "\u09F3 95",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.redAccent),
                              ),
                              Container(
                                color: Colors.black38,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 18,
                                ),
                              ),
                              Container(
                                width: 20.0,
                                child: TextField(
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                    controller: TextEditingController()
                                      ..text = '1',
                                    style: TextStyle(
                                        fontSize: 20.0, color: Colors.black)),
                              ),
                              Container(
                                color: Colors.black38,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.black,
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // child: Text("Ahmed Custard Powder Tin 265 gm"),
                    ),
                  ],
                ),
              ),
              // isThreeLine: true,
              // subtitle: const Text("Sub title"),
              value: timeDilation != 1.0,
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ),
          Card(
            child: CheckboxListTile(
              onChanged: (bool value) {
                setState(() {
                  timeDilation = value ? 10.0 : 1.0;
                });
              },
              title: Flexible(
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/categories/05.jpg',
                      fit: BoxFit.cover,
                      height: 80,
                      width: 80,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: Column(
                        children: <Widget>[
                          const Text("Ahmed Custard Powder Tin 265 gm"),
                          SizedBox(height: 10),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "\u09F3 95 * 1",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "\u09F3 95",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.redAccent),
                              ),
                              Container(
                                color: Colors.black38,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 18,
                                ),
                              ),
                              Container(
                                width: 20.0,
                                child: TextField(
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                    controller: TextEditingController()
                                      ..text = '1',
                                    style: TextStyle(
                                        fontSize: 20.0, color: Colors.black)),
                              ),
                              Container(
                                color: Colors.black38,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.black,
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // child: Text("Ahmed Custard Powder Tin 265 gm"),
                    ),
                  ],
                ),
              ),
              // isThreeLine: true,
              // subtitle: const Text("Sub title"),
              value: timeDilation != 1.0,
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ),
          Card(
            child: CheckboxListTile(
              onChanged: (bool value) {
                setState(() {
                  timeDilation = value ? 10.0 : 1.0;
                });
              },
              title: Flexible(
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/categories/04.jpg',
                      fit: BoxFit.cover,
                      height: 80,
                      width: 80,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: Column(
                        children: <Widget>[
                          const Text("Ahmed Custard Powder Tin 265 gm"),
                          SizedBox(height: 10),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "\u09F3 95 * 1",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "\u09F3 95",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.redAccent),
                              ),
                              Container(
                                color: Colors.black38,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 18,
                                ),
                              ),
                              Container(
                                width: 20.0,
                                child: TextField(
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                    controller: TextEditingController()
                                      ..text = '1',
                                    style: TextStyle(
                                        fontSize: 20.0, color: Colors.black)),
                              ),
                              Container(
                                color: Colors.black38,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.black,
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // child: Text("Ahmed Custard Powder Tin 265 gm"),
                    ),
                  ],
                ),
              ),
              // isThreeLine: true,
              // subtitle: const Text("Sub title"),
              value: timeDilation != 1.0,
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ),
          Card(
            child: CheckboxListTile(
              onChanged: (bool value) {
                setState(() {
                  timeDilation = value ? 10.0 : 1.0;
                });
              },
              title: Flexible(
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/categories/03.jpg',
                      fit: BoxFit.cover,
                      height: 80,
                      width: 80,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: Column(
                        children: <Widget>[
                          const Text("Ahmed Custard Powder Tin 265 gm"),
                          SizedBox(height: 10),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "\u09F3 95 * 1",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "\u09F3 95",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.redAccent),
                              ),
                              Container(
                                color: Colors.black38,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 18,
                                ),
                              ),
                              Container(
                                width: 20.0,
                                child: TextField(
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                    controller: TextEditingController()
                                      ..text = '1',
                                    style: TextStyle(
                                        fontSize: 20.0, color: Colors.black)),
                              ),
                              Container(
                                color: Colors.black38,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.black,
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // child: Text("Ahmed Custard Powder Tin 265 gm"),
                    ),
                  ],
                ),
              ),
              // isThreeLine: true,
              // subtitle: const Text("Sub title"),
              value: timeDilation != 1.0,
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ),
          Card(
            child: CheckboxListTile(
              onChanged: (bool value) {
                setState(() {
                  timeDilation = value ? 10.0 : 1.0;
                });
              },
              title: Flexible(
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/categories/02.jpg',
                      fit: BoxFit.cover,
                      height: 80,
                      width: 80,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: Column(
                        children: <Widget>[
                          const Text("Ahmed Custard Powder Tin 265 gm"),
                          SizedBox(height: 10),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "\u09F3 95 * 1",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "\u09F3 95",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.redAccent),
                              ),
                              Container(
                                color: Colors.black38,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 18,
                                ),
                              ),
                              Container(
                                width: 20.0,
                                child: TextField(
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                    controller: TextEditingController()
                                      ..text = '1',
                                    style: TextStyle(
                                        fontSize: 20.0, color: Colors.black)),
                              ),
                              Container(
                                color: Colors.black38,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.black,
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // child: Text("Ahmed Custard Powder Tin 265 gm"),
                    ),
                  ],
                ),
              ),
              // isThreeLine: true,
              // subtitle: const Text("Sub title"),
              value: timeDilation != 1.0,
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ),
          Card(
            child: CheckboxListTile(
              onChanged: (bool value) {
                setState(() {
                  timeDilation = value ? 10.0 : 1.0;
                });
              },
              title: Flexible(
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/categories/01.jpg',
                      fit: BoxFit.cover,
                      height: 80,
                      width: 80,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: Column(
                        children: <Widget>[
                          const Text("Ahmed Custard Powder Tin 265 gm"),
                          SizedBox(height: 10),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "\u09F3 95 * 1",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "\u09F3 95",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.redAccent),
                              ),
                              Container(
                                color: Colors.black38,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 18,
                                ),
                              ),
                              Container(
                                width: 20.0,
                                child: TextField(
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                    controller: TextEditingController()
                                      ..text = '1',
                                    style: TextStyle(
                                        fontSize: 20.0, color: Colors.black)),
                              ),
                              Container(
                                color: Colors.black38,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.black,
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // child: Text("Ahmed Custard Powder Tin 265 gm"),
                    ),
                  ],
                ),
              ),
              // isThreeLine: true,
              // subtitle: const Text("Sub title"),
              value: timeDilation != 1.0,
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ),
        ],
      ),
      bottomSheet: Positioned(
          left: 0.0,
          right: 0.0,
          top: 0.0,
          bottom: 0.0,
          child: new Container(
            width: double.infinity,
            height: 50.0,
            decoration: new BoxDecoration(color: Colors.grey[300]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Checkbox(
                  value: true,
                  onChanged: (bool newValue) {
                    setState(() {
                      // _throwShotAway = newValue;
                    });
                  },
                ),
                Text("All"),
                Text("Total: \u09F3 809", style: TextStyle(color: Colors.orange, fontSize: 20),),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      side: BorderSide(color: Colors.red)),
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text("CHECK OUT", style: TextStyle(fontSize: 14)),
                ),
              ],
            ),
          )),
      bottomNavigationBar: BottomNav(),
    );
  }
}
