import 'package:bookly_app/Core/utilis/styles.dart';
import 'package:bookly_app/Features/Home/data/models/book_name/book_name.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key, required this.bookModel});
 final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child:  CustomBookImage(
            imageUrl: bookModel.volumeInfo.imageLinks.thumbnail),
        ),
        const SizedBox(
          height: 16,
        ),
         Align(
          alignment: Alignment.center,
           child: Text(
            bookModel.volumeInfo.title!,
            style: Styles.textStyle30,
                   ),
         ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(bookModel.volumeInfo.authors![0],
              style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500)),
        ),
        const SizedBox(
          height: 18,
        ),
         const BookRating(
          mainAxisAlignment: MainAxisAlignment.center, rating: '', count: '',
        ),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
