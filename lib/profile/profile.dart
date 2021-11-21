import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodistaan_delivery/login/login.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'edit.dart';
import 'bank.dart';
import 'payment.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  DocumentSnapshot? riderData;
  bool hasData = true;
  String? id;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    id = FirebaseAuth.instance.currentUser!.email;
    FirebaseFirestore.instance.collection('riders').doc(id).get().then((value) {
      setState(() {
        riderData = value;
        hasData = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return hasData != false
        ? const Center(child: CircularProgressIndicator())
        : SafeArea(
            child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Image.asset(
                  'assets/homelogo.png',
                  height: 45,
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  color: Colors.grey.shade100,
                  width: double.infinity,
                  height: 277,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 55,
                          child: Image(
                            image: AssetImage('assets/profilepic.png'),
                          ),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        Text(
                          riderData!['name'],
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '${riderData!['rating']} Star Achiever',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return const Edit();
                      }),
                    );
                  },
                  child: SizedBox(
                    height: 33,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.edit,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Edit Profile',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return const Bank();
                      }),
                    );
                  },
                  child: SizedBox(
                    height: 33,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.home_work_outlined,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Bank Account Details',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return const Payment();
                      }),
                    );
                  },
                  child: SizedBox(
                    height: 33,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.credit_card,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Payment History',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                ),
                GestureDetector(
                  onTap: () async {
                    await FirebaseAuth.instance.signOut().whenComplete(() => {
                          Navigator.pushNamedAndRemoveUntil(
                              context, 'L', (Route<dynamic> route) => false)
                        });
                  },
                  child: SizedBox(
                    height: 33,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.logout,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Log Out',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ));
  }
}
