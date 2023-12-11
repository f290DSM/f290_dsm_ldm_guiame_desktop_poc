import 'dart:convert';
import 'dart:io';

import 'package:f290_dsm_ldm_guiame_desktop_poc/core/error/exceptions.dart';
import 'package:f290_dsm_ldm_guiame_desktop_poc/features/entidades/data/datasources/tipo_entidade_datasource.dart';
import 'package:f290_dsm_ldm_guiame_desktop_poc/features/entidades/domain/entities/tipo_entidade.dart';
import 'package:http/http.dart' as http;

class TipoEntidadeDataSourceImpl implements TipoEntidadeDataSource {
  final http.Client client;

  TipoEntidadeDataSourceImpl(this.client);

  @override
  Future<TipoEntidade> create(TipoEntidade tipoEntidade) async {
    final response = await client.post(
      Uri.parse('http://localhost:3000/api/tipos_entidades'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: tipoEntidade.toJson(),
    );

    if (response.statusCode != HttpStatus.ok) {
      throw ServerException(
        errorCode: response.statusCode,
        message: 'Falha ao incluir novo tipo de entidade.',
      );
    }

    return TipoEntidade.fromJson(jsonDecode(response.body));
  }
}
