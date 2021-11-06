import 'package:flutter/material.dart';

class Ratings extends StatelessWidget {
  const Ratings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text('My Ratings',style: TextStyle(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        size: 44,
                        color: Theme.of(context).primaryColor,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.star,
                        size: 44,
                        color: Theme.of(context).primaryColor,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.star,
                        size: 44,
                        color: Theme.of(context).primaryColor,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.star,
                        size: 44,
                        color: Theme.of(context).primaryColor,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.star_half,
                        size: 44,
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text('4.5 Stars out of 5 Stars',style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.5,
                  ),),
                  const SizedBox(
                    height: 11,
                  ),
                  const Text('Excellent',style: TextStyle(
                    color: Colors.green,
                    fontSize: 17.5,
                    fontWeight: FontWeight.bold
                  ),),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              color: Theme.of(context).primaryColor,
              width: double.infinity,
              height: 44,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('     Ratings History',style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.5,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Image.asset('assets/ratingpage.png',
              width: double.infinity,
            ),
            Image.asset('assets/ratingpage.png',
              width: double.infinity,
            ),
            Image.asset('assets/ratingpage.png',
              width: double.infinity,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.add_circle,
                  size: 22,
                  color: Theme.of(context).primaryColor,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text('See More',style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                ),),
                const SizedBox(
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
