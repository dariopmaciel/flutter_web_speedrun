// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:flutter_web_speedrun/app/models/cep/end.dart';

class Cliente {
  final int id;
  final String nome;
  final String email;
  final String telefone;
  final End end;
  Cliente({
    required this.id,
    required this.nome,
    required this.email,
    required this.telefone,
    required this.end,
  });
 


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
      'email': email,
      'telefone': telefone,
      'end': end.toMap(),
    };
  }

  factory Cliente.fromMap(Map<String, dynamic> map) {
    return Cliente(
      id: (map['id'] ?? 0) as int,
      nome: (map['nome'] ?? '') as String,
      email: (map['email'] ?? '') as String,
      telefone: (map['telefone'] ?? '') as String,
      end: End.fromMap(map['end'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Cliente.fromJson(String source) => Cliente.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Cliente(id: $id, nome: $nome, email: $email, telefone: $telefone, end: $end)';
  }
}
