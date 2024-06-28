import 'package:bookly_app/Core/utilis/assets.dart';
import 'package:bookly_app/Core/utilis/styles.dart';
import 'package:bookly_app/constant.dart';
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
          const SizedBox(width: 20,),
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(width: MediaQuery.of(context).size.width *.5,
             child:  Text('Harry Potter and the Goblet of Fire',
             style:Styles.textStyle20.copyWith(fontFamily: kGtSectraFine,),
             maxLines: 2,
             overflow: TextOverflow.ellipsis,
             )),
             const SizedBox(height: 3,),
             const Text('J.K. Rowing',style: Styles.textStyle14,),
             const SizedBox(height: 3,),
              Row(
              children: [
                Text('19,99 €', style: Styles.textStyle20.copyWith(fontWeight:FontWeight.bold),),
              ],
             ),

      
          ],),
        ],
      ),
    );
  }
}