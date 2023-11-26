import 'package:c_star/Utils/styles.dart';
import 'package:c_star/VIEW/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({super.key});

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: styles.bcolor,
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: styles.bcolor,
            ),
            accountName: const Text("Abhishek Mishra"),
            accountEmail: const Text("abhishekm977@gmail.com"),
            currentAccountPicture: const CircleAvatar(
              backgroundColor: Colors.black,
              child: Text(
                "A",
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),
          ListTile(
            // leading: Icon(Icons.home),
            title: Text(
              "CONFERENCES",
              style: styles.textStyle,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            //leading: Icon(Icons.settings),
            title: Text(
              "JOURNALS",
              style: styles.textStyle,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            //  leading: Icon(Icons.contacts),
            title: Text(
              "GALLERY",
              style: styles.textStyle,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            //  leading: Icon(Icons.contacts),
            title: Text(
              "CONTACT US",
              style: styles.textStyle,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            //  leading: Icon(Icons.contacts),
            title: Text(
              "TERMS & CONDITIONS",
              style: styles.textStyle,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            //  leading: Icon(Icons.contacts),
            title: Text(
              "ABOUT US",
              style: styles.textStyle,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            //  leading: Icon(Icons.contacts),
            title: Text(
              "LOG OUT",
              style: styles.textStyle,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const LoginPage())));
            },
          ),
        ],
      ),
    );
  }
}
