import 'package:flutter/material.dart';
// ignore: slash_for_doc_comments
/** 
*@param - username,email,mobile,password,confirmPassword

*@config - Visual Studio Version: 1.53.0 (user setup)
               
*@output - Registered authentication form 

*/
void main() {
  runApp(MaterialApp(
    home: regWidget(),
    theme:ThemeData(brightness: Brightness.dark),
  ));
}

class regWidget extends StatefulWidget
{
  static const String id='register_screen';
  @override
 _regFormWidgetState createState()=>_regFormWidgetState();
 
}
// ignore: camel_case_types
 class _regFormWidgetState extends State<regWidget>
 {
  
   TextEditingController firstnamecont =  TextEditingController();
  TextEditingController lastnamecont = TextEditingController();
  TextEditingController emailcont=  TextEditingController();
  TextEditingController mobilecont =  TextEditingController();
  TextEditingController passwordcont =  TextEditingController();
  TextEditingController conpasswordcont=  TextEditingController();
  
@override
    Widget build(BuildContext context) {
    return SafeArea(
      
        child: Scaffold(
          
      body: Center(
        child: SingleChildScrollView(
                  child: Form(
              // key:_formKey,
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
      
               children: [
                // ignore: prefer_const_constructors
                SizedBox(height: 20.0),
                Container(
                  height: 650,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(top: Radius.elliptical(50, 60)),
                      boxShadow: [BoxShadow(blurRadius: 10.0)]),
                  child: Column(
                    children: [
                      SizedBox( height: 70.0,),
                      Container(
                        height: 40.0,
                        width: 300.0,
                        child: Text(
                          'Welcome to Register',
                          style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                        ),
                      ),
                  
              Padding(
                padding:const EdgeInsets.only(bottom:15,left: 10,right: 10),
                child:Container(height: 60.0,
                width: 300.0,

              child: TextFormField(
              style: TextStyle(color: Colors.black),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: "FirstName",hintStyle: TextStyle(fontSize: 14.0),
              labelStyle:TextStyle(color:Colors.black,fontWeight:FontWeight.bold),
              prefixIcon: Icon(Icons.person) ),
              controller:firstnamecont,
            ),),),
              Padding(
                padding:const EdgeInsets.only(bottom:15,left: 10,right: 10),
               child:Container(height: 60.0,
                width: 300.0,
                child: TextFormField(
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(labelText: "LastName",hintStyle: TextStyle(fontSize: 14.0),
                labelStyle:TextStyle(color:Colors.black,fontWeight:FontWeight.bold),
                prefixIcon: Icon(Icons.person) ),
                controller:lastnamecont,
                ),),),
                      
       
            Padding(padding:const EdgeInsets.only(bottom:15,left: 10,right: 10),
            child: Container(
                  height: 60.0,
                  width: 300.0,
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                     keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: "Email",hintStyle: TextStyle(fontSize: 14.0),
                  labelStyle:TextStyle(color:Colors.black,fontWeight:FontWeight.bold),
                prefixIcon: Icon(Icons.email_outlined)),
                controller:emailcont,
                    ),),
                    ),
  Padding(padding:const EdgeInsets.only(bottom:15,left: 10,right: 10),
  child: Container(
                  height: 60.0,
                  width: 300.0,
                  child: TextFormField(
                 style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(labelText: "PhoneNumber",hintStyle: TextStyle(fontSize: 14.0),
                  labelStyle:TextStyle(color:Colors.black,fontWeight:FontWeight.bold),
                  prefixIcon: Icon(Icons.phone_android_outlined)),
                  controller: mobilecont,
                                  ),),),
              Padding(padding:const EdgeInsets.only(bottom:15,left: 10,right: 10),
              child: Container(
                  height: 60.0,
                  width: 300.0,
                  child: TextFormField(obscureText: true,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(labelText: "Password", hintStyle: TextStyle(fontSize: 14.0),
              labelStyle:TextStyle(color:Colors.black,fontWeight:FontWeight.bold,),
                prefixIcon: Icon(Icons.lock)),
              controller: passwordcont,
                ),),),
            Padding(padding:const EdgeInsets.only(bottom:15,left: 10,right: 10),
                  child: Container(
                  height: 60.0,
                  width: 300.0,
                    child: TextFormField(obscureText: true,
                    style: TextStyle(color: Colors.black),
                     decoration: InputDecoration(labelText: "ConfirmPassword",
                    hintStyle: TextStyle(fontSize: 14.0),
                    labelStyle:TextStyle(color:Colors.black,fontWeight:FontWeight.bold),
                    prefixIcon: Icon(Icons.lock)),
                    controller: conpasswordcont,
                    ),),),
         
                   SizedBox(
                  width: 300,
                  height: 60,
                  child: RaisedButton(
                    color: Colors.redAccent,
                    onPressed: (){},
                    
                 shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        side: BorderSide(color: Colors.blue,width: 2)
                    ),textColor:Colors.white,child: Text("Submit") 
                
                  ),),
  
            ],
          ),
        ),],
      ),
    ),),),),);
  }
}

 








 