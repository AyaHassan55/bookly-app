import 'package:bookly_app/Core/utilis/assets/assets.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Row(
        children: [
          AspectRatio(aspectRatio: 2.5/4,
          child: Container(
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                image: AssetImage(AssetsData.testImage,),
                fit:BoxFit.fill
                ),
             ),
          ),),
          const Column(children: [
      
          ],),
        ],
      ),
    );
  }
}