import 'package:dartz/dartz.dart';
import 'package:eccomerce_app/data/category/models/category.dart';
import 'package:eccomerce_app/data/category/souce/category_firebase_service.dart';
import 'package:eccomerce_app/domain/category/entity/category.dart';
import 'package:eccomerce_app/domain/category/repository/category.dart';
import 'package:eccomerce_app/service_locator.dart';

class CategoryRepositoryImpl extends CategoryRepository {
  @override
  Future<Either> getCategories() async {
    var categories = await sl<CategoryFirebaseService>().getCategories();

    return categories.fold(
      (error) {
        return Left(error);
      },
      (data) {
        // 'data' est maintenant une List<Map<String, dynamic>>
        List<dynamic> dataList = data;

        // On boucle sur la liste pour convertir chaque élément
        List<CategoryEntity> categoriesList = dataList.map((map) {
          return CategoryModel.fromMap(map as Map<String, dynamic>).toEntity();
        }).toList();

        // On retourne bien la liste complète !
        return Right(categoriesList);
      },
    );
  }
}
