import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rideshare_app/bloc/Items/items_bloc.dart';
import '../core/utils/color_manager.dart';
import '../core/utils/style_maneger.dart';
import '../widgets/button_without_fill.dart';
import '../widgets/items_builder.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key, required this.id});
final int id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ItemsBloc(),
      child: Builder(
        builder: (context) {
          context.read<ItemsBloc>().add(( ItemsEvent.getItems(id)));
          return Scaffold(
            appBar: AppBar(
              leading:  IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon:Icon(Icons.arrow_back_ios_new_rounded,size: 14,color: Color(0xff414141),)),
            ),
            body: BlocBuilder<ItemsBloc,ItemsState>(
              builder:(context,state){
                return state.when(loading: (){
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }, loaded: (items){
                     return ItemsBuilder(items:items);
                    },
                       error: () {
                          return Text("errroe");
                        }
                );
              },
            ) ,
          );
        }
      ),
    );
  }
}
