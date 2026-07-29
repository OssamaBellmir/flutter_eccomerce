import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

abstract class CategoryFirebaseService {
  Future<Either> getCategories();
}

class CategoryFirebaseServiceImpl extends CategoryFirebaseService {
  @override
  Future<Either> getCategories() async {
    try {
      var querySnapshot = await FirebaseFirestore.instance
          .collection('Categories')
          .get();

      // On extrait le Map<String, dynamic> de chaque document
      var categoriesData = querySnapshot.docs.map((doc) => doc.data()).toList();

      return Right(categoriesData);
    } catch (e) {
      return const Left('Please try again');
    }
  }
}
