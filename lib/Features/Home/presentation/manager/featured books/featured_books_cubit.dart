
import 'dart:developer';

import 'package:bookly_app/Features/Home/data/models/book_name/book_name.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
  
  Future<void> fetchFeaturedBooks() async{
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure){
      emit(FeaturedBooksFailure(failure.errMessage));
      log('^^^^^^^^^^${failure.errMessage}');
    }, (books){
      emit(FeaturedBooksSuccess(books));
    });
  }
}
