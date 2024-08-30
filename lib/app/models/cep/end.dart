// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'dart:convert';

import 'package:flutter_web_speedrun/app/models/cep/cep.dart';

class End {
  final String endereco;
  final String rua;
  final int num;
  final String complemento;
  final String bairro;
  final Cep cep;
  End({
    required this.endereco,
    required this.rua,
    required this.num,
    required this.complemento,
    required this.bairro,
    required this.cep,
  });
  

  

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endereco': endereco,
      'rua': rua,
      'num': num,
      'complemento': complemento,
      'bairro': bairro,
      'cep': cep.toMap(),
    };
  }

  factory End.fromMap(Map<String, dynamic> map) {
    return End(
      endereco: (map['endereco'] ?? '') as String,
      rua: (map['rua'] ?? '') as String,
      num: (map['num'] ?? 0) as int,
      complemento: (map['complemento'] ?? '') as String,
      bairro: (map['bairro'] ?? '') as String,
      cep: Cep.fromMap(map['cep'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory End.fromJson(String source) => End.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'End(endereco: $endereco, rua: $rua, num: $num, complemento: $complemento, bairro: $bairro, cep: $cep)';
  }
}
