import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const Center(child: Text('Bem-vindo!')),
    );
  }
}
/*recuperar os dados previamente cadastrados e complementar cadastros com:
-Telefone.
-Endereço (com campos para rua, número, complemento, bairro, cidade, estado, e CEP).




*/
