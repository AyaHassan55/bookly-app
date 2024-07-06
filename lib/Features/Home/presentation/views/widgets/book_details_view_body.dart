import 'package:bookly_app/Features/Home/data/models/book_name/book_name.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/books_details.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false, // because customScrollView is already scroll
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BookDetails(bookModel: bookModel,),
                const Expanded(
                    child: SizedBox(
                  height: 50,
                )),
                const SimilarBooksSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
