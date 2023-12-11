import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/tipo_entidade.dart';

abstract class TipoEntidadeRepository {
  Future<Either<Failure, TipoEntidade>> create(TipoEntidade tipoEntidade);

  Future<Either<Failure, List<TipoEntidade>>> getAll();
}
