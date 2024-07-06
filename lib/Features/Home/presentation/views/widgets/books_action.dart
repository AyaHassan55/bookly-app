import 'package:bookly_app/Core/utilis/functions/launch_url.dart';
import 'package:bookly_app/Core/widgets/custom_button.dart';
import 'package:bookly_app/Features/Home/data/models/book_name/book_name.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          const Expanded(
              child: CustomButton(
            text: 'Free',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          )),
          Expanded(
              child: CustomButton(
                onPressed: (){
                 launchCustomUrl(context,bookModel.volumeInfo.previewLink!);
                },
            text: getText(bookModel),
            fontSize: 16,
            backgroundColor: const Color.fromARGB(255, 236, 92, 92),
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16)),
          )),
        ],
      ),
    );
  }
  
  String getText(BookModel bookModel) {
    if(bookModel.volumeInfo.previewLink==null){
      return 'Not Available';
    }else{
      return 'Preview';
    }
  }
}
