import 'package:dartz/dartz.dart';
import 'package:eccomerce_app/data/auth/models/user_creation_req.dart';
import 'package:eccomerce_app/domain/auth/repository/auth.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signup(UserCreationReq user) {
    throw UnimplementedError();
  }
}
