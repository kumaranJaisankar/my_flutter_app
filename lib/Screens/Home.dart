import 'package:flutter/material.dart';
import 'package:my_flutter_app/Screens/BottomNavBar.dart';
import 'package:my_flutter_app/Screens/DrawerScreen.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home({super.key});

  List<String> category = ['Grocery', 'Electronics', 'Fashions'];
  List<String> subtitle = [
    'Fresh grocery',
    'super fast computers',
    'trending fassions'
  ];
  List<int> totalItems = [200, 300, 1000];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          elevation: 10.0,
          backgroundColor: Colors.redAccent,
          child: const Icon(Icons.add),
          // shape:
          //     BeveledRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          // mini: true,
        ),
        drawer: const DrawerScreen(),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text('Row and Column'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        bottomNavigationBar: const BottomNavBar(),
        body: Container(
            child: ListView.builder(
          itemCount: category.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(14.0),
              child: ListTile(
                tileColor: Colors.black12,
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(
                        width: 1.0, color: Color.fromARGB(255, 179, 73, 65))),
                leading: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 50, 201, 186),
                  child: Text(
                    category[index][0],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                title: Text(category[index]),
                subtitle: Text(subtitle[index]),
                trailing: Text(totalItems[index].toString()),
                onTap: () {},
              ),
            );
          },
        )));
  }
}
