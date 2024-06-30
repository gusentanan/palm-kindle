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

  BookDetailModel mapBookToBookDetailModel(Book book) {
    List<String>? subjects = book.subjects.split(', ').toList();

    return BookDetailModel(
      id: book.id ?? 0,
      title: book.title,
      authors: book.author,
      birthYear: book.birthYear,
      deathYear: book.deathYear,
      subjects: subjects,
      bookshelves: [], // Assuming empty for now, adjust as needed
      languages: [], // Assuming empty for now, adjust as needed
      copyright: null, // Assuming null for now, adjust as needed
      imgJpeg: book.imageUrl,
      textPlain: book.textUrl,
      downloadCount: null, // Assuming null for now, adjust as needed
    );
  }

  Results mapBookToResults(Book book) {
    // Assuming subjects are stored as a comma-separated string in Book and need to be split into a list
    List<String> subjects = book.subjects.split(', ');

    // Assuming author is a single string in Book and needs to be converted to an Author object
    Authors author = Authors(
      name: book.author,
      birthYear: book.birthYear,
      deathYear: book.deathYear,
    );

    // Assuming formats are extracted from the Book fields
    Formats formats = Formats(
      imageJpeg: book.imageUrl,
      textPlain: book.textUrl,
    );

    return Results(
      id: book.id ?? 0, // Default to 0 if id is null
      title: book.title,
      authors: [author], // Assuming only one author for simplicity
      subjects: subjects,
      formats: formats,
      copyright: false, // Assuming false for now, adjust as needed
      downloadCount: 0, bookshelves: [], languages: [],
      mediaType: '', // Assuming 0 for now, adjust as needed
    );
  }
}
