import 'package:flutter/material.dart';

class AiDietPlaneSuggest extends StatefulWidget {
  const AiDietPlaneSuggest({super.key});

  @override
  State<AiDietPlaneSuggest> createState() => _AiDietPlaneSuggestState();
}

class _AiDietPlaneSuggestState extends State<AiDietPlaneSuggest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/mother_child1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 250,
                height: 45,
                margin: EdgeInsets.only(top: 400),
                child: ElevatedButton(
                    child: Text('Suggest Diet Plan',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:MaterialStatePropertyAll(Colors.transparent),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red))))),
              ),
            ],
          ),
        ), /* add child content here */
      ),
    );
  }
}
