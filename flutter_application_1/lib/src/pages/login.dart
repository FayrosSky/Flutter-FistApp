import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => LogintState();
}

class LogintState extends State<Login> {
  final _emailController = TextEditingController();

  final _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 200,
            child: TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.black, width: 1))
              ),
            ),
          ),
          Center(
            child: Stack(
              children: [
                Center(child: Container(width: 200, height: 200,decoration: BoxDecoration(color: Colors.red, ), child: Image.network('https://github.com/mrwerton.png'),)),
                Center(child: Container(width: 100, height: 100, decoration: BoxDecoration(color: Colors.black),))
              ],
            ),
          ),
          SizedBox(
            width: 200,
            child: TextFormField(
              controller: _passController,
              decoration: InputDecoration(labelText: "Informe sua senha"),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(
              Colors.black
            )),
              onPressed: () {
                String email = _emailController.text;
                String password = _passController.text;
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Valores dos Campos"),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Email: $email"),
                          Text("Senha: $password"),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("Fechar"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text("Entrar")),
        ],
      ),
    );
  }
}
