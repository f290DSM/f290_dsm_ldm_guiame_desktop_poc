import 'package:f290_dsm_ldm_guiame_desktop_poc/features/entidades/domain/entities/tipo_entidade.dart';
import 'package:json_annotation/json_annotation.dart';

part 'entidade.g.dart';

@JsonSerializable()
class Entidade {
  int? id;
  String? descricao;
  String? cep;
  String? complemento;
  String? endereco;
  String? bairro;
  String? cidade;
  String? estado;
  DateTime? criadoEm;
  DateTime? atualizadoEm;
  TipoEntidade? tipo;

  Entidade({
    this.id,
    this.descricao,
    this.cep,
    this.complemento,
    this.endereco,
    this.bairro,
    this.cidade,
    this.estado,
    this.criadoEm,
    this.atualizadoEm,
    this.tipo,
  });

  factory Entidade.fromJson(Map<String, dynamic> json) => _$EntidadeFromJson(json);
  Map<String, dynamic> toJson() => _$EntidadeToJson(this);
}
