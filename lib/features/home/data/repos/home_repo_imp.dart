import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImp implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchAllBooks() {
    // TODO: implement fetchAllBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFavouriteBooks() {
    // TODO: implement fetchFavouriteBooks
    throw UnimplementedError();
  }
}
