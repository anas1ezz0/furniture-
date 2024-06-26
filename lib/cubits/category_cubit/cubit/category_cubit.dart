import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:furniture_app/models/category_model.dart';

import '../../../networking/repo.dart';

part 'category_state.dart';

class MyCubit extends Cubit<MyState> {
  final MyRepo myRepo;
  MyCubit(this.myRepo) : super(MyInitial());

  void emitCategoryData() {
    myRepo.getData().then((dataList) {
      emit(GetData(dataList));
    });
  }
}
