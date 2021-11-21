import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodistaan_delivery/login/login.dart';
import 'home/home.dart';
import 'orders/orders.dart';
import 'profile/profile.dart';
import 'chat/chat.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    title: 'Foodistaan Delivery',
    theme: ThemeData(
      primaryColor: const Color.fromRGBO(247, 193, 43, 1),
    ),
    initialRoute: FirebaseAuth.instance.currentUser != null ? 'H' : 'L',
    routes: {
      'L': (context) => LoginScreen(),
      'H': (context) => Bottom(),
    },
  ));
}

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  final List<Widget> pages = const [
    Home(),
    Orders(),
    Profile(),
    Chat(),
  ];

  var pageindex = 0;

  void showpage(int index) {
    setState(() {
      pageindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.event_note_outlined,
              ),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.message_outlined,
              ),
              label: 'Chat',
            ),
          ],
          elevation: 0,
          iconSize: 25,
          onTap: showpage,
          currentIndex: pageindex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey.shade800,
          selectedItemColor: Theme.of(context).primaryColor,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
        ),
        body: pages[pageindex],
        backgroundColor: Colors.white,
      ),
    );
  }
}
