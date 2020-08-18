import 'package:flutter/material.dart';

class MyNotification extends StatefulWidget {
  MyNotification({Key key}) : super(key: key);

  @override
  _MyNotificationState createState() => _MyNotificationState();
}

class _MyNotificationState extends State<MyNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black38),
          title: Text(
            "Notifications",
            style: TextStyle(color: Colors.black38),
          ),
        ),
        body: new ListView(
          children: <Widget>[
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: Image.asset('assets/images/categories/01.jpg',
                    // width: 150,
                    height: 150,
                    fit: BoxFit.fill),
              ),
              title: Text(
                'Thank you for placing your order to Singer for Mega Deal. Our Customer manager will contact you soon.',
                textAlign: TextAlign.justify,
              ),
              subtitle: Text('09:19 AM - 24, May, 2020'),
              isThreeLine: true,
            ),
            Divider(),
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: Image.asset('assets/images/categories/02.jpg',
                    // width: 150,
                    height: 150,
                    fit: BoxFit.fill),
              ),
              title: Text(
                'Thank you for placing your order to Singer for Mega Deal. Our Customer manager will contact you soon.',
                textAlign: TextAlign.justify,
              ),
              subtitle: Text('09:19 AM - 24, May, 2020'),
              isThreeLine: true,
            ),
            Divider(),
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: Image.asset('assets/images/categories/03.jpg',
                    // width: 150,
                    height: 150,
                    fit: BoxFit.fill),
              ),
              title: Text(
                'Thank you for placing your order to Singer for Mega Deal. Our Customer manager will contact you soon.',
                textAlign: TextAlign.justify,
              ),
              subtitle: Text('09:19 AM - 24, May, 2020'),
              isThreeLine: true,
            ),
            Divider(),
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: Image.asset('assets/images/categories/04.jpg',
                    // width: 150,
                    height: 150,
                    fit: BoxFit.fill),
              ),
              title: Text(
                'Thank you for placing your order to Singer for Mega Deal. Our Customer manager will contact you soon.',
                textAlign: TextAlign.justify,
              ),
              subtitle: Text('09:19 AM - 24, May, 2020'),
              isThreeLine: true,
            ),
            Divider(),
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: Image.asset('assets/images/categories/05.jpg',
                    // width: 150,
                    height: 150,
                    fit: BoxFit.fill),
              ),
              title: Text(
                'Thank you for placing your order to Singer for Mega Deal. Our Customer manager will contact you soon.',
                textAlign: TextAlign.justify,
              ),
              subtitle: Text('09:19 AM - 24, May, 2020'),
              isThreeLine: true,
            ),
            Divider(),
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: Image.asset('assets/images/categories/06.jpg',
                    // width: 150,
                    height: 150,
                    fit: BoxFit.fill),
              ),
              title: Text(
                'Thank you for placing your order to Singer for Mega Deal. Our Customer manager will contact you soon.',
                textAlign: TextAlign.justify,
              ),
              subtitle: Text('09:19 AM - 24, May, 2020'),
              isThreeLine: true,
            ),
            Divider(),
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: Image.asset('assets/images/categories/07.jpg',
                    // width: 150,
                    height: 150,
                    fit: BoxFit.fill),
              ),
              title: Text(
                'Thank you for placing your order to Singer for Mega Deal. Our Customer manager will contact you soon.',
                textAlign: TextAlign.justify,
              ),
              subtitle: Text('09:19 AM - 24, May, 2020'),
              isThreeLine: true,
            ),
            Divider(),
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: Image.asset('assets/images/categories/08.jpg',
                    // width: 150,
                    height: 150,
                    fit: BoxFit.fill),
              ),
              title: Text(
                'Thank you for placing your order to Singer for Mega Deal. Our Customer manager will contact you soon.',
                textAlign: TextAlign.justify,
              ),
              subtitle: Text('09:19 AM - 24, May, 2020'),
              isThreeLine: true,
            ),
            Divider(),
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: Image.asset('assets/images/categories/09.jpg',
                    // width: 150,
                    height: 150,
                    fit: BoxFit.fill),
              ),
              title: Text(
                'Thank you for placing your order to Singer for Mega Deal. Our Customer manager will contact you soon.',
                textAlign: TextAlign.justify,
              ),
              subtitle: Text('09:19 AM - 24, May, 2020'),
              isThreeLine: true,
            ),
          ],
        ));
  }
}
