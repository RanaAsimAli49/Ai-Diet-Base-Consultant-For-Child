import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  final postController=TextEditingController();
  bool loading=false;
  final databaseRef=FirebaseDatabase.instance.ref("Mesage");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Post Data"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            TextField(
              controller:postController ,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Enter your Child Name",
                  prefixIcon: Icon(Icons.person_add_alt,color: Colors.lightBlue.shade500),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide:
                      BorderSide(color: Colors.lightBlue.shade300, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(width: 2, color: Colors.lightBlue.shade100))),
            ),
            SizedBox(
              height: 30,),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    loading=true;
                  });
              databaseRef.child(DateTime.now().microsecondsSinceEpoch.toString()).set({
                "title" :postController.text.toString(),
                "id":DateTime.now().microsecondsSinceEpoch.toString()
              }).then((value){
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Toaste Added"), backgroundColor: Colors.red,));
                setState(() {
                  loading=false;
                });
              }).onError((error, stackTrace){
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Toaste Added"), backgroundColor: Colors.red,));
                setState(() {
                  loading=false;
                });
              });
            }, child: Text("Add Data"))
          ],
        ),
      ),
    );
  }
}
