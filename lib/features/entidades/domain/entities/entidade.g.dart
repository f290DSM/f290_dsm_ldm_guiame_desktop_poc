// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entidade.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Entidade _$EntidadeFromJson(Map<String, dynamic> json) => Entidade(
      id: json['id'] as int?,
      descricao: json['descricao'] as String?,
      cep: json['cep'] as String?,
      complemento: json['complemento'] as String?,
      endereco: json['endereco'] as String?,
      bairro: json['bairro'] as String?,
      cidade: json['cidade'] as String?,
      estado: json['estado'] as String?,
      criadoEm: json['criadoEm'] == null
          ? null
          : DateTime.parse(json['criadoEm'] as String),
      atualizadoEm: json['atualizadoEm'] == null
          ? null
          : DateTime.parse(json['atualizadoEm'] as String),
      tipo: json['tipo'] == null
          ? null
          : TipoEntidade.fromJson(json['tipo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EntidadeToJson(Entidade instance) => <String, dynamic>{
      'id': instance.id,
      'descricao': instance.descricao,
      'cep': instance.cep,
      'complemento': instance.complemento,
      'endereco': instance.endereco,
      'bairro': instance.bairro,
      'cidade': instance.cidade,
      'estado': instance.estado,
      'criadoEm': instance.criadoEm?.toIso8601String(),
      'atualizadoEm': instance.atualizadoEm?.toIso8601String(),
      'tipo': instance.tipo,
    };
