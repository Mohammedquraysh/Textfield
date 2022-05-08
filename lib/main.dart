
import 'package:flutter/material.dart';
import 'package:textfield_and_textformfield/sign_in_button.dart';



void main(){
  runApp(MaterialApp(home: InputLayout()));
}

class InputLayout extends StatefulWidget {
  @override
   _InputLayout createState() => _InputLayout();

}
class _InputLayout extends State<InputLayout>{
  bool _secureText = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TextField and TextFormField'),
        ),

        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(

            children: [
              SizedBox(height:48.0),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Name',
                    labelStyle: TextStyle(
                        fontSize: 24.0,
                        color: Colors.black54
                    ),
                    hintText: 'Enter your Name',
                    hintStyle: TextStyle(
                        fontSize: 15.0
                    ),
                    border: OutlineInputBorder(),
                    //suffixIcon: Icon(Icons.lock)
                    suffixIcon: IconButton(
                      icon: Icon(_secureText ? Icons.lock : Icons.remove_red_eye),
                      onPressed: (){
                        setState(() {
                          _secureText = !_secureText;
                        });
                      },
                    )

                  // border: InputBorder.none,
                  // fillColor: Colors.grey,
                  // filled: true
                ),
                keyboardType: TextInputType.number,
                obscureText: _secureText,
              ),
              SizedBox(height: 16.0),
             SignInButton(Colors.black54,'Enter your name','Name'),
             SizedBox(height: 16.0,),
             SignInButton(Colors.blue,'Enter your phone Number','Phone Number')
            ],
          ),
        ),
      ),
    );
  }

}