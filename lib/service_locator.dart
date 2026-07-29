import 'package:eccomerce_app/data/order/repository/order.dart';
import 'package:eccomerce_app/data/order/source/order_firebase_service.dart';
import 'package:eccomerce_app/domain/order/repository/order.dart';
import 'package:eccomerce_app/domain/order/usecases/add_to_cart.dart';
import 'package:eccomerce_app/domain/order/usecases/get_cart_products.dart';
import 'package:eccomerce_app/domain/order/usecases/get_orders.dart';
import 'package:eccomerce_app/domain/order/usecases/order_registration.dart';
import 'package:eccomerce_app/domain/order/usecases/remove_cart_product.dart';
import 'package:eccomerce_app/domain/product/usecases/add_or_remove_favorite_product.dart';
import 'package:eccomerce_app/domain/product/usecases/get_favorties_products.dart';
import 'package:eccomerce_app/domain/product/usecases/get_new_in.dart';
import 'package:eccomerce_app/domain/product/usecases/get_products_by_category_id.dart';
import 'package:eccomerce_app/domain/product/usecases/get_products_by_title.dart';
import 'package:eccomerce_app/domain/product/usecases/is_favorite.dart';
import 'package:get_it/get_it.dart';

// --- Services ---
import 'package:eccomerce_app/data/auth/source/auth_firebase_service.dart';
import 'package:eccomerce_app/data/category/souce/category_firebase_service.dart';
import 'package:eccomerce_app/data/product/source/product_firebase_service.dart';

// --- Repositories (Implémentations) ---
import 'package:eccomerce_app/data/auth/repository/auth_repository_impl.dart';
import 'package:eccomerce_app/data/category/repository/category.dart';
import 'package:eccomerce_app/data/product/repository/product.dart';

// --- Repositories (Contrats / Interfaces) ---
import 'package:eccomerce_app/domain/auth/repository/auth.dart';
import 'package:eccomerce_app/domain/category/repository/category.dart';
import 'package:eccomerce_app/domain/product/repository/product.dart';

// --- UseCases ---
import 'package:eccomerce_app/domain/auth/usecases/get_ages.dart';
import 'package:eccomerce_app/domain/auth/usecases/get_user.dart';
import 'package:eccomerce_app/domain/auth/usecases/is_logged_in.dart';
import 'package:eccomerce_app/domain/auth/usecases/send_password_reset_email..dart';
import 'package:eccomerce_app/domain/auth/usecases/siginup.dart';
import 'package:eccomerce_app/domain/auth/usecases/signin.dart';
import 'package:eccomerce_app/domain/category/usecases/get_categories.dart';
import 'package:eccomerce_app/domain/product/usecases/get_top_selling.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Services

  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());

  sl.registerSingleton<CategoryFirebaseService>(CategoryFirebaseServiceImpl());

  sl.registerSingleton<ProductFirebaseService>(ProductFirebaseServiceImpl());

  sl.registerSingleton<OrderFirebaseService>(OrderFirebaseServiceImpl());

  // Repositories

  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  sl.registerSingleton<CategoryRepository>(CategoryRepositoryImpl());

  sl.registerSingleton<ProductRepository>(ProductRepositoryImpl());

  sl.registerSingleton<OrderRepository>(OrderRepositoryImpl());

  // Usecases

  sl.registerSingleton<SignupUseCase>(SignupUseCase());

  sl.registerSingleton<GetAgesUseCase>(GetAgesUseCase());

  sl.registerSingleton<SigninUseCase>(SigninUseCase());

  sl.registerSingleton<SendPasswordResetEmailUseCase>(
    SendPasswordResetEmailUseCase(),
  );

  sl.registerSingleton<IsLoggedInUseCase>(IsLoggedInUseCase());

  sl.registerSingleton<GetUserUseCase>(GetUserUseCase());

  sl.registerSingleton<GetCategoriesUseCase>(GetCategoriesUseCase());

  sl.registerSingleton<GetTopSellingUseCase>(GetTopSellingUseCase());

  sl.registerSingleton<GetNewInUseCase>(GetNewInUseCase());

  sl.registerSingleton<GetProductsByCategoryIdUseCase>(
    GetProductsByCategoryIdUseCase(),
  );

  sl.registerSingleton<GetProductsByTitleUseCase>(GetProductsByTitleUseCase());

  sl.registerSingleton<AddToCartUseCase>(AddToCartUseCase());

  sl.registerSingleton<GetCartProductsUseCase>(GetCartProductsUseCase());

  sl.registerSingleton<RemoveCartProductUseCase>(RemoveCartProductUseCase());

  sl.registerSingleton<OrderRegistrationUseCase>(OrderRegistrationUseCase());

  sl.registerSingleton<AddOrRemoveFavoriteProductUseCase>(
    AddOrRemoveFavoriteProductUseCase(),
  );

  sl.registerSingleton<IsFavoriteUseCase>(IsFavoriteUseCase());

  sl.registerSingleton<GetFavortiesProductsUseCase>(
    GetFavortiesProductsUseCase(),
  );

  sl.registerSingleton<GetOrdersUseCase>(GetOrdersUseCase());
}
