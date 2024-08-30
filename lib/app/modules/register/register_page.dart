import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_web_speedrun/app/core/widigets/default_elevated_button.dart';
import 'package:flutter_web_speedrun/app/core/widigets/default_textform_field.dart';
import 'package:validatorless/validatorless.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordEc = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordEc.dispose();

    super.dispose();
  }

  bool isLogged = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              DefaultTextformField(
                label: "Nome Completo",
                controller: _nameController,
                obscureText: false,
                validator: Validatorless.min(
                    3, 'Nome deve ter no mínimo 3 caracteres'),
              ),
              const SizedBox(height: 20),
              DefaultTextformField(
                label: 'E-mail',
                controller: _emailController,
                obscureText: false,
                validator: Validatorless.multiple([
                  Validatorless.required('E-mail é obrigatório'),
                  Validatorless.email('E-mail inválido'),
                ]),
              ),
              const SizedBox(height: 20),
              DefaultTextformField(
                label: "Senha",
                obscureText: true,
                controller: _passwordEc,
                validator: Validatorless.multiple([
                  Validatorless.required('Senha Obrigatória!'),
                  Validatorless.min(8, 'Minimo 8 caracteres'),
                ]),
              ),
              const SizedBox(height: 20),
              DefaultTextformField(
                label: "Confirme sua senha",
                obscureText: true,
                validator: Validatorless.multiple([
                  Validatorless.required('Confirmação de senha Obrigatória!'),
                  Validatorless.min(8,
                      'Confirmação de senha precisa ter o minimo 8 caracteres'),
                  Validatorless.compare(_passwordEc,
                      'Senha e Confirmação de Senha não são iguais'),
                ]),
              ),
              const SizedBox(height: 50),
              DefaultElevatedButton(
                  onPressed: () {
                    final formValid =
                        _formKey.currentState?.validate() ?? false;
                    if (formValid) {
                      _registerUser();
                    }
                  },
                  label: "CADASTRAR"),
            ],
          ),
        ),
      ),
    );
  }

  // bool isLogged = false;

  void _registerUser() {
    //
    //!Logica para registrar usuario no BD
    //
    isLogged = true;
    //---------------------------
    if (isLogged != false) {
      Modular.to.navigate('/');
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 2),
        backgroundColor: isLogged ? Colors.blue : Colors.red,
        content: Text(isLogged
            ? "Usuário Cadastrado com sucesso" // Se isLogged for true
            : "Usuário Não cadastrado"),
        // Se isLogged for false
      ),
    );
  }
}
