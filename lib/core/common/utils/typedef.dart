import 'package:dartz/dartz.dart';
import 'package:wisp_wiz/core/Erros/failure.dart';

typedef MapData = Map<String, dynamic>;
typedef MapList = List<MapData>;
typedef ResultFuture<T> = Future<Either<Failure, T>>;
typedef Result<T> = Either<Failure, T>;
typedef ResultVoid = Either<Failure, void>;
typedef FutureVoid = ResultFuture<void>;
typedef FutureString = ResultFuture<String>;
typedef FutureBool = ResultFuture<bool>;
typedef FutureMapList = ResultFuture<MapList>;
