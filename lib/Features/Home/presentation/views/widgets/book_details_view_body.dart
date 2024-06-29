import 'package:bookly_app/Features/Home/presentation/views/widgets/books_details.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false, // because customScrollView is already scroll 
          child:  Padding(
      padding:   EdgeInsets.symmetric(horizontal: 30.0),
      child:   Column(
        children: [
          CustomBookDetailsAppBar(),
         
             BookDetails(),
              Expanded(child:  SizedBox(height: 50,)),
            SimilarBooksSection(),

            
        ],
      ),
    ),
        ),
      ],
    );
  
  }
}
