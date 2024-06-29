import 'package:bookly_app/Core/errors/failures.dart';
import 'package:bookly_app/Features/Home/data/models/book_name/book_name.dart';
// ignore: depend_on_referenced_packages
import 'package:dartz/dartz.dart';
abstract class HomeRepo{
  Future<Either<Failure,List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
}