import 'package:bookly_app/Core/utilis/styles.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        

            Text('You Can also Like',
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w600
            ),
            ),
            const SizedBox(height: 16,),
            const SimilarBooksListView(),
      ],
    );
  }
}