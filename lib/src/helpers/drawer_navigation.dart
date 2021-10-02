import 'package:flutter/material.dart';
import 'package:flutter_sqlite_todo_list/src/screens/categories_screen.dart';
import 'package:flutter_sqlite_todo_list/src/screens/home_screen.dart';

class DrawerNavigation extends StatefulWidget {
  const DrawerNavigation({Key? key}) : super(key: key);

  @override
  _DrawerNavigationState createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('John Doe'),
            accountEmail: Text('jonh.doe@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://www.bing.com/images/search?q=image+of+man&id=4CA499871EBAE460E60511351C29FDFC2551BA31&FORM=IQFRBA',
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'Home',
            ),
            onTap: () => Navigator.of(context).push<MaterialPageRoute>(
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.view_list),
            title: Text(
              'Categories',
            ),
            onTap: () => Navigator.of(context).push<MaterialPageRoute>(
              MaterialPageRoute(
                builder: (context) => CategoriesScreen(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
