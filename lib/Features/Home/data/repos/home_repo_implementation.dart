import 'package:bookly_app/Core/errors/failures.dart';
import 'package:bookly_app/Core/utilis/api_serves.dart';
import 'package:bookly_app/Features/Home/data/models/book_name/book_name.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplementation implements HomeRepo{
  final ApiService apiService;

  HomeRepoImplementation( this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async{
      try {
  var data=await apiService.get(endPoint:
   'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
  List<BookModel>books=[];
  for(var item in data['items']){
    books.add(BookModel.fromJson(item));
  }
  return right(books);
}  catch (e) {
  if (e is DioException){
    return left(ServerFailure.fromDioError(e));
  }
  return left(ServerFailure(e.toString()));
}
  
  
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks()async {
     try {
      var data=await apiService.get
      (endPoint: 'volumes?Filtering=free-ebooks&q=programming');
  List<BookModel>books=[];
  for(var item in data['items']){
    books.add(BookModel.fromJson(item));
  }
  return right(books);
}  catch (e) {
  if (e is DioException){
    return left(ServerFailure.fromDioError(e));
  }
  return left(ServerFailure(e.toString()));
}
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category})async {
     try {
      var data=await apiService.get
      (endPoint: 'volumes?Filtering=free-ebooks&Sorting=relevance&q=programming');
  List<BookModel>books=[];
  for(var item in data['items']){
    books.add(BookModel.fromJson(item));
  }
  return right(books);
}  catch (e) {
  if (e is DioException){
    return left(ServerFailure.fromDioError(e));
  }
  return left(ServerFailure(e.toString()));
}
  }

}