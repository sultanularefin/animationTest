


// Flutter code sample for AnimatedSwitcher

// This sample shows a counter that animates the scale of a text widget
// whenever the value changes.

import 'package:flutter/material.dart';
//import 'package:neumorphic/neumorphic.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';


class AnimatedPositionedTest extends StatefulWidget {
  AnimatedPositionedTest({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<AnimatedPositionedTest> {
  int _count = 0;



  Size displaySize(BuildContext context) {
//  debugPrint('Size = ' + MediaQuery.of(context).size.toString());
    return MediaQuery.of(context).size;
  }

  double displayHeight(BuildContext context) {
//  debugPrint('Height = ' + displaySize(context).height.toString());
    return displaySize(context).height;
  }

  double displayWidth(BuildContext context) {
//  debugPrint('Width = ' + displaySize(context).width.toString());
    return displaySize(context).width;
  }

  bool showMessage = false;

  @override
  Widget build(BuildContext context) {


    return Container(
      color: Colors.lightGreenAccent,
      child: Stack(
//        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Positioned(

            top:60,
            left: 150,
//            bottom:10,
//            right:10,
            child:Text('ASP'),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            top:showMessage ?220:60,
            left: 150,

//            right:10,
            child:Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  // smaller container containing all modal FoodItem Details things.
                  Container(
                    key: ValueKey<int>(_count),

                    alignment: Alignment.centerLeft,
                    height: displayHeight(context)/1.5,
                    //width:displayWidth(context) / 1.5, /* 3.8*/
                    width:displayWidth(context) -50,

                    margin:EdgeInsets.fromLTRB(18,20,20,18),

                    decoration:
                    new BoxDecoration(
                      borderRadius: new BorderRadius.circular(10.0),
                      color:Colors.purple,
                    ),


                    child:Neumorphic(
                      // State of Neumorphic (may be convex, flat & emboss)


                      boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.all(Radius.circular(15)),

                      ),
                      curve: Neumorphic.DEFAULT_CURVE,
                      style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        depth: 8,
                        lightSource: LightSource.topLeft,
                        color: Colors.yellow,
                      ),

//                    MAX_DEPTH,DEFAULT_CURVE

//
//                      BorderRadius.circular(25),
//                  border: Border.all(

                      child:Container(

                        width:displayWidth(context) -50,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(child:Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                // THIS ROW HAVE 2 PARTS -> 1ST PART HANDLES THE IMAGES, SOME HEADING TEXT(PRICE AND NAME)
                                // , 2ND PART(ROW) HANDLES THE
                                // DIFFERENT SIZES OF PRODUCTS. BEGINS HERE.


                                Container(
                                    height: displayHeight(context)/2.6,

                                    color: Colors.red,
                                    width: displayWidth(context) /5,
// INCREASE THE DIVIDER TO MAKE IT MORE SAMLLER. I.E. WIDTH
//                      height: displayHeight(context)*0.50,
//                                    alignment: Alignment.centerLeft,


                                    //ZZZ
                                    // Other arguments such as margin, padding etc. (Like `Container`)
                                    child:Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,

//        mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        //pppp
                                        Container(
                                          padding:EdgeInsets.fromLTRB(10,0,0,10),
                                          child:

                                          Text(
                                              '${'oneFood.itemName'}',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight
                                                    .bold,
//                                                      color: Colors.white
                                                color: Colors.black,

                                              )
                                          ),
                                        ),






                                      ],

                                    )
                                ),

                                // THIS ROW HAVE 2 PARTS -> 1ST PART (ROW) HANDLES THE IMAGES, SOME HEADING TEXT(PRICE AND NAME)
                                // , 2ND PART(ROW) HANDLES THE
                                // DIFFERENT SIZES OF PRODUCTS.
                                // ENDS HERE.


                                // 2ND ROW, FOR FOR OTHER ITEMS, WILL BE A COLUMN ARRAY, BEGINS HERE:

                                Container(
                                  height: displayHeight(context)/2.6,

                                  width:displayWidth(context) -130,


                                  child:Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,


//        mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        //pppp
                                        Container(
                                            child:_buildProductSizes(context,'foodSizePrice')
                                        ),

//                                  Text('ss'),
                                        Container(
                                            child:buildDefaultIngredients(context,'defaultIngredients')
                                        ),

                                        // MORE INGREDIENTS BEGINS HERE.
                                        Container(
                                            child:Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children:<Widget>[
                                                  Container(

                                                    margin:EdgeInsets.fromLTRB(4,0,displayHeight(context)/55,0),
                                                    //      color: Colors.yellowAccent,
                                                    height: displayHeight(context) / 20,
                                                    width: displayWidth(context) /2.3,

                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment
                                                          .start,
                                                      children: <Widget>[

                                                        // CONTAINER WHERE CUSTOM CLIPPER LINE FUNCTION NEED TO BE PUTTED.

                                                        // 2ND CONTAINER VIOLET IN THE ROW. STARTS HERE.

                                                        Container(
                                                            child: GestureDetector(

                                                              onTap: () {

                                                                setState(() {
                                                                  _count += 1;
                                                                  showMessage=!showMessage;
                                                                });
                                                                print('xyz');

                                                              },
                                                              child: Container(
//                                                  width:260,
                                                                width: displayWidth(context) /2.5,
                                                                height:45,
                                                                decoration: BoxDecoration(
//                                              color: Colors.black54,
                                                                  color: Color(
                                                                      0xffFFFFFF),
                                                                  borderRadius: BorderRadius
                                                                      .circular(25),
                                                                ),


//                                            color:Color(0xffC27FFF),
                                                                child: Row(
                                                                  mainAxisAlignment: MainAxisAlignment
                                                                      .start,
                                                                  crossAxisAlignment: CrossAxisAlignment
                                                                      .center,
                                                                  children: <Widget>[
                                                                    Icon(
                                                                      Icons.add,
                                                                      size: 20.0,
                                                                      color: Color
                                                                          .fromRGBO(112,
                                                                          112, 112, 1),
                                                                      //        color: Color(0xffFFFFFF),
                                                                    ),
                                                                    Text(
                                                                      'More Ingredients',
                                                                      style: TextStyle(
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          color: Color(0xffaabbcc),
                                                                          fontSize: 15),
                                                                    ),
                                                                  ],
                                                                ),

                                                              ),
                                                            )
                                                        )


                                                        // CONTAINER WHERE CUSTOM CLIPPER LINE FUNCTION NEED TO BE PUTTED.
                                                        // ENDED HERE.

                                                        // BLACK CONTAINER WILL BE DELETED LATER.
                                                        // BLACK CONTAINER.




                                                      ],
                                                    ),
                                                  ),
                                                ]
                                            )
                                        )

                                        // MORE INGREDIENTS ENDS HERE.


                                      ]
                                  ),
                                ),
                                // 2ND ROW, FOR FOR OTHER ITEMS, WILL BE A COLUMN ARRAY, ENDS HERE:

                              ],
                            ),
                            ),

                            Text(
                              '$_count',
                              // This key causes the AnimatedSwitcher to interpret this as a "new"
                              // child each time the count changes, so that it will begin its animation
                              // when the count changes.

                              style: Theme.of(context).textTheme.headline4,
                            ),
                            Container(child:Text("Unselected Ingredients are here")),


                          ],
                        ),
                      ),

                    ),
                  ),


                ],
              ),
            ),
          )


        ],
      ),
    );
  }

  Widget _buildProductSizes(BuildContext context, String allPrices) {



    if(allPrices==null){
      return Container
        (
        alignment: Alignment.center,
        child: CircularProgressIndicator(),
      );
    }
    else {
      return Container(
//        alignment: Alignment.topCenter,
//      width: 200,
        height: displayHeight(context) / 7,
//      height: 400,
        color: Colors.white,

        child: Column(
//        mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[

            Container(
                color: Color(0xffFFFFFF),
//                                  color:Color(0xffDAD7C3),
                width: displayWidth(context) /1.3,
                child: Column(children: <Widget>[
// 1st container outsource below:

                  // 1st CONTAINER OF THE COLUMN LAYOUT HOLDS VSM ORG VS TODO. BEGINS HERE
                  Container(


                    //      color: Colors.yellowAccent,
                    height: 40,
//                    width: displayWidth(context) /1.4,

                    // M VSM ORG VS TODO. BEGINS HERE.
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment
                          .end,
                      children: <Widget>[

                        // CONTAINER WHERE CUSTOM CLIPPER LINE FUNCTION NEED TO BE PUTTED.

                        /*

                        Container(
                          width:60,
                          alignment: Alignment.center,
                          margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: OutlineButton(
//                        color: Color(0xffFEE295),
                            clipBehavior: Clip.hardEdge,
                            splashColor: Color(0xffB47C00),
                            highlightElevation: 12,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Color(0xffB47C00),
                                style: BorderStyle.solid,
                                width: 1.6,
                              ),
                              borderRadius: BorderRadius.circular(35.0),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                'M'.toUpperCase(), style:
                              TextStyle(
                                  color: Color(0xffB47C00),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                              ),
                            ),
                            onPressed: () {
                              print('M pressed');
                            },
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          ),
                          ),
                        */


                        Container(
                          width:60,
                          alignment: Alignment.center,
                          margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: OutlineButton(
//                        color: Color(0xffFEE295),
                            splashColor: Color(0xff34720D),
                            highlightElevation: 12,
                            clipBehavior: Clip.hardEdge,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Color(0xff34720D),
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(35.0),
                            ),
                            child: Container(

                              alignment: Alignment.center,
                              child: Text(
                                'VSM'.toUpperCase(), style:
                              TextStyle(
                                  color: Color(0xff34720D),

                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                              ),
                            ),
                            onPressed: () {
                              print('VSM pressed');
                            },
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          ),)


                        ,



                        Container(
                          margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                          width:60,
                          alignment: Alignment.center,
                          child: OutlineButton(
//                        color: Color(0xffFEE295),
                            splashColor: Color(0xff95CB04),
                            highlightElevation: 12,
                            clipBehavior: Clip.hardEdge,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Color(0xff95CB04),
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(35.0),
                            ),
                            child: Container(

                              alignment: Alignment.center,
                              child: Text(
                                'VS'.toUpperCase(), style:
                              TextStyle(
                                  color: Color(0xff95CB04),

                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                              ),
                            ),
                            onPressed: () {
                              print('VS pressed');
                            },
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          ),
                        ),

                        Container(
                          width:60,
                          alignment: Alignment.center,
                          margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child:
                          OutlineButton(
//                        color: Color(0xffFEE295),
                            splashColor: Color(0xff739DFA),
                            highlightElevation: 12,
                            clipBehavior: Clip.hardEdge,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Color(0xff739DFA),
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(35.0),
                            ),
                            child: Container(

                              alignment: Alignment.center,
                              child: Text(
                                'ORG'.toUpperCase(), style:
                              TextStyle(
                                  color: Color(0xff739DFA),

                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                              ),
                            ),
                            onPressed: () {
                              print('ORG pressed');
                            },
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),

                          ),
                        )


                        // CONTAINER WHERE CUSTOM CLIPPER LINE FUNCTION NEED TO BE PUTTED.
                        // ENDED HERE.

                        // BLACK CONTAINER WILL BE DELETED LATER.
                        // BLACK CONTAINER.


                      ],
                    ),
                    // M VSM ORG VS TODO. ENDS HERE.
                  ),


//                  SizedBox(height: 20,),
//1st container.

                ],)

            ),


            // Todo DefaultItemsStreamBuilder




          ],
        ),

      );
    }
  }

  Widget buildDefaultIngredients(BuildContext context, String defaltIngs){



    print("DefaultIngs: $defaltIngs");

    print('defaltIngs.length LINE# 600: ${defaltIngs.length}');



    return Container(
        height: displayHeight(context) / 8,
//          height:190,
//          width: displayWidth(context) * 0.57,
        width: displayWidth(context) /1.3,
//              color: Colors.yellowAccent,
//                    color: Color(0xff54463E),
        color: Color(0xfffebaca),
        alignment: Alignment.center,

        // PPPPP

        child:(
            Text("No Ingredients, Please Select 1 or more",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.blueAccent,
              ),
            )
        )
    );
  }


}


