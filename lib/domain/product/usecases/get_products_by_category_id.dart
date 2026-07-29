import 'package:dartz/dartz.dart';
import 'package:eccomerce_app/core/usecase/usecase.dart';
import 'package:eccomerce_app/domain/product/repository/product.dart';
import 'package:eccomerce_app/service_locator.dart';

class GetProductsByCategoryIdUseCase implements UseCase<Either, String> {
  @override
  Future<Either> call({String? params}) async {
    return await sl<ProductRepository>().getProductsByCategoryId(params!);
  }
}
