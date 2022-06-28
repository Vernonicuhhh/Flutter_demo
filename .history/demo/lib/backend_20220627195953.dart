import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';

//Future<bool> add(String id, int amount) async {
Future<bool> addCoin(String id, String amount) async {
  try {
    DocumentReference documentReference =
        FirebaseFirestore.instance.collection('phrases').doc(id);
    FirebaseFirestore.instance.runTransaction((transaction) async {
      DocumentSnapshot snapshot = await transaction.get(documentReference);
      if (!snapshot.exists) {
        documentReference.set({"Shots Attempted": amount});
        return true;
      }
      documentReference.set({"Shots Attempted": amount});
      transaction.update(documentReference, {'Amount': amount});
      return true;
    });
  } catch (e) {
    return false;
  }
}

Future<bool> addCoin(String id, String amount) async {
  try {
    String uid = FirebaseAuth.instance.currentUser.uid;
    var value = double.parse(amount);
    DocumentReference documentReference = FirebaseFirestore.instance
        .collection('Users')
        .doc(uid)
        .collection('Coins')
        .doc(id);
    FirebaseFirestore.instance.runTransaction((transaction) async {
      DocumentSnapshot snapshot = await transaction.get(documentReference);
      if (!snapshot.exists) {
        documentReference.set({'Amount': value});
        return true;
      }
      double newAmount = snapshot.data()['Amount'] + value;
      transaction.update(documentReference, {'Amount': newAmount});
      return true;
    });
    return true;
  } catch (e) {
    return false;
  }
}
