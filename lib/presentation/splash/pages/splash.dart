import 'package:eccomerce_app/core/configs/assets/app_vectors.dart';
import 'package:eccomerce_app/core/configs/theme/app_colors.dart';
import 'package:eccomerce_app/core/configs/theme/app_theme.dart';
import 'package:eccomerce_app/presentation/auth/pages/siginin.dart';
import 'package:eccomerce_app/presentation/splash/pages/bloc/splash_cubit.dart';
import 'package:eccomerce_app/presentation/splash/pages/bloc/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is UnAuthenticated) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => SignInPage()),
          );
        }
      },

      child: Scaffold(
        backgroundColor:
            AppColors.primary, // <-- La virgule manquante était ici
        body: Center(
          child: SvgPicture.asset(
            AppVectors
                .appLogo, // <-- Ajout d'une virgule ici pour un meilleur formatage
          ),
        ),
      ),
    );
  }
}
