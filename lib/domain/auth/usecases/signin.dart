import 'package:dartz/dartz.dart';
import 'package:eccomerce_app/core/usecase/usecase.dart';
import 'package:eccomerce_app/data/auth/models/user_sigin_req.dart';
import 'package:eccomerce_app/domain/auth/repository/auth.dart';
import 'package:eccomerce_app/service_locator.dart';

class SigninUseCase implements UseCase<Either, UserSiginReq> {
  @override
  Future<Either> call({UserSiginReq? params}) async {
    return await sl<AuthRepository>().signin(params!);
  }
}
