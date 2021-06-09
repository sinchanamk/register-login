import 'dart:convert';
import 'package:flutter/material.dart';

// ignore: slash_for_doc_comments
/** 
*@param - username,email,mobile,password,confirmPassword

*@config - Visual Studio Version: 1.53.0 (user setup)
               
*@output - Registered authentication form 

*/
void main() {
  runApp(MaterialApp(
    home: RegWidget(),
   
  ));
}

class RegWidget extends StatefulWidget
{
  static const String id='register_screen';
  @override
 _RegFormWidgetState createState()=>_RegFormWidgetState();
 
}
// ignore: camel_case_types
 class _RegFormWidgetState extends State<RegWidget>
 {
  
   TextEditingController firstnamecont = new TextEditingController();
  TextEditingController lastnamecont = new TextEditingController();
  TextEditingController emailcont= new TextEditingController();
  TextEditingController mobilecont = new TextEditingController();
  TextEditingController passwordcont = new TextEditingController();
  TextEditingController conpasswordcont= new TextEditingController();
  
final GlobalKey<FormState> form=GlobalKey<FormState>();

      
@override
    Widget build(BuildContext context) {
    return SafeArea(
      
        child: Scaffold(
          
      body: Center(
        child: SingleChildScrollView(
              child: Form(
              key:form,
              child: Column(mainAxisAlignment: 
              MainAxisAlignment.center,
              children: [
              SizedBox(height: 20.0),
              Container(
              height: 650,
              width: 500,
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
              BorderRadius.vertical(top: Radius.elliptical(50, 60)),
              boxShadow: [BoxShadow(blurRadius: 10.0)]),
              child: Column( children: [
                  SizedBox(
                  height: 70.0,
                    ),
                      Container(
                        height: 40.0,
                        width: 300.0,
                        child: Text(
                          'Welcome to Register Form',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                  
              Padding(
                padding:const EdgeInsets.only(bottom:15,left: 10,right: 10),
                child:Container(height: 60.0,width: 300.0,

                child: TextFormField(
                  style: TextStyle(color: Colors.black),
                 keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: "FirstName",labelStyle:TextStyle(color: Colors.black,
                  fontSize: 17.0, fontWeight: FontWeight.bold),
                  ),           
                  onFieldSubmitted: (value) {},
                    validator:( value)
                    {
                      if(value!.isEmpty)
                      {
                        return 'Please enter your first name';
                      }
                      return null;
                    },
                     ),),),
                Padding(
                padding:const EdgeInsets.only(bottom:15,left: 10,right: 10),
               child:Container(height: 40.0,width: 300.0,
                child: TextFormField(
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(labelText: "LastName",labelStyle:TextStyle(color: Colors.black,
                fontSize: 17.0, fontWeight: FontWeight.bold),
                  ),    
              onFieldSubmitted: (value) {},
                controller:lastnamecont,
                  validator:( value)
                  {
                    if(value!.isEmpty)
                    {
                      return 'Please enter your last name';
                    }
                    return null;
                  },
                 ),),),
       
              Padding(
                padding:const EdgeInsets.only(bottom:15,left: 10,right: 10),
                child:Container(height: 60.0,width: 300.0,
                child: TextFormField(
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: "Email",labelStyle:TextStyle(color: Colors.black,
                fontSize: 17.0, fontWeight: FontWeight.bold),),  
                  onFieldSubmitted: (value) {},controller:emailcont,
                validator:( value)
                {
               if (value!.isEmpty ||
                !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(value)) {
                return 'Enter a valid email!';
                  }
                  return null;
                },
               ),),),
       
       Padding(
                padding:const EdgeInsets.only(bottom:15,left: 10,right: 10),
                 child:Container(height: 60.0, width: 300.0,
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(labelText: "Password",labelStyle:TextStyle(color: Colors.black,
                  fontSize: 17.0, fontWeight: FontWeight.bold),
                  ),  
                        onFieldSubmitted: (value) {},obscureText: true,
                validator:( value)
                  {
                    if(value!.isEmpty)
                    {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                   ),),),

        Padding(padding:const EdgeInsets.only(bottom:15,left: 10,right: 10),
        child: Container(
                  height: 60.0,
                  width: 300.0,
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(labelText: "PhoneNumber",labelStyle:TextStyle(color: Colors.black,
                    fontSize: 17.0, fontWeight: FontWeight.bold),
                   ),  
                    onFieldSubmitted: (value) {},
                    validator:( value)
                      {
                        if (value!.length != 10)
                        return 'Mobile Number must be of 10 digit';
                        else
                        return null;
                      }
                        
                       ),),),
         
                   SizedBox(
                  width: 300,
                  height: 60,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    color: Colors.redAccent,
                    onPressed: (){
                        if(form.currentState!.validate())
                      {
                        print("successful");
                        return;
                      }else{
                        print("UnSuccessfull");
                      }
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        side: BorderSide(color: Colors.blue,width: 2)
                    ),
                     textColor:Colors.white,child: Text("Submit"),
                        ),
                        ),
                        ],
                       ),
                       ),
                       ],
                       ),
                       ),
                       ),
                       ),
                       ),
                       );
                        }
                        }

 








 