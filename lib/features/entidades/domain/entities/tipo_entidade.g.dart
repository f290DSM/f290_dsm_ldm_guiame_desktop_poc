// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tipo_entidade.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TipoEntidade _$TipoEntidadeFromJson(Map<String, dynamic> json) => TipoEntidade(
      id: json['id'] as int?,
      descricao: json['descricao'] as String?,
      criadoEm: json['criadoEm'] == null
          ? null
          : DateTime.parse(json['criadoEm'] as String),
      atualizadoEm: json['atualizadoEm'] == null
          ? null
          : DateTime.parse(json['atualizadoEm'] as String),
      entidades: (json['entidades'] as List<dynamic>?)
          ?.map((e) => Entidade.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TipoEntidadeToJson(TipoEntidade instance) =>
    <String, dynamic>{
      'id': instance.id,
      'descricao': instance.descricao,
      'criadoEm': instance.criadoEm?.toIso8601String(),
      'atualizadoEm': instance.atualizadoEm?.toIso8601String(),
      'entidades': instance.entidades,
    };
