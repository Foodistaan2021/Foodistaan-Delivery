import 'package:flutter/material.dart';

class Money extends StatelessWidget {
  const Money({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text('Money Manager',style: TextStyle(
            color: Colors.black,
          ),),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 285,
              color: Colors.white,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(11),
                    child: Image.asset('assets/moneypic.png',
                      width: double.infinity,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text('Total Tip',style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.5,
                            ),),
                            SizedBox(
                              height: 5,
                            ),
                            Text('₹ 4855',style: TextStyle(
                              color: Color.fromRGBO(240, 66, 223, 1),
                              fontSize: 20,
                            ),),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text('This Month',style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.5,
                            ),),
                            SizedBox(
                              height: 5,
                            ),
                            Text('₹ 1500',style: TextStyle(
                              color: Color.fromRGBO(240, 66, 223, 1),
                              fontSize: 20,
                            ),),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text('Today',style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.5,
                            ),),
                            SizedBox(
                              height: 5,
                            ),
                            Text('₹ 120',style: TextStyle(
                              color: Color.fromRGBO(240, 66, 223, 1),
                              fontSize: 20,
                            ),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              color: const Color.fromRGBO(240, 66, 223, 1),
              width: double.infinity,
              height: 44,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('     All Transactions',style: TextStyle(
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
            Image.asset('assets/moneypage.png',
              width: double.infinity,
            ),
            Image.asset('assets/moneypage.png',
              width: double.infinity,
            ),
            Image.asset('assets/moneypage.png',
              width: double.infinity,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Icon(Icons.add_circle,
                  size: 22,
                  color: Color.fromRGBO(240, 66, 223, 1),
                ),
                SizedBox(
                  width: 5,
                ),
                Text('See More',style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                ),),
                SizedBox(
                  width: 11,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
