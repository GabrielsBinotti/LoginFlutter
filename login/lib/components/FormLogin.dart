import 'package:flutter/material.dart';
import 'package:login/models/UserModel.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  UserModel userModel = UserModel();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Usuário',
              ),
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Por favor preencher o campo';
                }
                return null;
              },
              onSaved: (newValue) {
                userModel.username = newValue!;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Senha',
              ),
              obscureText: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Por favor preencher o campo';
                }
                return null;
              },
              onSaved: (newValue) {
                userModel.password = newValue!;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();

                  print("Usuario: ${userModel.username}");
                  print("Password: ${userModel.password}");
                }
              },
              child: const Text("Entrar"),
            )
          ],
        ),
      ),
    );
  }
}
