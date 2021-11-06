import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

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
              const SizedBox(
                height: 11,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(
                    width: 11,
                  ),
                  Text('Payment History',style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),),
                ],
              ),
              const SizedBox(
                height: 11,
              ),
              Image.asset('assets/paymenthistory.png',
                width: double.infinity,
              ),
              Image.asset('assets/paymenthistory.png',
                width: double.infinity,
              ),
              Image.asset('assets/paymenthistory.png',
                width: double.infinity,
              ),
              Image.asset('assets/paymenthistory.png',
                width: double.infinity,
              ),
              Image.asset('assets/paymenthistory.png',
                width: double.infinity,
              ),
              Image.asset('assets/paymenthistory.png',
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
