abstract class SearchProductState{}

class InitSearchProductState extends SearchProductState{}
class LoddingSearchProductState extends SearchProductState {}
class ErrorSearchProductState extends SearchProductState {
  final  String errorMessage;
  ErrorSearchProductState(this.errorMessage);
}
class ResponceSearchProductState extends SearchProductState {
  List<dynamic> searchProductList;
  ResponceSearchProductState(this.searchProductList);
}
