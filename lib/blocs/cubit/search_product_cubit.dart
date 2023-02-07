import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'search_product_state.dart';

class SearchProductCubit extends Cubit<SearchProductState> {
  SearchProductCubit() : super(SearchProductInitial());
}
