import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.redAccent),
            accountEmail: Text('kumaranhb5@gmail.com'),
            accountName: Text('kumaran'),
            currentAccountPicture: CircleAvatar(
              foregroundImage: AssetImage(
                  'images/peter-broomfield-m3m-lnR90uM-unsplash.jpg'),
            ),
            // padding: EdgeInsets.all(0.0),
            // child: Container(
            //   padding: EdgeInsets.all(10.0),
            //   color: Colors.blueAccent,
            //   child: Column(
            //     children: [
            //       Text(
            //         "Welcome to",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontWeight: FontWeight.bold,
            //             fontSize: 22.0),
            //       ),
            //       Text(
            //         'Secure Assert',
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontWeight: FontWeight.bold,
            //             fontSize: 30.0),
            //       )
            //     ],
            //   ),
            // )
          ),
          const ListTile(
            leading: CircleAvatar(child: Icon(Icons.home_filled)),
            title: Text('Home'),
            trailing: FaIcon(
              FontAwesomeIcons.rightFromBracket,
              color: Colors.blue,
            ),
          ),
          const ListTile(
            leading: CircleAvatar(child: Icon(Icons.home_filled)),
            title: Text('Home'),
            trailing: FaIcon(
              FontAwesomeIcons.rightFromBracket,
              color: Colors.blue,
            ),
          ),
          const ListTile(
            leading: CircleAvatar(child: Icon(Icons.settings)),
            title: Text('Setting'),
            trailing: FaIcon(
              FontAwesomeIcons.arrowRight,
              color: Colors.blue,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(14.0),
            child: Text('Labels'),
          ),
          ListTile(
            onTap: () {},
            leading: const CircleAvatar(child: Icon(Icons.settings)),
            title: const Text('Setting'),
            trailing: const FaIcon(
              FontAwesomeIcons.arrowRight,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
