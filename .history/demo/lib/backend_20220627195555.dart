import 'package:cloud_firestore/cloud_firestore.dart';

Future<bool> addShots(String id, int amount) async {
  try {
    DocumentReference documentReference =
        FirebaseFirestore.instance.collection('phrases').doc(id);
    FirebaseFirestore.instance.runTransaction((transaction) async {
      DocumentSnapshot snapshot = await transaction.get(documentReference);
    });
  } catch (e) {
    return false;
  }
}
