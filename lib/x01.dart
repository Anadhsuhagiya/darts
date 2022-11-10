import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:darts/x01_Match.dart';
import 'package:flutter/material.dart';

class x01 extends StatefulWidget {
  const x01({Key? key}) : super(key: key);

  @override
  State<x01> createState() => _x01State();
}

class _x01State extends State<x01> {
  TextEditingController first = TextEditingController();
  TextEditingController Second = TextEditingController();
  TextEditingController goal = TextEditingController();
  TextEditingController Custom = TextEditingController();

  bool firsterror = false;
  bool Seconderror = false;
  bool goalerror = false;
  bool Customerror = false;

  String goals = "1";

  String Game = "501";
  String Mode = "BEST OF";
  String set_leg = "LEGS";
  String In = "STRAIT IN";
  String Out = "DOUBLE OUT";
  String custom = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff000742),
        centerTitle: true,
        title: Text(
          "X01",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 19),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              onChanged: (value) {
                print(value);
                if (firsterror) {
                  if (value.isNotEmpty) {
                    setState(() {
                      firsterror = false;
                    });
                  }
                }
              },
              controller: first,
              maxLength: 15,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  counter: Offstage(),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Color(0xff000742), width: 3)),
                  border: OutlineInputBorder(),
                  hintText: "Enter First Player Name",
                  labelText: "First Player",
                  labelStyle: TextStyle(color: Color(0xff000742)),
                  errorText: firsterror ? "Please Enter Valid Name" : null,
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color(0xff000742),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              onChanged: (value) {
                print(value);
                if (Seconderror) {
                  if (value.isNotEmpty) {
                    setState(() {
                      Seconderror = false;
                    });
                  }
                }
              },
              controller: Second,
              keyboardType: TextInputType.text,
              maxLength: 15,
              decoration: InputDecoration(
                  counter: Offstage(),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Color(0xff000742), width: 3)),
                  border: OutlineInputBorder(),
                  hintText: "Enter Second Player Name",
                  labelText: "Second Player",
                  labelStyle: TextStyle(color: Color(0xff000742)),
                  errorText: Seconderror ? "Please Enter Valid Name" : null,
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color(0xff000742),
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 15),
            alignment: Alignment.center,
            child: Text(
              "Game Settings",
              style: TextStyle(
                  color: Color(0xff000742),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          CustomRadioButton(
            elevation: 5,
            height: 30,
            width: 85,
            defaultSelected: '501',
            selectedBorderColor: Color(0xff000742),
            unSelectedBorderColor: Color(0xff000742),
            margin: EdgeInsets.only(left: 10),
            absoluteZeroSpacing: true,
            unSelectedColor: Colors.white,
            buttonLables: [
              '301',
              '501',
              '701',
              'Custom',
            ],
            buttonValues: [
              '301',
              '501',
              '701',
              'Custom',
            ],
            buttonTextStyle: ButtonTextStyle(
                selectedColor: Colors.white,
                unSelectedColor: Colors.black,
                textStyle: TextStyle(fontSize: 13)),
            radioButtonValue: (value) {
              print(value);
              Game = value;
              if(Game == 'Custom')
                {
                  showDialog(context: context, builder: (context) {
                    return SimpleDialog(
                      title: Text("Start Score",style: TextStyle(color: Color(0xff000742),fontWeight: FontWeight.bold,fontSize: 20),),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            onChanged: (value) {
                              print(value);
                              if (Customerror) {
                                if (value.isNotEmpty) {
                                  setState(() {
                                    Customerror = false;
                                  });
                                }
                              }
                            },
                            controller: Custom,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(
                                        color: Color(0xff000742), width: 3)),
                                border: OutlineInputBorder(),
                                hintText: "Enter Custom Score",
                                labelText: "Custom Scroe",
                                labelStyle: TextStyle(
                                    color: Color(0xff000742)),
                                errorText: Customerror
                                    ? "Please Enter Valid Name"
                                    : null,
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Color(0xff000742),
                                )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                            custom = Custom.text;
                            setState(() {

                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 50,
                            margin: EdgeInsets.only(left: 20,right: 20),
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
                                    borderRadius: BorderRadius.circular(20))),
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    );
                  },);
                }
              setState(() {

              });
            },
            selectedColor: Color(0xff000742),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 15),
                child: CustomRadioButton(
                  elevation: 5,
                  height: 30,
                  width: 83,
                  defaultSelected: 'BEST OF',
                  selectedBorderColor: Color(0xff000742),
                  unSelectedBorderColor: Color(0xff000742),
                  margin: EdgeInsets.only(left: 10),
                  absoluteZeroSpacing: true,
                  unSelectedColor: Colors.white,
                  buttonLables: [
                    'BEST OF',
                    'FIRST TO',
                  ],
                  buttonValues: [
                    'BEST OF',
                    'FIRST TO',
                  ],
                  buttonTextStyle: ButtonTextStyle(
                      selectedColor: Colors.white,
                      unSelectedColor: Colors.black,
                      textStyle: TextStyle(fontSize: 13)),
                  radioButtonValue: (value) {
                    print(value);
                    Mode = value;
                    setState(() {

                    });
                  },
                  selectedColor: Color(0xff000742),
                ),
              ),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        alignment: Alignment.center,
                        title: Text(
                          "Match",
                          style: TextStyle(
                              color: Color(0xff000742),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextField(
                              onChanged: (value) {
                                print(value);
                                if (goalerror) {
                                  if (value.isNotEmpty) {
                                    setState(() {
                                      goalerror = false;
                                    });
                                  }
                                }
                              },
                              controller: goal,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(
                                          color: Color(0xff000742), width: 3)),
                                  border: OutlineInputBorder(),
                                  hintText: "Enter Goal",
                                  labelText: "Goal",
                                  labelStyle: TextStyle(
                                      color: Color(0xff000742)),
                                  errorText: goalerror
                                      ? "Please Enter Valid Name"
                                      : null,
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Color(0xff000742),
                                  )),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                              goals = goal.text;
                              setState(() {

                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 40,
                              width: 50,
                              margin: EdgeInsets.only(left: 20,right: 20),
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
                                      borderRadius: BorderRadius.circular(20))),
                              child: Text(
                                "Submit",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      );
                    },
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(left: 9, top: 15),
                  height: 25,
                  width: 25,
                  alignment: Alignment.center,
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
                          borderRadius: BorderRadius.circular(20))),
                  child: Text(
                    "$goals",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: CustomRadioButton(
                  elevation: 5,
                  height: 30,
                  width: 70,
                  defaultSelected: 'LEGS',
                  selectedBorderColor: Color(0xff000742),
                  unSelectedBorderColor: Color(0xff000742),
                  margin: EdgeInsets.only(left: 10),
                  absoluteZeroSpacing: true,
                  unSelectedColor: Colors.white,
                  buttonLables: [
                    'SETS',
                    'LEGS',
                  ],
                  buttonValues: [
                    'SETS',
                    'LEGS',
                  ],
                  buttonTextStyle: ButtonTextStyle(
                      selectedColor: Colors.white,
                      unSelectedColor: Colors.black,
                      textStyle: TextStyle(fontSize: 13)),
                  radioButtonValue: (value) {
                    print(value);
                    set_leg = value;
                    setState(() {

                    });
                  },
                  selectedColor: Color(0xff000742),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: CustomRadioButton(
              elevation: 5,
              height: 30,
              width: 115,
              defaultSelected: 'STRAIT IN',
              selectedBorderColor: Color(0xff000742),
              unSelectedBorderColor: Color(0xff000742),
              margin: EdgeInsets.only(left: 13),
              absoluteZeroSpacing: true,
              unSelectedColor: Colors.white,
              buttonLables: [
                'STRAIT IN',
                'DOUBLE IN',
                'MASTER IN',
              ],
              buttonValues: [
                'STRAIT IN',
                'DOUBLE IN',
                'MASTER IN',
              ],
              buttonTextStyle: ButtonTextStyle(
                  selectedColor: Colors.white,
                  unSelectedColor: Colors.black,
                  textStyle: TextStyle(fontSize: 13)),
              radioButtonValue: (value) {
                print(value);
                In = value;
                setState(() {

                });
              },
              selectedColor: Color(0xff000742),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: CustomRadioButton(
              elevation: 5,
              height: 30,
              width: 115,
              defaultSelected: 'DOUBLE OUT',
              selectedBorderColor: Color(0xff000742),
              unSelectedBorderColor: Color(0xff000742),
              margin: EdgeInsets.only(left: 13),
              absoluteZeroSpacing: true,
              unSelectedColor: Colors.white,
              buttonLables: [
                'DOUBLE OUT',
                'MASTER OUT',
                'STRAIT OUT',
              ],
              buttonValues: [
                'DOUBLE OUT',
                'MASTER OUT',
                'STRAIT OUT',
              ],
              buttonTextStyle: ButtonTextStyle(
                  selectedColor: Colors.white,
                  unSelectedColor: Colors.black,
                  textStyle: TextStyle(fontSize: 13)),
              radioButtonValue: (value) {
                print(value);
                Out = value;
                setState(() {

                });
              },
              selectedColor: Color(0xff000742),
            ),
          ),

          InkWell(

            onTap: () {
              String First_plr = first.text;
              String Second_plr = Second.text;

              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                return x01_Match(First_plr,Second_plr,Game, Mode, set_leg, In, Out, goals, custom);
              },));
            },

            child: Container(
              margin: EdgeInsets.only(left: 15,right: 15,top: 50),
              height: 50,
              width: 120,
              alignment: Alignment.center,
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
              child: Text(
                "Start Game",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal, fontSize: 25,letterSpacing: 2),
              ),
            ),
          )
        ],
      ),
    );
  }
}
