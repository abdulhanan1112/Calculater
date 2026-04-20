import 'package:flutter/material.dart';
import 'package:calculater/Buttons.dart';
import 'package:calculater/PostFix.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
Buttons buttons=Buttons();
PostFix obj=PostFix();
class _HomeState extends State<Home> {
  @override
  String input='';
  String init='0';

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title:Text('My Calculater'),
        centerTitle:true,
        backgroundColor: Colors.orange[500],


      ),
      body: SafeArea(
        child: Column(

          children: [
            Expanded(
                flex: 3,
                child:Container(
                  alignment: Alignment.bottomRight,
                  child:Text(input.isEmpty?init:input,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 70,
                    ),
                  ),
                )
            ),
            Divider(
              height: 1.0,
              thickness: 2,
              color:Colors.grey[200],
            ),
            Expanded(
              flex: 4,
              child:Container(
                  child:Column(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height:80,
                              width: 110,
                              child: ElevatedButton(onPressed:(){setState(() {input=input.substring(0,input.length-1);});},style:ElevatedButton.styleFrom(backgroundColor: Colors.grey[600],),
                                child:Text('${buttons.del}',style:TextStyle(color:Colors.white,fontSize: 30)),),
                            ),

                            SizedBox(
                              height:80,
                              width: 110,
                              child: ElevatedButton(onPressed:(){setState(() {input=input.substring(0,0);});},style:ElevatedButton.styleFrom(backgroundColor: Colors.grey[600]),
                                child:Text('${buttons.clr}',style:TextStyle(color:Colors.white,fontSize: 30)),),
                            ),

                            SizedBox(
                              height:80,
                              width: 110,
                              child: ElevatedButton(onPressed:(){setState(() {input+=buttons.mod;});},style:ElevatedButton.styleFrom(backgroundColor: Colors.orange[600]),
                                child:Text('${buttons.mod}',style:TextStyle(color:Colors.white,fontSize: 30)),),
                            ),

                            SizedBox(
                                height:80,
                                width: 110,
                                child: ElevatedButton(onPressed:(){setState(() {
                                  input+=buttons.mul;
                                });
                                },style:ElevatedButton.styleFrom(backgroundColor: Colors.orange[600]),child:Text('${buttons.mul}',style:TextStyle(color:Colors.white,fontSize: 30)),)),

                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(height:80,
                              width: 110,
                              child: ElevatedButton(onPressed:(){
                                setState(() {
                                  input+=buttons.seven;
                                });
                              },style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                                child:Text('${buttons.seven}',style:TextStyle(color:Colors.white,fontSize: 30)),),
                            ),
                            SizedBox(height:80,
                              width: 110,
                              child: ElevatedButton(onPressed:(){
                                setState(() {
                                  input+=buttons.eight;
                                });
                              },style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                                child:Text('${buttons.eight}',style:TextStyle(color:Colors.white,fontSize: 30)),),
                            ),
                            SizedBox(
                              height:80,
                              width: 110,
                              child: ElevatedButton(onPressed:(){
                                setState(() {
                                  input+=buttons.nine;
                                });
                              },style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                                child:Text('${buttons.nine}',style:TextStyle(color:Colors.white,fontSize: 30)),),
                            ),
                            SizedBox(
                              height:80,
                              width: 110,
                              child: ElevatedButton(onPressed:(){
                                setState(() {
                                  input+=buttons.div;
                                });
                              },style:ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange[600]
                              ),
                                child:Text('${buttons.div}',style:TextStyle(color:Colors.white,fontSize: 30)),),
                            ),

                          ],
                        ),
                      ),Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height:80,
                              width: 110,
                              child: ElevatedButton(onPressed:(){
                                setState(() {
                                  input+=buttons.four;
                                });
                              },style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                                child:Text('${buttons.four}',style:TextStyle(color:Colors.white,fontSize: 30)),),
                            ),
                            SizedBox(
                              height:80,
                              width: 110,
                              child: ElevatedButton(onPressed:(){
                                setState(() {
                                  input+=buttons.five;
                                });
                              },style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                                child:Text('${buttons.five}',style:TextStyle(color:Colors.white,fontSize: 30)),),
                            ),
                            SizedBox(
                              height:80,
                              width: 110,
                              child: ElevatedButton(onPressed:(){
                                setState(() {
                                  input+=buttons.six;
                                });
                              },style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                                child:Text('${buttons.six}',style:TextStyle(color:Colors.white,fontSize: 30)),),
                            ),
                            SizedBox(
                              height:80,
                              width: 110,
                              child: ElevatedButton(onPressed:(){
                                setState(() {
                                  input+=buttons.sub;
                                });
                              },style:ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange[600]
                              ),
                                child:Text('${buttons.sub}',style:TextStyle(color:Colors.white,fontSize: 30)),),
                            ),

                          ],
                        ),
                      ),Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height:80,
                              width: 110,
                              child: ElevatedButton(onPressed:(){
                                setState(() {
                                  input+=buttons.one;
                                });
                              },style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                                child:Text('${buttons.one}',style:TextStyle(color:Colors.white,fontSize: 30)),),
                            ),
                            SizedBox(
                              height:80,
                              width: 110,
                              child: ElevatedButton(onPressed:(){
                                setState(() {
                                  input+=buttons.two;
                                });
                              },style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                                child:Text('${buttons.two}',style:TextStyle(color:Colors.white,fontSize: 30)),),
                            ),
                            SizedBox(
                              height:80,
                              width: 110,
                              child: ElevatedButton(onPressed:(){
                                setState(() {
                                  input+=buttons.three;
                                });
                              },style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                                child:Text('${buttons.three}',style:TextStyle(color:Colors.white,fontSize: 30)),),
                            ),
                            SizedBox(
                              height:80,
                              width: 110,
                              child: ElevatedButton(onPressed:(){
                                setState(() {
                                  input+=buttons.plus;
                                });
                              },style:ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange[600]
                              ),
                                child:Text('${buttons.plus}',style:TextStyle(color:Colors.white,fontSize: 30)),),
                            ),

                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height:80,
                              width: 220,
                              child: ElevatedButton(onPressed:(){
                                setState(() {
                                  input+=buttons.zero;
                                });
                              },style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                                child:Text('${buttons.zero}',style:TextStyle(color:Colors.white,fontSize: 30)),),
                            ),
                            SizedBox(
                              height:80,
                              width: 110,
                              child: ElevatedButton(onPressed:(){
                                setState(() {
                                  input+=buttons.point;
                                });
                              },style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                                child:Text('${buttons.point}',style:TextStyle(color:Colors.white,fontSize: 30)),),
                            ),
                            SizedBox(
                              height:80,
                              width: 110,
                              child: ElevatedButton(onPressed:(){
                                setState(() {
                                  String postFix=obj.postfix(input);
                                  int ans=obj.eval(postFix);
                                  input=ans.toString();
                                });
                              },style:ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange[600]
                              ),
                                child:Text('${buttons.equal}',style:TextStyle(color:Colors.white,fontSize: 30)),),
                            ),

                          ],
                        ),
                      ),
                    ],
                  )
              ),
            )

          ],


        ),
      ),

    );
  }
}