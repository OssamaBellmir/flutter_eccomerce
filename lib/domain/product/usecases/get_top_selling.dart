import 'package:dartz/dartz.dart';
import 'package:eccomerce_app/core/usecase/usecase.dart';
import 'package:eccomerce_app/domain/product/repository/product.dart';
import 'package:eccomerce_app/service_locator.dart';

class GetTopSellingUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({dynamic params}) async {
    return await sl<ProductRepository>().getTopSelling();
  }
}
