import 'entidade.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tipo_entidade.g.dart';

@JsonSerializable()
class TipoEntidade {
  int? id;
  String? descricao;
  DateTime? criadoEm;
  DateTime? atualizadoEm;
  List<Entidade>? entidades;

  TipoEntidade({
    this.id,
    this.descricao,
    this.criadoEm,
    this.atualizadoEm,
    this.entidades,
  });

  factory TipoEntidade.fromJson(Map<String, dynamic> json) => _$TipoEntidadeFromJson(json);
  Map<String, dynamic> toJson() => _$TipoEntidadeToJson(this);
}
