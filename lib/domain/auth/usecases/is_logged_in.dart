import 'package:eccomerce_app/domain/auth/repository/auth.dart';
import 'package:eccomerce_app/service_locator.dart';
import 'package:dartz/dartz.dart';
import 'package:eccomerce_app/core/usecase/usecase.dart';

class IsLoggedInUseCase implements UseCase<bool, dynamic> {
  @override
  Future<bool> call({params}) async {
    return await sl<AuthRepository>().isLoggedIn();
  }
}
