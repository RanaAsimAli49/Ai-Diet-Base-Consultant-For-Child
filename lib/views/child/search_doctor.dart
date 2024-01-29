import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

// final DatabaseReference _database =
// FirebaseDatabase.instance.ref('doctor');
// final FirebaseAuth _auth = FirebaseAuth.instance;
//
// String? uid;
class SearchDoctor extends StatelessWidget {
  final DatabaseReference _database =
  FirebaseDatabase.instance.ref('doctor');
  final FirebaseAuth _auth = FirebaseAuth.instance;

  String? myUid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Doctors'),
        backgroundColor: Color(0xFF7165D6),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder<List<Map<dynamic, dynamic>>>(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return Text('No data available');
            } else {
              // Build your UI using the retrieved data
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  String docUid = snapshot.data![index]['uid'].toString();
                  Map<dynamic, dynamic> doctorData = snapshot.data![index];

                  return DoctorCard(docuid: docUid,myUid: myUid!, data: doctorData, b: isUserInRequestDoc(docUid,myUid!),);
                },
              );
            }
          },
        ),
      ),
    );
  }

  Future<List<Map<dynamic, dynamic>>> fetchData() async {
    getFirebaseUID();
    DataSnapshot snapshot = (await _database.once()).snapshot;
    List<Map<dynamic, dynamic>>? data;

    if (snapshot.value != null) {
      if (snapshot.value is Map) {
        data = (snapshot.value as Map<dynamic, dynamic>)
            .entries
            .map((entry) {
          Map<dynamic, dynamic> doctorData = entry.value;
          doctorData['uid'] = entry.key; // Add UID to the data
          return doctorData;
        })
            .toList();
      }
    }

    return data ?? [];
  }



  Future<String?> getFirebaseUID() async {
    // Check if a user is signed in
    User? user = _auth.currentUser;
    if (user != null) {
      myUid=user.uid;
      print("uiduid");
      print(myUid);

      return user.uid;
    } else {
      // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Registration Faild please check your internet and try again"), backgroundColor: Colors.red,));
      // No user is signed in
      return null;
    }
  }


  Future<bool> isUserInRequestDoc(String doctorUid, String myId) async {
    DataSnapshot snapshot = (await _database.child(doctorUid).child('request_doc').once()).snapshot;
    bool isUserInRequestDoc = false;

    if (snapshot.value != null && snapshot.value is List) {
      List<dynamic> requestDocData = snapshot.value as List<dynamic>;

      // Check if the logged-in user's UID is present in the "request_doc" node
      isUserInRequestDoc = requestDocData.contains(myId);
    }
    bool b = await isUserInRequestDoc;
    print(b);

    return isUserInRequestDoc;
  }

}

class DoctorCard extends StatefulWidget {
  final String docuid;
  final String myUid;
  final Map<dynamic, dynamic> data;
  final Future<bool> b;

  const DoctorCard({required this.docuid,required this.myUid, required this.data,required this.b,super.key});

  @override
  State<DoctorCard> createState() => _DoctorCardState();
}

class _DoctorCardState extends State<DoctorCard> {
  late String uid;
  late String myuid;
  late Map<dynamic, dynamic> data;
  bool b = false;

  final DatabaseReference _databaseDoc =
  FirebaseDatabase.instance.ref('doctor');

  @override
  void initState() {
    uid = widget.docuid;
    myuid = widget.myUid;

    data = widget.data;
    bCheck();
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor:Color(0xFF7165D6) ,
          child: Text(data['name']?[0] ?? '',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),), // Add null check
        ),
        title: Text(data['name'] ?? '',style: TextStyle(fontWeight: FontWeight.bold),),
        subtitle: Text(data['specialization'] ?? ''),
        trailing: ElevatedButton(
            onPressed: () {
              // requestDoctorctor(data['request_doc'] ?? '');
              bookCheck(b);
              print('Book button pressed for UID: $uid');
            },
          style: ElevatedButton.styleFrom(
            primary:Color(0xFF7165D6), // Background color
            onPrimary: Colors.white, // Text Color (Foreground color)
          ),
            child: b?const Text('Cancel'):const Text('Book',style: TextStyle(color: Colors.white),),
      ),
    ));
  }

  void bCheck()async {
    b = await widget.b;
  }

  void bookCheck(bool b) {
    if(b){

    }else{
      String docUid = data['uid'].toString();
      print("thisss");

      String userId=FirebaseAuth.instance.currentUser!.uid;
      String pId="u9398313919039103";
      String mediId="${_databaseDoc.child(docUid).child('request_doc').push()}";
      print(myuid);print(myuid);print(myuid);print(myuid);print(myuid);print(myuid);print(myuid);
      _databaseDoc.child(docUid).child('request_doc').child(mediId).set(myuid);
      //childDB.child(child).child('request_doc').push().set(docUid);

    }
  }


}


