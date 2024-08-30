import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class Cep {
  final String cidade;
  final List<String> estados;
  final int cep;
  Cep({
    required this.cidade,
    required this.estados,
    required this.cep,
  });
  


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidade': cidade,
      'estados': estados,
      'cep': cep,
    };
  }

  factory Cep.fromMap(Map<String, dynamic> map) {
    return Cep(
      cidade: (map['cidade'] ?? '') as String,
      estados: List<String>.from((map['estados'] ?? const <String>[]) as List<String>),
      cep: (map['cep'] ?? 0) as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Cep.fromJson(String source) => Cep.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Cep(cidade: $cidade, estados: $estados, cep: $cep)';
}
