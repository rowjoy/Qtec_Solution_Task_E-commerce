import 'package:bloc/bloc.dart';
import 'package:task_e_commerce/cubit/search_product_state.dart';
import 'package:task_e_commerce/repository/search_product_repository.dart';


class SearchProductCubit extends Cubit<SearchProductState>{
  final SearchRepository _searchRepository;
  SearchProductCubit(this._searchRepository) : super(InitSearchProductState());

  Future<void>faceSearchProduct()async{
    emit(LoddingSearchProductState());
    try{
      final responce = await _searchRepository.searchProduct();
      emit(ResponceSearchProductState(responce));
    }catch(e){
      emit(ErrorSearchProductState(e.toString()));
    }
  }
}

//https://youtu.be/Pf7R4sBHeNc
