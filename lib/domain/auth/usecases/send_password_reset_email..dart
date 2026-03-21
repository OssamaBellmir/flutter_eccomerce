import 'package:dartz/dartz.dart';
import 'package:eccomerce_app/core/usecase/usecase.dart';
import 'package:eccomerce_app/data/auth/models/user_sigin_req.dart';
import 'package:eccomerce_app/domain/auth/repository/auth.dart';
import 'package:eccomerce_app/service_locator.dart';

class SendPasswordResetEmailUseCase implements UseCase<Either, String> {
  @override
  Future<Either> call({String? params}) async {
    return sl<AuthRepository>().sendPasswordResetEmail(params!);
  }
}
