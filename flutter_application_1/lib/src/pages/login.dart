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
        children: [
          Container(
            width: 200,
            child: TextFormField(
              controller: _emailController,
              decoration: InputDecoration(labelText: "Informe o email"),
            ),
          ),
          Container(
            width: 200,
            child: TextFormField(
              controller: _passController,
              decoration: InputDecoration(labelText: "Informe sua senha"),
            ),
          ),
          TextButton(
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
