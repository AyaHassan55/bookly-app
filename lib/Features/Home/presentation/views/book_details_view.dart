import 'package:bookly_app/Features/Home/data/models/book_name/book_name.dart';
import 'package:bookly_app/Features/Home/presentation/manager/similar%20books/similar_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
   BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
    category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }
  
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: BookDetailsViewBody(
        bookModel: widget.bookModel,
      )),
    );
  }
}
