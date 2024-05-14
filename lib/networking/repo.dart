import 'package:furniture_app/models/category_model.dart';
import 'package:furniture_app/models/product_model.dart';
import 'package:furniture_app/networking/api_service.dart';

class MyRepo {
  final ApiService apiService;

  MyRepo(this.apiService);

  Future<List<CategoryModel>> getData() async {
    return await apiService.getData();
  }

  Future<List<ProductsModel>> getproduct() async {
    return await apiService.getproduct();
  }
}
