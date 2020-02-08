
import 'package:cloud_firestore/cloud_firestore.dart';

class DbManager{

  final String uid;
  DbManager({this.uid});

  final CollectionReference collectionReference=Firestore.instance.collection("tProva");


  Future prova ()async
  {
    return await collectionReference.document(uid).setData({
      'provacolonna':"prova"
    });
  }

}