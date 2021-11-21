import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class OrderFunctions {
  fetchOrder() {
    ScrollController _controller = ScrollController();

    var stream = FirebaseFirestore.instance
        .collection('live-orders')
        .where('rider-assigned', isEqualTo: false)
        .snapshots();

    return StreamBuilder(
        stream: stream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return const Center(
                child: Text('Waiting-1'),
              );
            default:
              if (snapshot.hasData) {
                if (snapshot.data!.docs.length == 0) {
                  return const Center(
                    child: Text('No Orders availabe'),
                  );
                } else {
                  return ListView.builder(
                      controller: _controller,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: ScrollPhysics(),
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (BuildContext context, int index) {
                        return const Center(
                          child: Text('Order'),
                        );
                      });
                }
              } else {
                return const Center(
                  child: Text('No-data'),
                );
              }
          }
        });
  }
}
