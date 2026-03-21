import 'package:eccomerce_app/data/auth/repository/auth_repository_impl.dart';
import 'package:eccomerce_app/data/auth/source/auth_firebase_service.dart';
import 'package:eccomerce_app/domain/auth/usecases/send_password_reset_email..dart';
import 'package:eccomerce_app/domain/auth/usecases/signin.dart';
import 'package:get_it/get_it.dart';
import 'package:eccomerce_app/domain/auth/repository/auth.dart';
import 'package:eccomerce_app/domain/auth/usecases/siginup.dart';
import 'package:eccomerce_app/domain/auth/usecases/get_ages.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Service
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());

  // Repository
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  // UseCase
  sl.registerSingleton<SignupUseCase>(SignupUseCase());
  sl.registerSingleton<GetAgesUseCase>(GetAgesUseCase());
  sl.registerSingleton<SigninUseCase>(SigninUseCase());
  sl.registerSingleton<SendPasswordResetEmailUseCase>(SendPasswordResetEmailUseCase());
}
