
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class FirebaseServices{
  User? user = FirebaseAuth.instance.currentUser;
  //firebase_storage.FirebaseStorage storage= firebase_storage.FirebaseStorage.instance;
  FirebaseFirestore firestore= FirebaseFirestore.instance;
  CollectionReference users=FirebaseFirestore.instance.collection('users');

}