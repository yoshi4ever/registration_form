import 'package:flutter/material.dart';

class  RegistrationScreen extends StatefulWidget{
  _RegistrationScreenState createState() => _RegistrationScreenState();
}
class _RegistrationScreenState extends State<RegistrationScreen>{
  final TextEditingController firstnameController= TextEditingController();
  final  TextEditingController lastnameController= TextEditingController();
  final  TextEditingController emailController= TextEditingController();
  bool isRegistered = false;

@override  
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Text("Registration Form")
    ),
    body: Padding(Padding:
    EdgeInsets.all(20),
    child: column(mainAxisAlignment: MainAxisAlignment.
    center,
    children: [
      TextField( Controller: firstnameController,
      decoration: const InputDecoration(labelText:"First Name"),),
      TextField( Controller: lastnameController,
      decoration:const InputDecoration(labelText:"Last Name"),),
      TextField( Controller: emailController,
      decoration:const InputDecoration(labelText:"Email Address"),),
       const SizedBox( height:30,),
       GestureDetector(onTap: (){
        setstate(() {
          isRegistered= !isRegistered;
         } );
         },
         child: Container(
          Padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: isRegistered ?   Colors.green  : Colors.blue,
            borderRadius: borderRadius.circular(10)
          ),
          child: Text(
            isRegistered ?
            "Registration Successful" : "Register Me",
            style: Textstyle(
              color: Colors.white,fontSize:20,
            ),
         ),
       ),)
    ],),),
  );
}
}