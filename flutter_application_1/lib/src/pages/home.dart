import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/login.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Testando! Bem-vindo ao meu primeiro App Mobile!"),
        centerTitle: false,
        leading: Icon(Icons.arrow_back),
      ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                color: Colors.black,
                width: 200,
                height: 200,
                child: Center(child: Text("box", style:  TextStyle(color: Colors.white),)),),
              ),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login(),));
        }, child: Icon(Icons.arrow_forward),),
    );
  }
}