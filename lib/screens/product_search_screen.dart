// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task_e_commerce/components/controller.dart';
import 'package:task_e_commerce/cubit/search_product_cubit.dart';
import 'package:task_e_commerce/cubit/search_product_state.dart';
import 'package:task_e_commerce/services/colors.dart';

import '../widgets/custom_search_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_language_fonts/google_language_fonts.dart';

class ProductSearchScreen extends StatefulWidget {
  const ProductSearchScreen({super.key});

  @override
  State<ProductSearchScreen> createState() => _ProductSearchScreenState();
}


class _ProductSearchScreenState extends State<ProductSearchScreen> {
  @override
  void initState() {
     var cubit = context.read<SearchProductCubit>();
    cubit.faceSearchProduct(quarry: "");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appbackGroundColor,
      body: SingleChildScrollView (
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 15, left: 8, right: 8),
            child: Column(
              children: [
                CustomSearchField(
                  controller: FieldController.searchController,
                  onChanged: (value) {
                    var cubit = context.read<SearchProductCubit>();
                    cubit.faceSearchProduct(quarry: FieldController.searchController.text);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                BlocBuilder<SearchProductCubit , SearchProductState>(
                  builder: (context, state) {
                    if( state is InitSearchProductState ||state is LoddingSearchProductState ){
                      return CircularProgressIndicator();
                    }else if (state is ErrorSearchProductState){
                      return Text("Some thing is rong");
                    }else if (state is ResponceSearchProductState){
                      var data = state.searchProductList;
                      if(data.isNotEmpty){
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: data.length,
                          itemBuilder: (context , index){
                            return Text(data[index].productName.toString(),style: BengaliFonts.mina(),);
                          }
                        );
                      }else{
                        return Text("Your serch product not found");
                      }
                    }
                    return CircularProgressIndicator();
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
