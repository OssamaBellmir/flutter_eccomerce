import 'package:dartz/dartz.dart';
import 'package:eccomerce_app/data/auth/models/user_creation_req.dart';
import 'package:eccomerce_app/data/auth/models/user_sigin_req.dart';

abstract class AuthRepository {
  Future<Either> signup(UserCreationReq user);
  Future<Either> signin(UserSiginReq user);
  Future<Either> getAges();
  Future<Either> sendPasswordResetEmail(String email);
  Future<bool> isLoggedIn();
  Future<Either> getUser();
}
