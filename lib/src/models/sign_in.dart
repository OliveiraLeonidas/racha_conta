import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  SignInPage createState() => SignInPage();
}

class SignInPage extends State<SignIn> {
  final TextEditingController nameController = TextEditingController();
  //final TextEditingController cpfController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Racha conta - Novo Cadastro"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Nome',
                ),
              ),
              const SizedBox(height: 16.0,),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                )
              ),
              const SizedBox(height: 16.0,),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Senha',
                ),
              ),
              ElevatedButton(
                // ignore: avoid_print
                onPressed: () => {print("Cadastro enviado")}, 
                child: const Text("Cadastrar")
                )
            ],
          ),
        ),
      ),
    );
  }
}