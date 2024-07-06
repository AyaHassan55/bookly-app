
import 'package:bookly_app/Core/utilis/app_router.dart';
import 'package:bookly_app/Core/widgets/custom_error_widget.dart';
import 'package:bookly_app/Core/widgets/custom_progress_indicator.dart';
import 'package:bookly_app/Features/Home/presentation/manager/featured%20books/featured_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});
 

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
            scrollDirection: Axis.horizontal,
             itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding:const EdgeInsets.symmetric(horizontal: 10.0),
                child: InkWell(
                  onTap: (){
                    GoRouter.of(context).push(AppRouter.bookDetailsView,extra: state.books[index]);
                  },
                  child: CustomBookImage(
                    imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail),
                ),
              );
            }),
          );
        }else if(state is FeaturedBooksFailure ){
          return CustomErrorWidget(errMessage: state.errMessage);
        }else{
         return const Center(child:  CustomProgressIndicator());
        }
      }
      
    );
  }
}
