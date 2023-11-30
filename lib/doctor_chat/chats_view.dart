import 'package:flutter/material.dart';

class ChatsView extends StatefulWidget {
  const ChatsView({super.key});

  @override
  State<ChatsView> createState() => _ChatsViewState();
}

class _ChatsViewState extends State<ChatsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(70),
              child: AppBar(
                elevation: 0,
                title: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Messanger",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                ),
                actions: [
                  Padding(
                    padding: EdgeInsets.only(top: 12, right: 15),
                    child: Icon(Icons.search, size: 28),
                  ),
                  PopupMenuButton(
                    elevation: 10,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                          value: 1,
                          child: Text(
                            "New Group",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          )),
                      PopupMenuItem(
                          value: 2,
                          child: Text(
                            "New broadcast",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          )),
                      PopupMenuItem(
                          value: 3,
                          child: Text(
                            "Linked devices",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 17),
                          )),
                      const PopupMenuItem(
                          value: 4,
                          child: Text(
                            "Starred Message",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          )),
                      const PopupMenuItem(
                          value: 5,
                          child: Text(
                            "Setting",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ))
                    ],
                    iconSize: 20,
                  )
                ],
              ),
            ),
            body: BottomAlignedContent()
        );
  }
}

class BottomAlignedContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SingleChildScrollView(
        child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical:5,
                    horizontal: 15
                ),
                // child: Column(
                //   children: [
                //     // for(int i=1;i<11;i++)
                //     InkWell(
                //       onTap:(){},
                //       child: Container(
                //         margin: EdgeInsets.symmetric(vertical: 12),
                //         child: Row(
                //           children: [
                //             Container(
                //               padding: EdgeInsets.all(2),
                //               decoration: BoxDecoration(
                //                 borderRadius:BorderRadius.circular(40),
                //                 border:  Border.all(color: Colors.blue.shade500,width: 3),
                //               ),
                //               child: ClipRRect(
                //                 borderRadius: BorderRadius.circular(40),
                //                 child: Image.asset("assets/doctor.png",height: 45,width: 45,
                //                     fit: BoxFit.cover),
                //               ),
                //             ),
                //             // ClipRRect(
                //             //   borderRadius: BorderRadius.circular(40),
                //             //   child: Image.asset("assets/child.jpg",
                //             //   height: 65,
                //             //   width: 65),
                //             // )
                //             Padding(padding: EdgeInsets.only(left: 20),
                //               child: Column(
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   Text("Asim Ali",style:TextStyle(fontSize: 15,fontWeight:FontWeight.bold,color: Colors.black87),),
                //                   SizedBox(height: 8,),
                //                   Text("Hi! Asim Ali.",style:TextStyle(fontSize: 15,color: Colors.black87),)
                //                 ],
                //               ),
                //             ),
                //             Spacer(),
                //             Column(
                //               children: [
                //                 Text("12:15",style: TextStyle(fontSize: 15,color: Colors.blue.shade500),),
                //                 SizedBox(height: 6,),
                //                 Container(
                //                   alignment: Alignment.center,
                //                   width: 20,
                //                   height: 20,
                //                   decoration: BoxDecoration(
                //                       color: Colors.blue.shade500,
                //                       borderRadius:BorderRadius.circular(10)
                //                   ),
                //                   child: Text("1",
                //                       style: TextStyle(
                //                           color: Colors.white,
                //                           fontSize: 10
                //                       )),
                //                 ),
                //               ],
                //             ),
                //             Divider(height: 25,thickness: 1),
                //           ],
                //         ),
                //       ),
                //     )
                //   ],
                // ),
              ),

              Container(
                margin: EdgeInsets.only(top:485),
                height: 65,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 15
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.emoji_emotions_outlined,
                            color: Colors.blue.shade300,
                            size: 30,),
                          SizedBox(width: 10,),
                          Container(
                            width: 150,
                            child: TextFormField(
                              style:  TextStyle(
                                  fontSize: 19
                              ),
                              decoration: InputDecoration(
                                  hintText: "Write Message",
                                  hintStyle: TextStyle(color: Colors.blue.shade500),
                                  border: InputBorder.none
                              ),
                            ),
                          ),
                          Icon(Icons.attachment_outlined,
                            color: Colors.blue.shade200,
                            size: 25,),
                          SizedBox(width: 15,),
                          Icon(Icons.camera_alt_outlined,
                            color: Colors.blue.shade200,
                            size: 25,),
                        ],
                      ),
                    ),
                    FloatingActionButton(
                      elevation: 0,
                      onPressed: (){
                      },
                      child:Icon(Icons.arrow_forward_sharp,
                        color: Colors.white,
                        size: 25,),)
                  ],
                ),
              )
            ]
        ),
      ),
    );
  }
}
