import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_listview.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action_button.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/rating_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomBookDetialsAppbar(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.3,
                  vertical: 30,
                ),
                child: const BookItem(),
              ),
              const SizedBox(
                child: Text(
                  'The Jungle Book',
                  style: Styles.TextStyle25,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Rudyard Kipling',
                style: Styles.TextStyle12,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 18,
              ),
              const RatingItem(),
              const SizedBox(
                height: 30,
              ),
              const BooksActionButtons(),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 31),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.TextStyle16.copyWith(
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const Expanded(
                  child: SizedBox(
                height: 150,
                child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 30, bottom: 15),
                  child: BookListView(),
                ),
              )),
            ],
          ),
        )
      ],
    );
  }
}
