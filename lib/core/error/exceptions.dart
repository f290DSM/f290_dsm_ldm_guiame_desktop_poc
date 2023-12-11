import 'package:equatable/equatable.dart';

class ServerException extends Equatable implements Exception {
  final String message;
  final int errorCode;

  const ServerException({required this.message, required this.errorCode});

  @override
  List<Object?> get props => [message, errorCode];
}
