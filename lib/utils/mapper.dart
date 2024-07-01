import 'package:palmkindle/data/local_data_sources/entity/book_entity.dart';
import 'package:palmkindle/data/network_data_sources/dto/books_model.dart';
import 'package:palmkindle/domain/model/book_detail_model.dart';

class Mapper {
  BookDetailModel mapResultsToBookDetailModel(Results results) {
    String? authors = results.authors?.map((author) => author.name).join(', ');

    int? birthYear = results.authors?.isNotEmpty ?? false
        ? results.authors!.first.birthYear
        : null;
    int? deathYear = results.authors?.isNotEmpty ?? false
        ? results.authors!.first.deathYear
        : null;

    String? imgJpeg = results.formats?.imageJpeg;
    String? textPlain = results.formats?.textPlain;

    return BookDetailModel(
      id: results.id,
      title: results.title,
      authors: authors,
      birthYear: birthYear,
      deathYear: deathYear,
      subjects: results.subjects,
      bookshelves: results.bookshelves,
      languages: results.languages,
      copyright: results.copyright,
      imgJpeg: imgJpeg,
      textPlain: textPlain,
      downloadCount: results.downloadCount,
    );
  }

  // All empty/null properties are because they are not needed in the UI.
  // Further adjustments will be made in the future.
  BookDetailModel mapBookToBookDetailModel(Book book) {
    return BookDetailModel(
      id: book.id ?? 0,
      title: book.title,
      authors: book.author,
      birthYear: book.birthYear,
      deathYear: book.deathYear,
      subjects: book.subjects,
      bookshelves: [],
      languages: [],
      copyright: null,
      imgJpeg: book.imageUrl,
      textPlain: book.textUrl,
      downloadCount: null,
    );
  }

// Mapper to convert Book to Results
  Results mapBookToResults(Book book) {
    Authors author = Authors(
      name: book.author,
      birthYear: book.birthYear,
      deathYear: book.deathYear,
    );

    Formats formats = Formats(
      imageJpeg: book.imageUrl,
      textPlain: book.textUrl,
    );

    // Further adjustments will be made in the future.
    return Results(
      id: book.id ?? 0,
      title: book.title,
      authors: [author],
      subjects: book.subjects,
      formats: formats,
      copyright: false,
      downloadCount: 0,
      bookshelves: [],
      languages: [],
      mediaType: '',
    );
  }
}
