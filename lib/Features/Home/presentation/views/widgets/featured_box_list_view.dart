import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedBoxListView extends StatelessWidget {
  const FeaturedBoxListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3, 
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
      itemBuilder: (context,index){
        return const Padding(
          padding:   EdgeInsets.symmetric(horizontal: 2.0),
          child:  CustomBookImage(),
        );
      }),
    );
  }
}
