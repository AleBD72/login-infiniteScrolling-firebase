import 'package:flutter/material.dart';
import 'package:login_firebase_2/resusable_widgets/reusable_widget.dart';
import 'package:login_firebase_2/utils/color_utils.dart';

class SingInScreen extends StatefulWidget {
  const SingInScreen({super.key});

  @override
  State<SingInScreen> createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {

  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: LinearGradient(colors:[
          hexStringToColor("242F9B"), //
          hexStringToColor("646FD4"),
          hexStringToColor("B9D7EA")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(children: <Widget>[
              logoWidget("assets/images/logo.png"),
              SizedBox(
                height: 30,
              ),
              reusableTextField("Ingrese su correo", Icons.verified_user, false, _emailTextController)
              SizedBox(
                height: 30,
              ),
              reusableTextField("Ingrese su contraseña", icon, isPassworType, controller)
            ],
            ),
          ),
        ),
      ),
      );
  }
}
