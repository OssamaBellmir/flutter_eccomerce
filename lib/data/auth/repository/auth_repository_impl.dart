import 'package:dartz/dartz.dart';
import 'package:eccomerce_app/data/auth/models/user_creation_req.dart';
import 'package:eccomerce_app/data/auth/models/user_sigin_req.dart';
import 'package:eccomerce_app/domain/auth/repository/auth.dart';
import 'package:eccomerce_app/service_locator.dart';
import 'package:eccomerce_app/data/auth/source/auth_firebase_service.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signup(UserCreationReq user) async {
    return sl<AuthFirebaseService>().signup(user);
  }

  @override
  Future<Either> getAges() async {
    return sl<AuthFirebaseService>().getAges();
  }

  @override
  Future<Either> signin(UserSiginReq user) async {
    return await sl<AuthFirebaseService>().signin(user);
  }

  @override
  Future<Either> sendPasswordResetEmail(String email) async {
    return await sl<AuthFirebaseService>().sendPasswordResetEmail(email);
  }
}
