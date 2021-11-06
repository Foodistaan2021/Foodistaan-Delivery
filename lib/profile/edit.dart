import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  const Edit({Key? key}) : super(key: key);

  @override
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {

  final _formKey = GlobalKey<FormState>();

  final controler1 = TextEditingController() ;
  final controler2 = TextEditingController() ;
  final controler3 = TextEditingController() ;
  final controler4 = TextEditingController() ;
  final controler5 = TextEditingController() ;

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
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 33,
                              child: Image(image: AssetImage('assets/profilepic.png'),),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Change Profile Picture',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 11,
                          ),
                          const Text('Personal Details',style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
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
                                label: const Text('Full Name'),
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
                            padding: const EdgeInsets.all(5),
                            child: TextFormField(
                              controller: controler2,
                              textAlign: TextAlign.left,
                              keyboardType: TextInputType.number,
                              cursorColor: Theme.of(context).primaryColor,
                              validator: (age) {
                                if (age!.isEmpty) {
                                  return 'Please enter Your Age!';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                label: const Text('Your Age'),
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
                            padding: const EdgeInsets.all(5),
                            child: TextFormField(
                              controller: controler3,
                              maxLines: 3,
                              textAlign: TextAlign.left,
                              keyboardType: TextInputType.text,
                              cursorColor: Theme.of(context).primaryColor,
                              validator: (bio) {
                                if (bio!.isEmpty) {
                                  return 'Please enter Your Bio!';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                label: const Text('Bio'),
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
                            padding: const EdgeInsets.all(5),
                            child: TextFormField(
                              controller: controler5,
                              textAlign: TextAlign.left,
                              keyboardType: TextInputType.text,
                              cursorColor: Theme.of(context).primaryColor,
                              validator: (blood) {
                                if (blood!.isEmpty) {
                                  return 'Please enter Your Blood Group!';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                label: const Text('Blood Group'),
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
                            padding: const EdgeInsets.all(5),
                            child: TextFormField(
                              controller: controler4,
                              textAlign: TextAlign.left,
                              maxLength: 10,
                              keyboardType: TextInputType.number,
                              cursorColor: Theme.of(context).primaryColor,
                              validator: (number) {
                                if (number!.isEmpty) {
                                  return 'Please enter Your Number!';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                label: const Text('Phone Number'),
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
                            height: 25,
                          ),
                          GestureDetector(
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.of(context).pop();
                              }
                            },
                            child: Container(
                              color: Colors.blue,
                              height: 33,
                              width: 125,
                              child: const Center(
                                child: Text('Save Changes',style: TextStyle(
                                  color: Colors.white,
                                ),),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
