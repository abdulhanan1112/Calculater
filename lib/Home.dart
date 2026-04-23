import 'package:flutter/material.dart';
import 'package:calculater/Buttons.dart';
import 'package:calculater/PostFix.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

Buttons buttons = Buttons();
PostFix obj = PostFix();

class _HomeState extends State<Home> {

  @override
  String infix="";
  String input = '';
  String init = '0';

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('My Calculater'),
        centerTitle: true,
        backgroundColor: Colors.orange[500],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.bottomRight,
                child: Text(
                  input.isEmpty ? init : input,
                  style: TextStyle(color: Colors.white, fontSize: 70),
                ),
              ),
            ),
            Divider(height: 1.0, thickness: 2, color: Colors.grey[200]),
            Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  input = input.substring(0, input.length - 1);
                                  if(obj.isOperator(infix[infix.length-1])) {
                                    infix =infix.substring(0, infix.length - 2);
                                  }
                                  else
                                    {
                                      infix =infix.substring(0, infix.length - 1);
                                    }
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey[600],
                              ),
                              child: Text(
                                '${buttons.del}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  input = input.substring(0, 0);
                                  infix = infix.substring(0, 0);
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey[600],
                              ),
                              child: Text(
                                '${buttons.clr}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  infix+=',';
                                  input += buttons.mod;
                                  infix += buttons.mod;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange[600],
                              ),
                              child: Text(
                                '${buttons.mod}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  infix+=',';
                                  input += buttons.mul;
                                  infix += buttons.mul;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange[600],
                              ),
                              child: Text(
                                '${buttons.mul}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  input += buttons.seven;
                                  infix += buttons.seven;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              child: Text(
                                '${buttons.seven}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  infix+=buttons.eight;
                                  input += buttons.eight;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              child: Text(
                                '${buttons.eight}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  infix+=buttons.nine;
                                  input += buttons.nine;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              child: Text(
                                '${buttons.nine}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  infix+=',';
                                  infix += buttons.div;
                                  input += buttons.div;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange[600],
                              ),
                              child: Text(
                                '${buttons.div}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  infix+=buttons.four;
                                  input += buttons.four;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              child: Text(
                                '${buttons.four}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  infix+=buttons.five;
                                  input += buttons.five;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              child: Text(
                                '${buttons.five}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  infix+=buttons.six;
                                  input += buttons.six;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              child: Text(
                                '${buttons.six}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  infix+=',';
                                  infix+=buttons.sub;
                                  input += buttons.sub;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange[600],
                              ),
                              child: Text(
                                '${buttons.sub}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  infix+=buttons.one;
                                  input += buttons.one;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              child: Text(
                                '${buttons.one}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  infix+=buttons.two;
                                  input += buttons.two;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              child: Text(
                                '${buttons.two}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  infix+=buttons.three;
                                  input += buttons.three;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              child: Text(
                                '${buttons.three}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  infix+=',';
                                  infix+=buttons.plus;
                                  input += buttons.plus;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange[600],
                              ),
                              child: Text(
                                '${buttons.plus}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 80,
                            width: 220,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  infix+=buttons.zero;
                                  input += buttons.zero;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              child: Text(
                                '${buttons.zero}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  infix+=buttons.point;
                                  input += buttons.point;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              child: Text(
                                '${buttons.point}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  infix+=',';
                                  try {
                                    String postFix = obj.postfix(infix);
                                    double ans = obj.eval(postFix);
                                    input = obj.formatResult(ans);
                                  }
                                  catch(e) {
                                    input='Syntax Error';

                                  }
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange[600],
                              ),
                              child: Text(
                                '${buttons.equal}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}