
import 'package:fluttertoast/fluttertoast.dart';
import 'package:darts/Model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

class x01_Match extends StatefulWidget {
  String first_plr;
  String second_plr;
  String game;
  String mode;
  String set_leg;
  String inner;
  String out;
  String goals;
  String custom;



  x01_Match(this.first_plr, this.second_plr, this.game, this.mode, this.set_leg,
      this.inner, this.out, this.goals, this.custom);

  @override
  State<x01_Match> createState() => _x01_MatchState();
}

class _x01_MatchState extends State<x01_Match> {

  bool focus = true;
  TextEditingController display = TextEditingController();

  @override
  Widget build(BuildContext context) {

    Model().getDimens(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff000742),
          centerTitle: true,
          title: Text(
            "${widget.mode} ${widget.goals} ${widget.set_leg}",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 19),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    height: 60,
                    width: 80,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                    padding: EdgeInsets.all(10),
                    decoration: ShapeDecoration(
                        color: Color(0xff00e0f5),
                        shadows: [
                          BoxShadow(
                              blurRadius: 7,
                              spreadRadius: 1,
                              offset: Offset(0, 3),
                              color: Colors.black.withOpacity(0.4))
                        ],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text("${widget.first_plr}",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        maxLines: 1,
                        softWrap: true),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 60,
                    width: 80,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                    padding: EdgeInsets.all(10),
                    decoration: ShapeDecoration(
                        color: Color(0xff00e0f5),
                        shadows: [
                          BoxShadow(
                              blurRadius: 7,
                              spreadRadius: 1,
                              offset: Offset(0, 3),
                              color: Colors.black.withOpacity(0.4))
                        ],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text("${widget.second_plr}",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        maxLines: 1,
                        softWrap: true),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    height: 35,
                    width: 80,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 10, right: 10, top: 5),
                    padding: EdgeInsets.all(10),
                    decoration: ShapeDecoration(
                        color: Color(0xff000338),
                        shadows: [
                          BoxShadow(
                              blurRadius: 7,
                              spreadRadius: 1,
                              offset: Offset(0, 3),
                              color: Colors.black.withOpacity(0.4))
                        ],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text("${widget.set_leg} : 0",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                        maxLines: 1,
                        softWrap: true),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 35,
                    width: 80,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 10, right: 10, top: 5),
                    padding: EdgeInsets.all(10),
                    decoration: ShapeDecoration(
                        color: Color(0xff000338),
                        shadows: [
                          BoxShadow(
                              blurRadius: 7,
                              spreadRadius: 1,
                              offset: Offset(0, 3),
                              color: Colors.black.withOpacity(0.4))
                        ],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text("${widget.set_leg} : 0",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                        maxLines: 1,
                        softWrap: true),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    height: 170,
                    width: 80,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                    padding: EdgeInsets.only(bottom: 5),
                    decoration: ShapeDecoration(
                        color: Color(0xff000742),
                        shadows: [
                          BoxShadow(
                              blurRadius: 7,
                              spreadRadius: 1,
                              offset: Offset(0, 3),
                              color: Colors.black.withOpacity(0.4))
                        ],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Column(
                      children: [
                        Text("501",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: Model.a_height*0.1,
                                fontWeight: FontWeight.bold),
                            maxLines: 1,
                            softWrap: true),
                        Text("Average : 0.0",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: Model.theight*0.013,
                                fontWeight: FontWeight.bold),
                            maxLines: 1,
                            softWrap: true),
                        Text("Darts Thrown : 0",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: Model.theight*0.013,
                                fontWeight: FontWeight.bold),
                            maxLines: 1,
                            softWrap: true),
                        Text("Last Score : 0",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: Model.theight*0.013,
                                fontWeight: FontWeight.bold),
                            maxLines: 1,
                            softWrap: true),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 170,
                    width: 80,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                    padding: EdgeInsets.only(bottom: 5),
                    decoration: ShapeDecoration(
                        color: Color(0xff000742),
                        shadows: [
                          BoxShadow(
                              blurRadius: 7,
                              spreadRadius: 1,
                              offset: Offset(0, 3),
                              color: Colors.black.withOpacity(0.4))
                        ],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Column(
                      children: [
                        Text("501",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: Model.a_height*0.1,
                                fontWeight: FontWeight.bold),
                            maxLines: 1,
                            softWrap: true),
                        Text("Average : 0.0",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: Model.theight*0.013,
                                fontWeight: FontWeight.bold),
                            maxLines: 1,
                            softWrap: true),
                        Text("Darts Thrown : 0",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: Model.theight*0.013,
                                fontWeight: FontWeight.bold),
                            maxLines: 1,
                            softWrap: true),
                        Text("Last Score : 0",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: Model.theight*0.013,
                                fontWeight: FontWeight.bold),
                            maxLines: 1,
                            softWrap: true),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Expanded(
                  child: Container(
                    height: Model.theight*0.065,
                    width: 30,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 10, top: 10),
                    padding: EdgeInsets.all(10),
                    decoration: ShapeDecoration(
                        color: Color(0xffab0000),
                        shadows: [
                          BoxShadow(
                              blurRadius: 7,
                              spreadRadius: 1,
                              offset: Offset(0, 3),
                              color: Colors.black.withOpacity(0.4))
                        ],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Icon(Icons.undo_outlined,color: Colors.white,),
                  ),
                ),

                Expanded(
                  flex: 2,
                  child: Container(
                    height: Model.theight*0.065,
                    width: Model.twidth*0.1,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                    decoration: ShapeDecoration(
                        color: Colors.white,
                        shadows: [
                          BoxShadow(
                              blurRadius: 7,
                              spreadRadius: 1,
                              offset: Offset(0, 3),
                              color: Colors.black.withOpacity(0.4))
                        ],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: TextField(
                      onTap: () {
                      },
                      controller: display,
                      style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),
                      keyboardType: TextInputType.number,
                      showCursor: true,
                      autofocus: true,
                      maxLength: 3,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counter: SizedBox.shrink(),
                        border: InputBorder.none,
                        hintText: "Score",
                        hintStyle: TextStyle(color: Colors.black26),
                      ),
                    )
                  ),
                ),

