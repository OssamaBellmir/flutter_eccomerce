import 'package:dartz/dartz.dart';
import 'package:eccomerce_app/core/usecase/usecase.dart';
import 'package:eccomerce_app/data/auth/models/user_creation_req.dart';
import 'package:eccomerce_app/domain/auth/repository/auth.dart';
import 'package:eccomerce_app/service_locator.dart';

class SignupUseCase implements UseCase<Either, UserCreationReq> {
  @override
  Future<Either> call({UserCreationReq? params}) async {
    return await sl<AuthRepository>().signup(params!);
  }
}
