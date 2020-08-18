import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:anando_bazar_app/src/ui/home.dart';
import 'package:anando_bazar_app/src/common/common_service.dart';

class ContactUs extends StatefulWidget {
  ContactUs({Key key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final _commonService = CommonService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
                title: Text(
                  "Contact Us",
                  style: TextStyle(color: Colors.black38),
                ),
                backgroundColor: Colors.white,
                automaticallyImplyLeading: true,
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black38,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      new MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                )),
            SliverToBoxAdapter(
              child: SizedBox(
                child: Center(
                  child: Image.asset(
                    'assets/images/map.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Color(0xff94d500),
                    child: IconButton(
                      icon: Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                      iconSize: 25.0,
                      // onPressed: _launchURL,
                      onPressed: () => launch("tel://01612226333"),
                    ),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.redAccent,
                    child: IconButton(
                        icon: Icon(
                          Icons.chat_bubble_outline,
                          color: Colors.white,
                        ),
                        iconSize: 25.0,
                        onPressed: () {
                          _commonService.showToast(
                              'Please login to send message', Colors.white70);
                        }),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.yellow[800],
                    child: IconButton(
                      icon: Icon(
                        Icons.add_location,
                        color: Colors.white,
                      ),
                      iconSize: 25.0,
                      onPressed: () => MapsLauncher.launchQuery(
                          'City Plaza Shopping Complex, bypass road'),
                    ),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blueAccent,
                    child: IconButton(
                      icon: FaIcon(FontAwesomeIcons.facebook,
                          color: Colors.white),
                      iconSize: 25.0,
                      onPressed: () =>
                          launch("https://facebook.com/anondobazaar.online"),
                    ),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.red,
                    child: IconButton(
                      icon:
                          FaIcon(FontAwesomeIcons.youtube, color: Colors.white),
                      iconSize: 25.0,
                      onPressed: () => launch(
                          "https://www.youtube.com/channel/UCd1fqq5AlnBbzjIk9kg9iEg?view_as=subscriber"),
                    ),
                  ),
                ],
              ),
            ),

            SliverToBoxAdapter(
              child: Column(
                children: <Widget>[
                  // Address Start
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.add_location,
                            color: Colors.black38,
                          ),
                          iconSize: 25.0,
                          onPressed: () {}),
                      Text("Address")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Flexible(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 50.0),
                        child: Text(
                            "City Plaza (4th Floor), Ramgonj, Lakshmipur, 3720",
                            style: TextStyle(fontSize: 20)),
                      )),
                    ],
                  ),
                  SizedBox(height: 50),
                  // Email Start
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.mail,
                            color: Colors.black38,
                          ),
                          iconSize: 25.0,
                          onPressed: () {}),
                      Text("Email")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Flexible(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 50.0),
                        child: Text("anondobazaar@gmail.com",
                            style: TextStyle(
                                fontSize: 20,
                                decoration: TextDecoration.underline)),
                      )),
                    ],
                  ),
                  SizedBox(height: 50),
                  // Customer Care Start
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.call,
                            color: Colors.black38,
                          ),
                          iconSize: 25.0,
                          onPressed: () {}),
                      Text("Customer Care")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Flexible(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 50.0),
                        child:
                            Text("01612226333", style: TextStyle(fontSize: 20)),
                      )),
                    ],
                  ),
                ],
              ),
            ),

            // SliverList(delegate: new SliverChildListDelegate(_buildList(50))),

            // SliverGrid(
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 4,
            //   ),
            //   delegate:
            //       SliverChildBuilderDelegate((BuildContext context, int index) {
            //     return new Container(color: _randomColor(index), height: 200.0);
            //   }),
            // ),
          ],
        ),
      ),
    );
  }
}
