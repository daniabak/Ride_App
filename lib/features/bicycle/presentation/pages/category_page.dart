import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rideshare_app/features/bicycle/presentation/bloc/bicycle_bloc.dart';
import 'package:rideshare_app/features/bicycle/presentation/widgets/categories_widget.dart';
import 'package:rideshare_app/core/injection_container.dart' as di;

// ignore: must_be_immutable
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)  {
        return di.getInj<BicycleBloc>()..add(const BicycleEvent.getCategories());
      },

      child: Builder(
        builder: (context) {
          context.read<BicycleBloc>().add((const BicycleEvent.getCategories()));
          return Scaffold(
            //     appBar: AppBar(
            //   leading: backAppBar(),
            // ),
            body: BlocBuilder<BicycleBloc, BicycleState>(
              builder: (context, state) {
                return state.whenOrNull(
                      loaing: () {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                      categoriesLoaded: (categories) {
                        print("Categories loaded.");
                        return CategoriesWidget(
                          categories: categories,
                        );
                      },
                      error: (message) {
                        return Center(
                          child: Text(message),
                        );
                      },
                    ) ??
                    const Center(
                      child: Text(
                          'Something went wrong or no state change detected.'),
                    );
              },
            ),
          );
        },
      ),
    );
  }
}
