import 'package:f290_dsm_ldm_guiame_desktop_poc/features/entidades/domain/entities/tipo_entidade.dart';

abstract class TipoEntidadeDataSource {
  Future<TipoEntidade> create(TipoEntidade tipoEntidade);
}