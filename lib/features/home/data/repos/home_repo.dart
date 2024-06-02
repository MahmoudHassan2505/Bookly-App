import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  //this method will take time to fetch data so it will be future return type
  //there colud be an error when fetching data so the return type may be null
  //so  if request succes it will return book model if failed it will return something else (retrun  two data TYPE !!!!!!!!!)
  // there is a package called dartz
//------------------------------------------------------------
  // Future<List<BookModel>> fetchAllBooks();
  // Future<List<BookModel>> fetchFavouriteBooks();
//--------------------------------------------------------
//   Future<Either<L,R>> fetchAllBooks();
//   L --> data type at Failure
//   R --> data type at Success
//----------------------------------------------
  Future<Either<Failure, List<BookModel>>> fetchAllBooks();
  Future<Either<Failure, List<BookModel>>> fetchFavouriteBooks();
}
