import 'package:flutter/material.dart';
import 'earnings.dart';
import 'ratings.dart';
import 'money.dart';
import 'deliveries.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              SizedBox(
                height: 5,
              ),
              Icon(
                Icons.location_on_outlined,
                color: Colors.black,
              ),
              Text('Location',style: TextStyle(
                color: Colors.black,
              ),),
            ],
          ),
          centerTitle: true,
          title: Image.asset('assets/homelogo.png',height: 45,),
        ),
      backgroundColor: Colors.grey.shade100,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 5,
          ),
          GestureDetector(
            onTap: () {},
            child: Image.asset('assets/homepageimage.png',
              width: double.infinity,
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            width: double.infinity,
            height: 44,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('     My Dashboard',style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.5,
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),
          ),
          const SizedBox(
            height: 7.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return const Earnings();
                    }),);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(7),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 11,
                          ),
                          Stack(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 45,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(255, 207, 186, 1),
                                      borderRadius: BorderRadius.circular(11),
                                    ),
                                    child: const Center(
                                      child: Icon(Icons.account_balance_wallet,
                                        size: 35,
                                        color: Color.fromRGBO(255, 111, 49, 1),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 11,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    width: 11,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('My Earnings',style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontSize: 15,
                                      ),),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      Text('5,000',style: TextStyle(
                                        color: Colors.grey.shade900,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 11,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 11,
                            ),
                            child: Container(
                              height: 22,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(206, 255, 211, 1),
                                borderRadius: BorderRadius.circular(11),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.trending_up,
                                      color: Colors.green,
                                      size: 17.5,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text('Rise in Earnings',style: TextStyle(
                                      color: Colors.grey.shade800,
                                      fontSize: 11,
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(
                                width: 11,
                              ),
                              Icon(Icons.add_circle,
                                size: 15,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Tap for More',style: TextStyle(
                                color: Colors.grey,
                                fontSize: 11,
                              ),),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return const Ratings();
                    }),);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(7),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 11,
                          ),
                          Stack(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 45,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(255, 248, 186, 1),
                                      borderRadius: BorderRadius.circular(11),
                                    ),
                                    child: const Center(
                                      child: Icon(Icons.star,
                                        size: 35,
                                        color: Color.fromRGBO(255, 203, 71, 1),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 11,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    width: 11,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('My Ratings',style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontSize: 15,
                                      ),),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      Text('4 Stars',style: TextStyle(
                                        color: Colors.grey.shade900,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 11,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 11,
                            ),
                            child: Container(
                              height: 22,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(206, 255, 211, 1),
                                borderRadius: BorderRadius.circular(11),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.trending_up,
                                      color: Colors.green,
                                      size: 17.5,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text('Rise in Ratings',style: TextStyle(
                                      color: Colors.grey.shade800,
                                      fontSize: 11,
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(
                                width: 11,
                              ),
                              Icon(Icons.add_circle,
                                size: 15,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Tap for More',style: TextStyle(
                                color: Colors.grey,
                                fontSize: 11,
                              ),),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return const Delivery();
                    }),);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(7),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 11,
                          ),
                          Stack(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 45,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(220, 186, 255, 1),
                                      borderRadius: BorderRadius.circular(11),
                                    ),
                                    child: const Center(
                                      child: Icon(Icons.two_wheeler,
                                        size: 35,
                                        color: Color.fromRGBO(151, 71, 255, 1),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 11,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    width: 11,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Total Delivery',style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontSize: 15,
                                      ),),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      Text('100',style: TextStyle(
                                        color: Colors.grey.shade900,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 11,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 11,
                            ),
                            child: Container(
                              height: 22,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 206, 206, 1),
                                borderRadius: BorderRadius.circular(11),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.trending_down,
                                      color: Colors.red,
                                      size: 17.5,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text('Dip in Deliveries',style: TextStyle(
                                      color: Colors.grey.shade800,
                                      fontSize: 11,
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(
                                width: 11,
                              ),
                              Icon(Icons.add_circle,
                                size: 15,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Tap for More',style: TextStyle(
                                color: Colors.grey,
                                fontSize: 11,
                              ),),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return const Money();
                    }),);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(7),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 11,
                          ),
                          Stack(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 45,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(255, 186, 248, 1),
                                      borderRadius: BorderRadius.circular(11),
                                    ),
                                    child: const Center(
                                      child: Icon(Icons.local_atm,
                                        size: 35,
                                        color: Color.fromRGBO(240, 66, 223, 1),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 11,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    width: 11,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Tip Money',style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontSize: 15,
                                      ),),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      Text('5,000',style: TextStyle(
                                        color: Colors.grey.shade900,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 11,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 11,
                            ),
                            child: Container(
                              height: 22,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 206, 206, 1),
                                borderRadius: BorderRadius.circular(11),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.trending_down,
                                      color: Colors.red,
                                      size: 17.5,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text('Dip in Earnings',style: TextStyle(
                                      color: Colors.grey.shade800,
                                      fontSize: 11,
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(
                                width: 11,
                              ),
                              Icon(Icons.add_circle,
                                size: 15,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Tap for More',style: TextStyle(
                                color: Colors.grey,
                                fontSize: 11,
                              ),),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),);
  }
}
