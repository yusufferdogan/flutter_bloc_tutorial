class Book {
  final String id;
  final String title;
  final String genres;
  final String imageUrl;
  final String isbn;
  final String pageNum;
  final String pubYear;
  final String writer;
  final String rating;

  Book({
    this.id,
    this.title,
    this.genres,
    this.imageUrl,
    this.isbn,
    this.pageNum,
    this.pubYear,
    this.writer,
    this.rating,
  });

  @override
  String toString() {
    return '\n Id:$id  '
        'TITLE:$title  '
        'GENRES:$genres  '
        'IMAGEURL:${imageUrl.toLowerCase()}  '
        'ISBN:$isbn  '
        'PAGENUM:$pageNum  '
        'PUBYEAR:$pubYear  '
        'WRITER:$writer  '
        'RATING:$rating\n';
  }

  factory Book.fromJson(String id, Map<String, dynamic> bookData) {
    return Book(
      id: id.toString(),
      genres: bookData['GENRES'].toString(),
      imageUrl: bookData['IMAGEURL'].toString().toLowerCase(),
      isbn: bookData['ISBN'].toString(),
      pageNum: bookData['PAGENUM'].toString(),
      pubYear: bookData['PUBYEAR'].toString(),
      title: bookData['TITLE'].toString(),
      writer: bookData['WRITER'].toString(),
      rating: bookData['RATING'].toString(),
    );
  }
  bool isEqual(Book other) {
    return other.id == id;
  }
}
