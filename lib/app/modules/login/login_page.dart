import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:flutter_web_speedrun/app/core/widigets/default_elevated_button.dart';
import 'package:flutter_web_speedrun/app/core/widigets/default_textform_field.dart';
import 'package:validatorless/validatorless.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Center(
              child: Column(
                children: [
                  DefaultTextformField(
                    label: 'Email',
                    // controller: ,
                    obscureText: false,
                    validator: Validatorless.multiple([
                      Validatorless.required('Email é obrigatório'),
                      Validatorless.email('Email inválido'),
                    ]),
                  ),
                  const SizedBox(height: 10),
                  DefaultTextformField(
                    label: 'senha',
                    // controller: ,
                    obscureText: true,
                    validator: Validatorless.multiple([
                      Validatorless.required('Senha é obrigatória'),
                      Validatorless.min(
                          8, 'Senha deve ter pelo menos 8 caracteres'),
                    ]),
                  ),
                  const SizedBox(height: 20),
                  DefaultElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        auth();
                      }
                    },
                    label: "Entrar",
                  ),
                  const SizedBox(height: 5),
                  DefaultElevatedButton(
                    onPressed: () {
                      Modular.to.navigate("/register/");
                    },
                    label: "Cadastrar",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void auth() {
    //! Lógica de login
    //CASO ERRO LOGICO -> DADOS INVALIDOS

    //CASO OK-> HOMEPAGE
    Modular.to.navigate('/home/');
  }
}
