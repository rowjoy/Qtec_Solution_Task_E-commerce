import 'package:task_e_commerce/models/product_mobel.dart';

abstract class SearchProductState{}

class InitSearchProductState extends SearchProductState{
  
}
class LoddingSearchProductState extends SearchProductState {

}
class ErrorSearchProductState extends SearchProductState {
  final String errorMessage;
  ErrorSearchProductState(this.errorMessage);
}
class ResponceSearchProductState extends SearchProductState {
  List<Result> searchProductList;
  ResponceSearchProductState(this.searchProductList);
}
