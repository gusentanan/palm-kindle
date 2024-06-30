import 'package:palmkindle/data/network_data_sources/dto/books_model.dart';
import 'package:palmkindle/domain/model/book_detail_model.dart';

class Mapper {
  BookDetailModel mapResultsToBookDetailModel(Results results) {
    String? authors = results.authors?.map((author) => author.name).join(', ');

    String? birthYear = results.authors?.isNotEmpty ?? false
        ? results.authors!.first.birthYear?.toString()
        : null;
    String? deathYear = results.authors?.isNotEmpty ?? false
        ? results.authors!.first.deathYear?.toString()
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
}
