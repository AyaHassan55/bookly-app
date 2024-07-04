import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.0),
              child: CustomBookImage(imageUrl: 'https://in.pinterest.com/pin/AcjxcogA1T_vjaXWyXouzxhFupHXx52IN9Ei15-6BeYGoapPi9hxPgk/',),
            );
          }),
    );
  }
}
