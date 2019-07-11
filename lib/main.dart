import 'package:flutter/material.dart';
import 'package:loja_online_flutter_firebase/models/cart_model.dart';
import 'package:loja_online_flutter_firebase/models/user_model.dart';
import 'package:loja_online_flutter_firebase/screens/home_screens.dart';
import 'package:loja_online_flutter_firebase/screens/login_screen.dart';
import 'package:loja_online_flutter_firebase/screens/signup_screen.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  runApp(HomePage(

  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<UserModel>(
      model: UserModel(),
      child: ScopedModelDescendant<UserModel>(
          builder: (context, child, model){
            return ScopedModel<CartModel>(
              model: CartModel(model),
              child: MaterialApp(
                title: "Loja Flutter Designed by: Rodrigo",
                theme: ThemeData(
                    primarySwatch: Colors.blue,
                    primaryColor: Color.fromARGB(255, 4, 125, 141)
                ),
                debugShowCheckedModeBanner: false,
                home: HomeScreen(),
              ),
            );
          })
    );
  }
}

