import 'package:flutter/material.dart';
import 'package:penaltee/screens/menu.dart';
import 'package:penaltee/screens/productlist_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
            color: Colors.red.shade900
            ),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(15)),
                Text(
                  'Penaltee',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(1)),
                Text(
                  "All the latest football product here!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            // Redirect to MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.post_add),
            title: const Text('Add Product'),
            // Redirect to ProductFormPage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductFormPage(),
                  ));
            },
          ),
          // TODO: Create another ListTile for the product list page
          ListTile(
            leading: const Icon(Icons.list),
            title: const Text('Product List'),
          ),
        ],
      ),
    );
  }
}