import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget{
    createState(){
        return LoginScreenState();
    }
}

class LoginScreenState extends State<LoginScreen> with ValidationMixin{
    final formKey=GlobalKey<FormState>();
    String email='';
    String pass='';

    Widget build(context){
        return Container(
            margin: EdgeInsets.all(30.0),
            child: Form(
                key: formKey,
                child: Column(
                    children: <Widget>[
                        Container(margin: EdgeInsets.only(top:25.0),),
                        emailField(),
                        Container(margin: EdgeInsets.only(top:25.0),),
                        passwordField(),
                        Container(margin: EdgeInsets.only(top:25.0),),
                        submitButton(),
                    ],
                ),

            ),
        );
    }
    Widget emailField(){
        return TextFormField(
            validator: validateEmail,  //not invoking the function jsut referencing the function
            // (String value){
            //     if (!value.contains('@')){
            //         return 'Wrong Email';
            //     }
            // },   //done this stuff in validtionmixins
            onSaved: (String value){
                email=value;
            },
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'you@example.com',
                labelStyle: new TextStyle(color: Color.fromRGBO(255, 69, 0, 1)),
                focusedBorder: UnderlineInputBorder(      
                    borderSide: BorderSide(color: Color.fromRGBO(255, 69, 0, 1)),   
                ),   
            ),
        );
    }
    Widget passwordField(){
        return TextFormField(
            validator: validatePassword,  //not invoking the function jsut referencing the function
            //(String value){
            //     if (value.length <4){
            //         return 'pass must contain atleast 4 chars';
            //     }
            // },
            onSaved: (String value){
                pass=value;
            },
            decoration: InputDecoration(
                labelText: 'Password',
                hintText: '********',
                labelStyle: new TextStyle(color: Color.fromRGBO(255, 69, 0, 1)),
                focusedBorder: UnderlineInputBorder(      
                    borderSide: BorderSide(color: Color.fromRGBO(255, 69, 0, 1)),   
                ),  
            ),
            obscureText: true,
        );
    }
    Widget submitButton(){
        return RaisedButton(
            onPressed: (){
                if(formKey.currentState.validate())
                    {
                        formKey.currentState.save();
                        print('$email and $pass is');
                    }
            },
            child: Text('LOGIN'),
            color: Color.fromRGBO(255,69,0, 1),
            textColor: Color.fromRGBO(255, 255, 255, 1),
            padding: EdgeInsets.all(15.0),
        );
    }
}