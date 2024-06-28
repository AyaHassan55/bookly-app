import 'package:bookly_app/Core/utilis/styles.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/featured_box_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
           child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
             children: [
                CustomAppBar(),
                FeaturedBoxListView(),
                SizedBox(height: 30,),
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 30.0),
                 child: Text('Best Seller',style: Styles.textStyle18,),
               ),
               SizedBox(height: 20,),
               
           
             ],
           ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
    
  }
}

