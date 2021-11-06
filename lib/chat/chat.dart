import 'package:flutter/material.dart';
import 'chatting.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 11,
          ),
          Image.asset('assets/chatpic.png',
            width: double.infinity,
          ),
          Image.asset('assets/chatpic.png',
            width: double.infinity,
          ),
          Image.asset('assets/chatpic.png',
            width: double.infinity,
          ),
          const SizedBox(
            height: 11,
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
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(11),
            child: Container(
              height: 175,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(11),
                border: Border.all(
                  color: Colors.grey.shade400,
                  width: 1,
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.help,
                      color: Theme.of(context).primaryColor,
                      size: 50,
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    const Text('Having any problem with an Order?',style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),),
                    const SizedBox(
                      height: 11,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return const Chatting();
                        }),);
                      },
                      child: Container(
                        height: 33,
                        width: 111,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: const BorderRadius.all(Radius.circular(5),),
                        ),
                        child: const Center(
                          child: Text('Chat With Us',style: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                          ),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),);
  }
}
