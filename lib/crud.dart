import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:healthcare/response.dart';
//import '../models/response.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _Collection = _firestore.collection('Appointment');

class FirebaseCrud {
//CRUD method here
//create
  static Future<Response> addEmployee({
    required String name,
    required String position,
    required String contactno, required String docId,
  }) async {

    Response response = Response();


    //read

    return response;
    }

    static Stream<QuerySnapshot> readEmployee() {
      CollectionReference notesItemCollection =
          _Collection;

      return notesItemCollection.snapshots();
    }
    //update
    static Stream<QuerySnapshot> editEmployee() {
      CollectionReference notesItemCollection =
          _Collection;

      return notesItemCollection.snapshots();
    }

    //delete
  static Future<Response> deleteEmployee({
    required String docId,
  }) async {
    Response response = Response();
    DocumentReference documentReferencer =
    _Collection.doc(docId);

    await documentReferencer
        .delete()
        .whenComplete((){
      response.code = 200;
      response.message = "Sucessfully Deleted Employee";
    })
        .catchError((e) {
      response.code = 500;
      response.message = e;
    });

    return response;
  }

  static updateEmployee({required String name, required String position, required String contactno, required String docId}) {}
}