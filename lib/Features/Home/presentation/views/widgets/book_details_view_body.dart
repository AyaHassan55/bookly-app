import 'package:bookly_app/Core/utilis/styles.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return  Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 30.0),
      child:   Column(
        children: [
         const CustomBookDetailsAppBar(),
         
         Padding(
           padding: EdgeInsets.symmetric(horizontal: width*.2),
           child: const CustomBookImage(),
    
         ),
         const SizedBox(height:16,),
         const Text('The Jungle Book',style: Styles.textStyle30,),
         const SizedBox(height: 6,),
          Opacity(
            opacity: 0.7,
            child: Text('Rudyard Kipling',style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500
            )),
          ),

         
        ],
      ),
    );
  }
}
