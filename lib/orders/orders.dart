import 'package:flutter/material.dart';
import 'orderdetails.dart';

class Orders extends StatelessWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            title: Image.asset('assets/homelogo.png',height: 45,),
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/ordermap.png',
                    width: double.infinity,
                  ),
                  Container(
                    color: Colors.green,
                    width: double.infinity,
                    height: 44,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('     Available Orders',style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.5,
                          fontWeight: FontWeight.bold,
                        ),),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return const Orderdetails();
                      }),);
                      },
                    child: Image.asset('assets/order.png',
                      width: double.infinity,
                    ),
                  ),
                  Image.asset('assets/order.png',
                    width: double.infinity,
                  ),
                  Image.asset('assets/order.png',
                    width: double.infinity,
                  ),
                  Image.asset('assets/order.png',
                    width: double.infinity,
                  ),
                  Image.asset('assets/order.png',
                    width: double.infinity,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),),
    ),);
  }
}
