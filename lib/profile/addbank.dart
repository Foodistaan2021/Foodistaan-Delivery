import 'package:flutter/material.dart';

class Addbank extends StatefulWidget {
  const Addbank({Key? key}) : super(key: key);

  @override
  State<Addbank> createState() => _AddbankState();
}

class _AddbankState extends State<Addbank> {

  final _formKey = GlobalKey<FormState>();

  final controler1 = TextEditingController() ;
  final controler2 = TextEditingController() ;
  final controler3 = TextEditingController() ;
  final controler4 = TextEditingController() ;

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
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 11,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      width: 11,
                    ),
                    Text('Bank Account Details',style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(11),
                  child: TextFormField(
                    controller: controler1,
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.name,
                    cursorColor: Theme.of(context).primaryColor,
                    validator: (name) {
                      if (name!.isEmpty) {
                        return 'Please enter Your Name!';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      label: const Text('Enter Name'),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 1,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(11),
                  child: TextFormField(
                    controller: controler2,
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.number,
                    cursorColor: Theme.of(context).primaryColor,
                    validator: (account) {
                      if (account!.isEmpty) {
                        return 'Please enter Account Number!';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      label: const Text('Enter Account Number'),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 1,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(11),
                  child: TextFormField(
                    controller: controler3,
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.text,
                    cursorColor: Theme.of(context).primaryColor,
                    validator: (ifsc) {
                      if (ifsc!.isEmpty) {
                        return 'Please enter IFSC Code!';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      label: const Text('Enter IFSC Code'),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 1,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(11),
                  child: TextFormField(
                    controller: controler4,
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.name,
                    cursorColor: Theme.of(context).primaryColor,
                    validator: (bankname) {
                      if (bankname!.isEmpty) {
                        return 'Please enter Bank Name!';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      label: const Text('Enter Bank Name'),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 1,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                Padding(
                  padding: const EdgeInsets.all(11),
                  child: GestureDetector(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.of(context).pop();
                      }
                    },
                    child: Container(
                      height: 44,
                      width: double.infinity,
                      color: Colors.blue,
                      child: const Center(
                        child: Text('Save Bank Account Details',style: TextStyle(
                          color: Colors.white,
                        ),),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                const Center(
                  child: Text('Reset',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
