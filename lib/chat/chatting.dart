import 'package:flutter/material.dart';

class Chatting extends StatefulWidget {
  const Chatting({Key? key}) : super(key: key);

  @override
  _ChattingState createState() => _ChattingState();
}

class _ChattingState extends State<Chatting> {

  final _formKey = GlobalKey<FormState>();

  final controler1 = TextEditingController() ;

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
        body: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      left: 11,
                      right: 50,
                      bottom: 11,
                    ),
                    child: TextFormField(
                      cursorColor: Theme.of(context).primaryColor,
                      controller: controler1,
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        labelText: 'Type your message here...',
                      ),
                      validator: (upi) {
                        if (upi!.isEmpty) {
                          return 'Please enter your Message!';
                        }
                        return null;
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                          }
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(
                            top: 15,
                          ),
                          child: Icon(
                            Icons.send,
                            color: Colors.blue,
                            size: 33,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
