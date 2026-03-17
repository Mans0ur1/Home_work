import 'package:flutter/material.dart';

class Lec1Homework extends StatelessWidget {
  const Lec1Homework({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 10,
          children: [
            Container(
              color: Colors.blue[100],
              width: double.infinity,
              height: 150,
            ),
            Row(
              spacing: 5,
              children: [

                Container(color: Colors.grey[400], width: 16, height: 16),
                Expanded(child: Container(color: Colors.grey[400], height: 13)),
              ],
            ),
            Container(
              color: Colors.grey[400],
              width: double.infinity,
              height: 2,
            ),
            Row(
              spacing: 10,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.green[100],
                    child: Column(
                      spacing: 5,
                      children: [
                        Container(
                          color: Colors.green[300],
                          width: double.infinity,
                          height: 40,
                        ),
                        Container(
                          color: Colors.green[300],
                          width: double.infinity,
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.orange[50],
                    child: Row(
                      spacing: 5,
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.orange[200],
                            width: double.infinity,
                            height: 85,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.orange[200],
                            width: double.infinity,
                            height: 85,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.deepPurple[50],
              width: double.infinity,
              height: 80,
              child: Row(

                  children: [
                    Expanded(
                  child: Container(
                    color: Colors.deepPurple[400],
                    width: .infinity,
                    height: 80,
                  ),
                ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        color: Colors.deepPurple[200],
                        width: .infinity  ,
                        height: 80,
                        child: Column(
                          children: [
                        Container(
                        color: Colors.deepPurple[300],
                            width: .infinity  ,
                            height:35),
                            SizedBox(height: 10),
                            Container(
                              color: Colors.deepPurple[300],
                              width: .infinity  ,
                              height: 35,)

                          ]
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(

                      child: Container(
                        color: Colors.deepPurple[100],
                        width: .infinity  ,
                        height: 80,

                      ),
                    ),
                    Expanded(

                      child: Container(
                        color: Colors.deepPurple[90],
                        width: .infinity  ,
                        height: 80,

                      ),
                    )


              ]),
            ),
            Row(
              spacing: 15,
              children: [
                Expanded(
                  child: Container(
                    width: .infinity,
                    height: 50,
                    color: Colors.teal[100],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: .infinity,
                    height: 50,
                    color: Colors.teal[200],
                  ),
                ),
              ],
            ),
            Container(
              width: .infinity,
              height: 30,
              color: Colors.grey[400],
            )
          ],
        ),
      ),
    );
  }
}
