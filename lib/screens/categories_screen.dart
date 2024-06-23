import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rideshare_app/bloc/categories/category_bloc.dart';
import 'package:rideshare_app/widgets/categories_widget.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoryBloc(),
        child: Builder(
          builder: (context) {
            context.read<CategoryBloc>().add((const CategoryEvent.getCategories()));
            return  Scaffold(
              body: BlocBuilder<CategoryBloc,CategoryState>(
                builder:(context,state){
                  return state.when(
                  loading: (){
                    return const CircularProgressIndicator();
                  }, loaded: (categories){
                    return
                          CategoriesWidget(categories: categories,);

                  }, error: (){
                          return Text("errrrrrrrrrrrrror");
                  });
                }
              ),
            );
          }
        ),
    );
  }
}
