import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/cubits/products_cubit/product_state.dart';
import 'package:furniture_app/networking/repo.dart';

class MyProductCubit extends Cubit<MyProductState> {
  final MyRepo myRepo;
  MyProductCubit(this.myRepo) : super(MyProductInitial());

  void emitProductData() {
    myRepo.getproduct().then((productDate) {
      emit(GetProductData(productDate));
    });
  }
}
