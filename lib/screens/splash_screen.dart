
import 'package:flutter/material.dart';
import 'dart:async';
class SplashScreen extends StatefulWidget { @override _SplashScreenState createState()=>_SplashScreenState(); }
class _SplashScreenState extends State<SplashScreen> {
  double _p = 0.0;
  @override void initState(){ super.initState(); Timer.periodic(Duration(milliseconds:100),(t){ setState(()=>_p+=0.1); if(_p>=1.0){ t.cancel(); Navigator.pushReplacementNamed(context,'/'); }}); }
  @override Widget build(BuildContext c){ return Scaffold(body: Center(child: Column(mainAxisSize: MainAxisSize.min, children:[ Image.asset('assets/logo/splash_logo.png', width:180,height:180), SizedBox(height:18), Container(width:160,height:6, decoration:BoxDecoration(color:Colors.grey[300], borderRadius:BorderRadius.circular(6)), child: FractionallySizedBox(widthFactor:_p, alignment:Alignment.centerLeft, child: Container(decoration:BoxDecoration(color:Color(0xFF009688), borderRadius:BorderRadius.circular(6)))) ) ]))); }
}
