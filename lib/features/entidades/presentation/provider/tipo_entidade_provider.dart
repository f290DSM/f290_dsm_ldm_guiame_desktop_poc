import 'package:f290_dsm_ldm_guiame_desktop_poc/features/entidades/domain/entities/tipo_entidade.dart';
import 'package:f290_dsm_ldm_guiame_desktop_poc/features/entidades/domain/repositories/tipo_entidade_respository.dart';
import 'package:flutter/material.dart';

class TipoEntidadeProvider extends ChangeNotifier {
  final TipoEntidadeRepository repository;

  TipoEntidadeProvider(this.repository);

}
