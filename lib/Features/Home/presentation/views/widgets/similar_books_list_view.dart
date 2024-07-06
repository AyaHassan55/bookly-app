import 'package:bookly_app/Core/widgets/custom_error_widget.dart';
import 'package:bookly_app/Core/widgets/custom_progress_indicator.dart';
import 'package:bookly_app/Features/Home/presentation/manager/similar%20books/similar_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * .2,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.0),
            child: CustomBookImage(imageUrl: 'https://in.pinterest.com/pin/AcjxcogA1T_vjaXWyXouzxhFupHXx52IN9Ei15-6BeYGoapPi9hxPgk/',),
          );
        }
        ),
  );
}else if(state is SimilarBooksFailure){
  return CustomErrorWidget(errMessage: state.errMessage,);
}else{
  return const CustomProgressIndicator();
}
      }
      );
    
  }
}
