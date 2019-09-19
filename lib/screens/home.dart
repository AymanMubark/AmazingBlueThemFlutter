import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:like_hod/screens/home_activities.dart';
import 'package:like_hod/screens/myorder.dart';
import 'package:like_hod/utils/style.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _tapsName = ['Home', 'My Orders', 'My Travels'];
  String _title = 'Home';
  bool _dialVisible = true;

  @override
  void initState() {
    controller = ScrollController();
    controller.addListener(_scrollListener);
    super.initState();
  }

  _scrollListener() {
    if (controller.position.isScrollingNotifier.value && _dialVisible) {
    setState(() { _dialVisible = false;});
     
    }
    if (controller.offset <= controller.position.minScrollExtent &&
        !controller.position.outOfRange) {
    setState(() { _dialVisible = true;});
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: buildDrawer(context),
        appBar: AppBar(
          title: Text('$_title'),
          bottom: new TabBar(
              onTap: (int index) {
                setState(() {
                  _title = _tapsName[index];
                });
              },
              tabs: [
                new Tab(text: 'Home'),
                new Tab(text: 'My Orders'),
                new Tab(text: 'My Travels'),
              ]),
        ),
        body: TabBarView(
          children: <Widget>[
            HomeActivities(),
            MyOrders(),
            Center(
              child: Text('Tab 2'),
            ),
          ],
        ),
        floatingActionButton: buildSpeedDial(),
      ),
    );
  }

  Drawer buildDrawer(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            padding: EdgeInsets.all(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 30,
                  foregroundColor: Colors.white,
                  child: Image.asset('assets/images/man.png'),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Ayman Mubarak Ahmed',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 8,
                ),
                Text('24996756562', style: TextStyle(color: Colors.white)),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Messages'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text('Support'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          Center(
            child: Text('Version 1.0.0'),
          )
        ],
      ),
    );
  }

  SpeedDial buildSpeedDial() {
    return SpeedDial(
      // both default to 16
      marginRight: 18,
      marginBottom: 20,
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 22.0),
      // this is ignored if animatedIcon is non null
      // child: Icon(Icons.add),
      visible: _dialVisible,
      // If true user is forced to close dial manually
      // by tapping main button and overlay is not rendered.
      closeManually: false,
      curve: Curves.bounceIn,
      overlayColor: Colors.black,
      overlayOpacity: 0.5,
      onOpen: () => print('OPENING DIAL'),
      onClose: () => print('DIAL CLOSED'),
      tooltip: 'Speed Dial',
      heroTag: 'speed-dial-hero-tag',
      // backgroundColor: Colors.white,
      // foregroundColor: Colors.black,
      elevation: 8.0,
      shape: CircleBorder(),
      children: [
        SpeedDialChild(
            child: Icon(Icons.add),
            // backgroundColor: Colors.red,
            label: 'Add Order',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () => print('FIRST CHILD')),
        SpeedDialChild(
          child: Icon(Icons.brush),
          backgroundColor: Colors.blue,
          label: 'Add Travel',
          labelStyle: TextStyle(fontSize: 18.0),
          onTap: () => print('SECOND CHILD'),
        ),
      ],
    );
  }
}
