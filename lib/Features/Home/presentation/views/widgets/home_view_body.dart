import 'package:bookly_app/Core/utilis/assets/assets.dart';
import 'package:bookly_app/Core/utilis/styles/styles.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/featured_box_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal:24.0),
      child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           CustomAppBar(),
           FeaturedBoxListView(),
           SizedBox(height: 30,),
          Text('Best Seller',style: Styles.titleMedium,),
          BestSellerListViewItem(),
      
        ],
      ),
    );
  }
}
