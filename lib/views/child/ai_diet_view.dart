import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AiDiet extends StatefulWidget {
  const AiDiet({super.key});

  @override
  State<AiDiet> createState() => _AiDietState();
}

class _AiDietState extends State<AiDiet> {
  var diseaseValue;
  List diseaselistItem = [
    "Stomach Flu (Gastroenteritis)",
    "Hand, Foot and Mouth Disease (HFMD)",
    "Febrile Seizures",
    "Chickenpox ​​ ​",
    "Eczema",
    "Asthma",
    "Allergic Rhinitis (Allergies)",
    "Constipation",
    "Bronchitis and Bronchiolitis",
    "Common Cold"
  ];

  final ageController = TextEditingController();
  final weightController = TextEditingController();
  final diseaseController = TextEditingController();
  String dietPlan = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF7165D6),
        title: const Text("AI Based Diet Consultant"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: ageController,
                keyboardType: TextInputType.number,
                style: TextStyle(color: Color(0xFF7165D6)),
                cursorColor: Color(0xFF7165D6),
                decoration: InputDecoration(
                    labelText: "Age (in months)",
                    labelStyle: TextStyle(color: Color(0xFF7165D6)),
                    focusColor: Color(0xFF7165D6),
                    prefixIcon: Icon(
                      Icons.person,
                      color:Color(0xFF7165D6),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                            color: Color(0xFF7165D6), width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                            width: 2, color:Color(0xFF7165D6)))),
              ),
              // TextField(
              //   controller: ageController,
              //   keyboardType: TextInputType.number,
              //   decoration: const InputDecoration(
              //     hintText: "Age (in months)",
              //     prefixIcon: Icon(Icons.numbers)
              //   ),
              // ),
              const SizedBox(
                height: 20,
              ),
              // TextField(
              //   controller: weightController,
              //   keyboardType: TextInputType.number,
              //   decoration: const InputDecoration(
              //     hintText: "Weight (in kg)",
              //     prefixIcon: Icon(Icons.height)
              //   ),
              // ),
              TextField(
                controller: weightController,
                keyboardType: TextInputType.number,
                style: TextStyle(color: Color(0xFF7165D6)),
                cursorColor: Color(0xFF7165D6),
                decoration: InputDecoration(
                    labelText: "Weight (in kg)",
                    labelStyle: TextStyle(color: Color(0xFF7165D6)),
                    prefixIcon: Icon(Icons.height,color: Color(0xFF7165D6)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                            color: Color(0xFF7165D6), width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                            width: 2, color:Color(0xFF7165D6)))),
              ),
              const SizedBox(
                height: 20,
              ),
              // TextField(
              //   controller: diseaseController,
              //   decoration: const InputDecoration(
              //     hintText: "Disease (optional)",
              //     prefixIcon: Icon(Icons.sick)
              //   ),
              // ),
              Container(
                padding: EdgeInsets.only(left: 9),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    border:
                        Border.all(width: 2, color: Color(0xFF7165D6))),
                child: DropdownButton(
                  dropdownColor: Colors.white,
                  iconSize: 36,
                  style: TextStyle(color: Color(0xFF7165D6), fontSize: 16),
                  underline: SizedBox(),
                  iconEnabledColor: Color(0xFF7165D6),
                  isExpanded: true,
                  hint: Text("Select Disease if have any?",style: TextStyle(color:Color(0xFF7165D6)),),
                  value: diseaseValue,
                  onChanged: (newValue) {
                    setState(() {
                      diseaseValue = newValue as String;
                    });
                  },
                  items: diseaselistItem.map((valueItem) {
                    return DropdownMenuItem(
                      value: valueItem,
                      child: Text(valueItem),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              // Container(
              //   color: Colors.blue,
              //   child: InkWell(
              //     onTap: (){
              //       aiDietGenerate();
              //     },
              //     child: const SizedBox(
              //         height: 50,
              //         width: 150,
              //         child: Icon(Icons.search, color: Colors.white,)),
              //   ),
              // ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  aiDietGenerate();
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 18),
                  decoration: BoxDecoration(
                      color: Color(0xFF7165D6),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Generate Diet Plane",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              if (dietPlan != "")
                SingleChildScrollView(
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF7165D6),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              dietPlan,
                              textAlign: TextAlign.justify,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                height: 1.8,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Save",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                IconButton(
                                    onPressed: () async {
                                      final SharedPreferences prefs =
                                          await SharedPreferences.getInstance();
                                      prefs.setString("aiDiet", dietPlan);
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                        content: Text(
                                          "Data saved into Record",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        backgroundColor: Color(0xFF7165D6),
                                      ));
                                    },
                                    icon: Icon(
                                      Icons.save,
                                      color: Colors.white,
                                    )),
                              ],
                            )
                          ],
                        ),
                      )),
                )
            ],
          ),
        ),
      ),
    );
  }

  void aiDietGenerate() {
    if (ageController.text.isEmpty || weightController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
          "Please enter all required data",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF7165D6),
      ));
      return;
    } else if (int.parse(ageController.text) <=1) {
        setState(() {
          dietPlan =
              "=> Breast milk every 2-3 hours and formula (2-3 ounces) every 3-4 hours.\n=> Whether it is breast milk or formula, continue to feed your baby on demand 8-12 feedings/day.";
        });
      } else if (int.parse(ageController.text) <=2) {
        setState(() {
          dietPlan =
              "Breast milk (8 to 12 feeds/day) every 2-3 hours or formula (7-8 feeds in a day) approximately 4 ounces.";
        });
      } else if (int.parse(ageController.text) <=4) {
        setState(() {
          dietPlan ="Breast milk (6-7 feeding in a day) every 3-4 hours or formula, around (6 feeding a day) about 4-6 ounces.";
        });
      } else if (int.parse(ageController.text) <=5) {
        setState(() {
          dietPlan ="=> Breast milk (around 7 feedings per day) every 3-4 hours or formula (6 to 7 feedings per day) around 4-8 ounces.\n=> You can start giving cereal too, if your pediatrican recommends.\n=> Usually, solid foods can be included anytime when the baby is 4-6 months old.\n=> In the early months, solids should be pureed. Include solid food one at a time and in small quantities, like 1 or 2 tablespoons, and gradually increase the amount.\n=> Parents may start with infant cereals and introduce pureed fruit, vegetables, and meat later.";
        });
      }else if (int.parse(ageController.text) <= 6) {
      setState(() {
        dietPlan ="=> Breast milk (around 7 feedings per day) every 3-4 hours or formula (6 to 7 feedings per day) around 4-8 ounces.\n=> You can start giving cereal too, if your pediatrican recommends.\n=> Usually, solid foods can be included anytime when the baby is 4-6 months old.\n=> In the early months, solids should be pureed. Include solid food one at a time and in small quantities, like 1 or 2 tablespoons, and gradually increase the amount.\n=> Parents may start with infant cereals and introduce pureed fruit, vegetables, and meat later.";
      });
    }
    }
  }
