import 'package:flutter/material.dart';
import 'package:anando_bazar_app/src/ui/common_ui/main_drawer.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:anando_bazar_app/src/ui/common_ui/bottom_nav.dart';
import 'package:anando_bazar_app/src/ui/notifications.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: Builder(
              builder: (context) => IconButton(
                icon: new Icon(Icons.menu, color: Colors.black38),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
            expandedHeight: 50.0,
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
                      new MaterialPageRoute(builder: (context) => MyNotification()),
                    );
                  }),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  child: TextField(
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black38,
                      ),
                      // textInputAction: TextInputAction.next,
                      onEditingComplete: () =>
                          FocusScope.of(context).nextFocus(),
                      // autofocus: true,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        prefixIcon: Icon(Icons.search),
                        hintText: "What would you like to buy?",
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 32.0, color: Colors.black38),
                            borderRadius: BorderRadius.circular(5.0)),
                      )),
                ),
                Container(
                    width: double.infinity,
                    height: 150.0,
                    padding: EdgeInsets.all(10),
                    child: Carousel(
                      images: [
                        NetworkImage(
                            'https://homepages.cae.wisc.edu/~ece533/images/fruits.png'),
                        NetworkImage(
                            'https://homepages.cae.wisc.edu/~ece533/images/cat.png'),
                        NetworkImage(
                            "https://homepages.cae.wisc.edu/~ece533/images/peppers.png"),
                        NetworkImage(
                            "https://homepages.cae.wisc.edu/~ece533/images/tulips.png")
                      ],
                      dotSize: 4.0,
                      dotSpacing: 15.0,
                      dotColor: Colors.lightGreenAccent,
                      indicatorBgPadding: 5.0,
                      dotBgColor: Colors.purple.withOpacity(0.5),
                      borderRadius: true,
                      overlayShadow: true,
                      overlayShadowColors: Colors.white,
                      overlayShadowSize: 0.7,
                    )),
                Container(
                  width: double.infinity,
                  height: 500,
                  padding: EdgeInsets.all(10),
                  child: DefaultTabController(
                    length: 3,
                    child: SizedBox(
                      // height: 1200,
                      child: Column(
                        children: <Widget>[
                          TabBar(
                            unselectedLabelColor: Colors.black38,
                            labelColor: Colors.black38,
                            indicatorWeight: 2,
                            indicatorColor: Colors.redAccent,
                            tabs: <Widget>[
                              Tab(
                                text: "Categories",
                              ),
                              Tab(
                                text: "Brands",
                              ),
                              Tab(
                                text: "Shops",
                              )
                            ],
                          ),
                          Expanded(
                            child: TabBarView(
                              children: <Widget>[
                                GridView.extent(
                                    physics: ScrollPhysics(),
                                    maxCrossAxisExtent: 150,
                                    mainAxisSpacing: 5.0,
                                    crossAxisSpacing: 5.0,
                                    children: _brandGridTiles(9)),
                                GridView.extent(
                                    physics: ScrollPhysics(),
                                    maxCrossAxisExtent: 150,
                                    mainAxisSpacing: 10.0,
                                    crossAxisSpacing: 5.0,
                                    children: _brandGridTiles(9)),
                                GridView.extent(
                                    physics: ScrollPhysics(),
                                    maxCrossAxisExtent: 150,
                                    mainAxisSpacing: 5.0,
                                    crossAxisSpacing: 5.0,
                                    children: _brandGridTiles(9)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Recent Product",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 1200,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: GridView.extent(
                            physics: ScrollPhysics(),
                            maxCrossAxisExtent: 200,
                            mainAxisSpacing: 5.0,
                            crossAxisSpacing: 5.0,
                            children: _recentProduct(9)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }

  List<Card> _brandGridTiles(numberOfImage) {
    List<Card> cards = new List<Card>.generate(numberOfImage, (int index) {
      final imageName = "assets/images/categories/0${index + 1}.jpg";
      return Card(
        margin: const EdgeInsets.all(2.0),
        child: Column(
          children: [
            ClipRRect(
              child: Image.asset(
                imageName,
                fit: BoxFit.fill,
                height: 80,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Text(
                    "Demo",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
    return cards;
  }

  List<Card> _recentProduct(numberOfImage) {
    List<Card> cards = new List<Card>.generate(numberOfImage, (int index) {
      final imageName = "assets/images/categories/0${index + 1}.jpg";
      return Card(
        margin: const EdgeInsets.all(2.0),
        child: Column(
          children: [
            ClipRRect(
              child: Image.asset(
                imageName,
                fit: BoxFit.fill,
                height: 120,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Text(
                    "Demo",
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "8000",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.redAccent, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
    return cards;
  }
}
