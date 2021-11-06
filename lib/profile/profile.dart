import 'package:flutter/material.dart';
import 'edit.dart';
import 'bank.dart';
import 'payment.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 5,
          ),
          Image.asset('assets/homelogo.png',height: 45,),
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
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 55,
                    child: Image(image: AssetImage('assets/profilepic.png'),),
                  ),
                  SizedBox(
                    height:11,
                  ),
                  Text('Sushil Kumar',style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),),
                  SizedBox(
                    height: 5,
                  ),
                  Text('4 Star Achiever',style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return const Edit();
              }),);
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
                  Text('Edit Profile',style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),),
                ],
              ),
            ),
          ),
          const Divider(
            color: Colors.grey,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return const Bank();
              }),);
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
                  Text('Bank Account Details',style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),),
                ],
              ),
            ),
          ),
          const Divider(
            color: Colors.grey,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return const Payment();
              }),);
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
                  Text('Payment History',style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),),
                ],
              ),
            ),
          ),
          const Divider(
            color: Colors.grey,
          ),
        ],
      ),
    ));
  }
}
