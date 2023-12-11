import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {

  final String message;
  final int errorCode;


  const Failure({required this.message, required this.errorCode});

  @override
  List<Object> get props {
    return [message, errorCode];
  }
}

class ServerFailure extends Failure {
  const ServerFailure({required super.message, required super.errorCode});
}

