

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInButton extends StatefulWidget {
  //const SignInButton({Key? key}) : super(key: key);

  SignInButton(
    this.color,
    // this.onPressed,
    this.hintText,
    this.labelText
  ,);

  final Color color;
  // final VoidCallback  onPressed;
  final String hintText;
  final String labelText;

@override
  State<SignInButton> createState() => _SignInButtonState();
}

  class _SignInButtonState extends State<SignInButton> {

    bool secureText = true;
    @override
    Widget build(BuildContext context) {
      return Container(
        child: Column(

          children: [
            TextField(
              decoration:
              InputDecoration(
                  labelText: widget.labelText,
                  labelStyle: TextStyle(
                      fontSize: 24.0,
                      color: widget.color
                  ),
                  hintText: widget.hintText,
                  hintStyle: TextStyle(
                      fontSize: 15.0
                  ),
                  border: OutlineInputBorder(),
                  //suffixIcon: Icon(Icons.lock)
                  suffixIcon: IconButton(
                    icon: Icon(secureText ? Icons.lock : Icons.remove_red_eye),
                    onPressed:
                        (){
                      setState(() {
                        secureText = !secureText;
                      });
                    },
                  ),

                // border: InputBorder.none,
                // fillColor: Colors.grey,
                // filled: true

              ),
              keyboardType: TextInputType.number,
              obscureText: secureText,
            ),

          ],
        ),
      );
    }
  }
