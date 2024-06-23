import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rideshare_app/models/result_model.dart';
import 'package:rideshare_app/services/mock/mock_categories_services.dart';
import '../../models/response/categorymodel.dart';
part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(const CategoryState.loading()) {
    on<CategoryEvent>((event, emit) async  {
      event.when(getCategories:() async {
        emit(const CategoryState.loading());
        try{
          var data= await MockCategoriesServices().getCategories();
           if(data is ListOf<CategoryModel>){
             emit(CategoryState.loaded(data.resutl));
           }
           else{
             emit(const CategoryState.error());
           }
        }catch (e){
            throw e.toString();
        }
      } );
    });
  }
}
