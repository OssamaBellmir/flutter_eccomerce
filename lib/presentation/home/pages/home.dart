import 'package:eccomerce_app/presentation/home/widgets/categories.dart';
import 'package:eccomerce_app/presentation/home/widgets/header.dart';
import 'package:eccomerce_app/presentation/home/widgets/search_field.dart';
import 'package:eccomerce_app/presentation/home/widgets/top_selling.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 45),
            Header(),
            SizedBox(height: 24),
            SearchField(),
            SizedBox(height: 24),
            Categories(),
            SizedBox(height: 24),
            TopSelling(), // <-- Ajoute ton widget ici !
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
