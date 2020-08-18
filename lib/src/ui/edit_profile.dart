import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EditProfile extends StatefulWidget {
  EditProfile({Key key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black38),
        // centerTitle: true,
        title: Text(
          "Edit Profile",
          style: TextStyle(color: Colors.black38),
        ),
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
              childAspectRatio: 2,
              children: <Widget>[
                SingleChildScrollView(
                  // height: 400,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          'assets/images/anwar.jpg',
                          width: 110.0,
                          height: 110.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const Text(
                        "Anwar Hossain",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black38),
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
              childAspectRatio: 2,
              children: <Widget>[
                SingleChildScrollView(
                  // height: 400,
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 10),
                      Flexible(
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Personal Information",
                                    // textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black38),
                                  ),
                                ),
                                const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Edit",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: <Widget>[
                                const FaIcon(
                                  FontAwesomeIcons.user,
                                  color: Colors.black38,
                                  size: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: const Text(
                                    "Name",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: const Text(
                                    "Anwar Hossain",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black38,
                                        fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: <Widget>[
                                const FaIcon(
                                  FontAwesomeIcons.mars,
                                  color: Colors.black38,
                                  size: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: const Text(
                                    "Gender",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: const Text(
                                    "Male",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black38,
                                        fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
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
              childAspectRatio: 2,
              children: <Widget>[
                SingleChildScrollView(
                  // height: 400,
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 10),
                      Flexible(
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Contact Information",
                                    // textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black38),
                                  ),
                                ),
                                const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Edit",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: <Widget>[
                                const FaIcon(
                                  FontAwesomeIcons.phone,
                                  color: Colors.black38,
                                  size: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: const Text(
                                    "Phone",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: const Text(
                                    "+8801711393095",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black38,
                                        fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: <Widget>[
                                const FaIcon(
                                  FontAwesomeIcons.mailBulk,
                                  color: Colors.black38,
                                  size: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: const Text(
                                    "Email",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: const Text(
                                    "anwarcse7@gmail.com",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black38,
                                        fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
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
