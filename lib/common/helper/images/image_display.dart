import 'package:eccomerce_app/core/constants/app_urls.dart';

class ImageDisplayHelper {
  static String generateCategoryImageURL(String imagePath) {
    // Si l'image provenant de Firebase est déjà ton URL Cloudinary complète
    if (imagePath.startsWith('http://') || imagePath.startsWith('https://')) {
      return imagePath;
    }

    // Sinon, on utilise le dossier par défaut défini dans app_urls.dart
    return '${AppUrl.categoryImage}$imagePath';
  }

  static String generateProductImageURL(String title) {
    return AppUrl.productImage + title + AppUrl.alt;
  }
}
