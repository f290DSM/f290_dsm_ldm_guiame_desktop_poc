import 'package:dartz/dartz.dart';
import 'package:f290_dsm_ldm_guiame_desktop_poc/core/error/exceptions.dart';
import 'package:f290_dsm_ldm_guiame_desktop_poc/core/error/failures.dart';
import 'package:f290_dsm_ldm_guiame_desktop_poc/features/entidades/data/datasources/tipo_entidade_datasource.dart';
import 'package:f290_dsm_ldm_guiame_desktop_poc/features/entidades/data/datasources/tipo_entidade_datasource_impl.dart';
import 'package:f290_dsm_ldm_guiame_desktop_poc/features/entidades/domain/entities/tipo_entidade.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/repositories/tipo_entidade_respository.dart';
import 'package:http/http.dart' as http;

class TipoEntidadeRepositoryImpl implements TipoEntidadeRepository {
  final TipoEntidadeDataSource dataSource;

  TipoEntidadeRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, TipoEntidade>> create(
      TipoEntidade tipoEntidade) async {
    try {
      return Right(await dataSource.create(tipoEntidade));
    } catch (e) {
      if (e is ServerException) {
        return Left(
          ServerFailure(
            message: e.props[0] as String,
            errorCode: e.props[1] as int,
          ),
        );
      }
      return const Left(ServerFailure(message: "", errorCode: 500));
    }
  }

  @override
  Future<Either<Failure, List<TipoEntidade>>> getAll() async {
    try {
      return Right(await dataSource.getAll());
    } catch (e) {
      if (e is ServerException) {
        return Left(
          ServerFailure(
            message: e.props[0] as String,
            errorCode: e.props[1] as int,
          ),
        );
      }
      return const Left(ServerFailure(message: "", errorCode: 500));
    }
  }
}

final tipoEntidadeProvider = Provider<TipoEntidadeRepository>((ref) {
  final dataSource = TipoEntidadeDataSourceImpl(client: http.Client());
  return TipoEntidadeRepositoryImpl(dataSource);
});
