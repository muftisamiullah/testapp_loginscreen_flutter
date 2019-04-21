import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

class App extends StatelessWidget{
	Widget build(context){
		return MaterialApp(
			title: 'Login',
			home: Scaffold(
				body:LoginScreen(),
				appBar: AppBar(
					title: Text('Car Booking'),
					backgroundColor: Color.fromRGBO(255, 69, 0, 1),
				),
			),
		);
	}
}