                Expanded(
                  child: InkWell(
                    onTap: () async {

                    },
                    child: Container(
                      height: Model.theight*0.065,
                      width: 30,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(right: 10, top: 10),
                      padding: EdgeInsets.all(10),
                      decoration: ShapeDecoration(
                          color: Color(0xff005911),
                          shadows: [
                            BoxShadow(
                                blurRadius: 7,
                                spreadRadius: 1,
                                offset: Offset(0, 3),
                                color: Colors.black.withOpacity(0.4))
                          ],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Icon(Icons.arrow_forward,color: Colors.white,),
                    ),
                  ),
                ),
              ],
            ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Expanded(
            //     child: InkWell(
            //       onTap: () {
            //         setState(() {
            //         });
            //       },
            //         child: Container(
            //           height: Model.theight*0.09,
            //           width: Model.twidth*0.3,
            //           alignment: Alignment.center,
            //           margin: EdgeInsets.only(left: 10, right: 5, top: 10),
            //           decoration: ShapeDecoration(
            //               color: Color(0xff000742),
            //               shadows: [
            //                 BoxShadow(
            //                     blurRadius: 7,
            //                     spreadRadius: 1,
            //                     offset: Offset(0, 3),
            //                     color: Colors.black.withOpacity(0.4))
            //               ],
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(10))),
            //           child: Text("1",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: Model.theight*0.06),),
            //         ),
            //       ),
            //     ),
            //     Expanded(
            //     child: InkWell(
            //       onTap: () {
            //         setState(() {
            //         });
            //       },
            //         child: Container(
            //           height: Model.theight*0.09,
            //           width: Model.twidth*0.3,
            //           alignment: Alignment.center,
            //           margin: EdgeInsets.only(left: 5, right: 5, top: 10),
            //           decoration: ShapeDecoration(
            //               color: Color(0xff000742),
            //               shadows: [
            //                 BoxShadow(
            //                     blurRadius: 7,
            //                     spreadRadius: 1,
            //                     offset: Offset(0, 3),
            //                     color: Colors.black.withOpacity(0.4))
            //               ],
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(10))),
            //           child: Text("2",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: Model.theight*0.06),),
            //         ),
            //       ),
            //     ),
            //     Expanded(
            //     child: InkWell(
            //       onTap: () {
            //         setState(() {
            //         });
            //       },
            //         child: Container(
            //           height: Model.theight*0.09,
            //           width: Model.twidth*0.3,
            //           alignment: Alignment.center,
            //           margin: EdgeInsets.only(left: 5, right: 10, top: 10),
            //           decoration: ShapeDecoration(
            //               color: Color(0xff000742),
            //               shadows: [
            //                 BoxShadow(
            //                     blurRadius: 7,
            //                     spreadRadius: 1,
            //                     offset: Offset(0, 3),
            //                     color: Colors.black.withOpacity(0.4))
            //               ],
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(10))),
            //           child: Text("3",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: Model.theight*0.06),),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            //
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Expanded(
            //     child: InkWell(
            //       onTap: () {
            //         setState(() {
            //         });
            //       },
            //         child: Container(
            //           height: Model.theight*0.09,
            //           width: Model.twidth*0.3,
            //           alignment: Alignment.center,
            //           margin: EdgeInsets.only(left: 10, right: 5, top: 10),
            //           decoration: ShapeDecoration(
            //               color: Color(0xff000742),
            //               shadows: [
            //                 BoxShadow(
            //                     blurRadius: 7,
            //                     spreadRadius: 1,
            //                     offset: Offset(0, 3),
            //                     color: Colors.black.withOpacity(0.4))
            //               ],
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(10))),
            //           child: Text("4",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: Model.theight*0.06),),
            //         ),
            //       ),
            //     ),
            //     Expanded(
            //     child: InkWell(
            //       onTap: () {
            //         setState(() {
            //         });
            //       },
            //         child: Container(
            //           height: Model.theight*0.09,
            //           width: Model.twidth*0.3,
            //           alignment: Alignment.center,
            //           margin: EdgeInsets.only(left: 5, right: 5, top: 10),
            //           decoration: ShapeDecoration(
            //               color: Color(0xff000742),
            //               shadows: [
            //                 BoxShadow(
            //                     blurRadius: 7,
            //                     spreadRadius: 1,
            //                     offset: Offset(0, 3),
            //                     color: Colors.black.withOpacity(0.4))
            //               ],
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(10))),
            //           child: Text("5",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: Model.theight*0.06),),
            //         ),
            //       ),
            //     ),
            //     Expanded(
            //     child: InkWell(
            //       onTap: () {
            //         setState(() {
            //         });
            //       },
            //         child: Container(
            //           height: Model.theight*0.09,
            //           width: Model.twidth*0.3,
            //           alignment: Alignment.center,
            //           margin: EdgeInsets.only(left: 5, right: 10, top: 10),
            //           decoration: ShapeDecoration(
            //               color: Color(0xff000742),
            //               shadows: [
            //                 BoxShadow(
            //                     blurRadius: 7,
            //                     spreadRadius: 1,
            //                     offset: Offset(0, 3),
            //                     color: Colors.black.withOpacity(0.4))
            //               ],
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(10))),
            //           child: Text("6",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: Model.theight*0.06),),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            //
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Expanded(
            //     child: InkWell(
            //       onTap: () {
            //         setState(() {
            //         });
            //       },
            //         child: Container(
            //           height: Model.theight*0.09,
            //           width: Model.twidth*0.3,
            //           alignment: Alignment.center,
            //           margin: EdgeInsets.only(left: 10, right: 5, top: 10),
            //           decoration: ShapeDecoration(
            //               color: Color(0xff000742),
            //               shadows: [
            //                 BoxShadow(
            //                     blurRadius: 7,
            //                     spreadRadius: 1,
            //                     offset: Offset(0, 3),
            //                     color: Colors.black.withOpacity(0.4))
            //               ],
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(10))),
            //           child: Text("7",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: Model.theight*0.06),),
            //         ),
            //       ),
            //     ),
            //     Expanded(
            //     child: InkWell(
            //       onTap: () {
            //         setState(() {
            //         });
            //       },
            //         child: Container(
            //           height: Model.theight*0.09,
            //           width: Model.twidth*0.3,
            //           alignment: Alignment.center,
            //           margin: EdgeInsets.only(left: 5, right: 5, top: 10),
            //           decoration: ShapeDecoration(
            //               color: Color(0xff000742),
            //               shadows: [
            //                 BoxShadow(
            //                     blurRadius: 7,
            //                     spreadRadius: 1,
            //                     offset: Offset(0, 3),
            //                     color: Colors.black.withOpacity(0.4))
            //               ],
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(10))),
            //           child: Text("8",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: Model.theight*0.06),),
            //         ),
            //       ),
            //     ),
            //     Expanded(
            //       child: InkWell(
            //       onTap: () {
            //         setState(() {
            //         });
            //       },
            //         child: Container(
            //           height: Model.theight*0.09,
            //           width: Model.twidth*0.3,
            //           alignment: Alignment.center,
            //           margin: EdgeInsets.only(left: 5, right: 10, top: 10),
            //           decoration: ShapeDecoration(
            //               color: Color(0xff000742),
            //               shadows: [
            //                 BoxShadow(
            //                     blurRadius: 7,
            //                     spreadRadius: 1,
            //                     offset: Offset(0, 3),
            //                     color: Colors.black.withOpacity(0.4))
            //               ],
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(10))),
            //           child: Text("9",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: Model.theight*0.06),),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            //
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Expanded(
            //         child: InkWell(
            //           onTap: () {
            //             setState(() {
            //             });
            //           },
            //           child: Container(
            //             height: Model.theight*0.09,
            //             width: Model.twidth*0.3,
            //             alignment: Alignment.center,
            //             margin: EdgeInsets.only(left: 10, right: 5, top: 10),
            //             decoration: ShapeDecoration(
            //                 color: Color(0xff005911),
            //                 shadows: [
            //                   BoxShadow(
            //                       blurRadius: 7,
            //                       spreadRadius: 1,
            //                       offset: Offset(0, 3),
            //                       color: Colors.black.withOpacity(0.4))
            //                 ],
            //                 shape: RoundedRectangleBorder(
            //                     borderRadius: BorderRadius.circular(10))),
            //             child: Text("Bust",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: Model.theight*0.03),),
            //           ),
            //         ),
            //       ),
            //     Expanded(
            //         child: InkWell(
            //           onTap: () {
            //             setState(() {
            //             });
            //           },
            //           child: Container(
            //             height: Model.theight*0.09,
            //             width: Model.twidth*0.3,
            //             alignment: Alignment.center,
            //             margin: EdgeInsets.only(left: 5, right: 5, top: 10),
            //             decoration: ShapeDecoration(
            //                 color: Color(0xff000742),
            //                 shadows: [
            //                   BoxShadow(
            //                       blurRadius: 7,
            //                       spreadRadius: 1,
            //                       offset: Offset(0, 3),
            //                       color: Colors.black.withOpacity(0.4))
            //                 ],
            //                 shape: RoundedRectangleBorder(
            //                     borderRadius: BorderRadius.circular(10))),
            //             child: Text("0",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: Model.theight*0.06),),
            //           ),
            //         ),
            //       ),
            //     Expanded(
            //         child: InkWell(
            //           onTap: () {
            //             setState(() {
            //             });
            //           },
            //           child: Container(
            //             height: Model.theight*0.09,
            //             width: Model.twidth*0.3,
            //             alignment: Alignment.center,
            //             margin: EdgeInsets.only(left: 5, right: 10, top: 10),
            //             decoration: ShapeDecoration(
            //                 color: Color(0xffab0000),
            //                 shadows: [
            //                   BoxShadow(
            //                       blurRadius: 7,
            //                       spreadRadius: 1,
            //                       offset: Offset(0, 3),
            //                       color: Colors.black.withOpacity(0.4))
            //                 ],
            //                 shape: RoundedRectangleBorder(
            //                     borderRadius: BorderRadius.circular(10))),
            //             child: Icon(Icons.backspace,color: Colors.white,),
            //           ),
            //         ),
            //       ),
            //   ],
            // ),
            //

          ],
        ),
      ),
    );
  }
}
