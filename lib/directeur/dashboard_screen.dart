import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hotelio/admin/services/firebase_services.dart';
import 'package:hotelio/constants.dart';

class DashboardScreen extends StatelessWidget {
  
  static const String id="dashboard screen";
  final FirebaseServices _services= FirebaseServices();

  DashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {

    Widget analyticWidget({String? title,String? value}){
      return   Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            height: 100,
            width: 200,
            decoration:BoxDecoration(
              border: Border.all(color:Colors.blueGrey),
              borderRadius: BorderRadius.circular(10),
              color: kPrimaryColor
            ) ,
            child: Padding(
              padding:const EdgeInsets.all(18.0),
              child:  Column(
                crossAxisAlignment:CrossAxisAlignment.start ,
                children: [
                Text(title!,style:const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(value!),
                   const Icon(Icons.show_chart)
                  ],
                )
              ]),
            ) ,
          ),
        );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Wrap(
        spacing: 20,
        runSpacing: 20,
        children:[
           StreamBuilder<QuerySnapshot>(
      stream: _services.users.snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Loading");
        }
        if(snapshot.hasData){
          return analyticWidget(title: "Total Employees",value:snapshot.data!.size.toString()); 
        }
        return const SizedBox();
      },
    ),
      analyticWidget(title: "Total Employees",value:"0"),
      analyticWidget(title: "Total Reservations",value:"0"),
      analyticWidget(title: "Total Messages and Complaints",value:"0"),]
      )
      ],
    );
  }
}