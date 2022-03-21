import 'package:flutter/material.dart';
import 'package:my_flutter_application/screens/home.dart';

class CreateTaskButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0
        ),
        height: 70.0, //dimensión del botón - alto
        width: 200.0, //dimensón del botón - largo
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          gradient: LinearGradient(
            colors: [
              Color(0xFF7E16D8),
              Color(0xFFD816D1)
            ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
              tileMode: TileMode.clamp
          )
        ),
        child: Center(
          child: Text(
            "Create Task",
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
  
}