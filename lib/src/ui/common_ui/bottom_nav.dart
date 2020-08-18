import 'package:flutter/material.dart';
import 'package:anando_bazar_app/src/ui/home.dart';
import 'package:anando_bazar_app/src/ui/wishlist.dart';
import 'package:anando_bazar_app/src/ui/dashboard.dart';
import 'package:anando_bazar_app/src/ui/cart.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key key}) : super(key: key);
  _BottomNav createState() => _BottomNav();
}

class _BottomNav extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    int menuIndex = 0;
    return BottomNavigationBar(
      showSelectedLabels: true,
      showUnselectedLabels: true,
      currentIndex: menuIndex,
      onTap: (value) {
        menuIndex = value;
        if (menuIndex == 0) {
          Navigator.push(
            context,
            new MaterialPageRoute(builder: (context) => MyHomePage()),
          );
        } else if (menuIndex == 1) {
          Navigator.push(
            context,
            new MaterialPageRoute(builder: (context) => WishList()),
          );
        } else if (menuIndex == 2) {
          Navigator.push(
            context,
            new MaterialPageRoute(builder: (context) => MyCart()),
          );
        } else if (menuIndex == 3) {
          Navigator.push(
            context,
            new MaterialPageRoute(builder: (context) => Dashboard()),
          );
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.black38),
          title: Text("Home", style: TextStyle(color: Colors.black38)),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite, color: Colors.black38),
          title: Text("Wish List", style: TextStyle(color: Colors.black38)),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart, color: Colors.black38),
          title: Text("Cart", style: TextStyle(color: Colors.black38)),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.dashboard, color: Colors.black38),
          title: Text("Dashboard", style: TextStyle(color: Colors.black38)),
        )
      ],
    );
  }
}
