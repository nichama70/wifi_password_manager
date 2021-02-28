import 'package:flutter/material.dart';
import 'package:wifi_password_manager/bloc.navigationbloc/navigationbloc.dart';

class Settings extends StatelessWidget with NavigationStates{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Settings", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
      ),
    );
  }
}