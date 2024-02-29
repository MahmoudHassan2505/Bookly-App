import 'package:bookly_app/features/home/presentation/views/widgets/book_item.dart';
import 'package:flutter/cupertino.dart';

class YouCanAlsoLike extends StatelessWidget {
  const YouCanAlsoLike({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => const BookItem(),
      ),
    );
  }
}
