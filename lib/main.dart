import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(sbhan());
}
class sbhan extends StatefulWidget {
  @override
  State<sbhan> createState() => _sbhanState();
}

class _sbhanState extends State<sbhan> {
int add=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0XFF606569),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('Images/img.jpg'),
            ),
            Text('سبحان الله',
              style: TextStyle(
                    fontSize: 50,
                color: Color(0xffcfc2b0)
              ),
            ),
            Text('$add',style: TextStyle(
              fontSize: 100,
                  backgroundColor: Color(0xffcfc2b0),
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  add++;
                  setState(() {

                  });
                }, child:
                    Text('add')
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: ElevatedButton(onPressed: (){
                    add=0;
                    setState(() {

                    });
                  }, child:
                      Text('Reset')
                  ),
                )
              ],
            )
          ],
        ),
      ),

    );
  }
}
