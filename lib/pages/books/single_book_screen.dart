import 'dart:ui';
import 'package:bloc_deneme/models/book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleBookScreen extends StatelessWidget {
  final Book book;

  const SingleBookScreen({Key key, this.book}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightGreen[100],
        appBar: AppBar(
          title: Text(book.title),
          backgroundColor: Colors.brown,
        ),
        body: SingleChildScrollView(
          child: Container(
//          padding: EdgeInsets.symmetric(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Image.network(
                    book.imageUrl.toLowerCase(),
                    fit: BoxFit.cover,
                    width: size.width / 2,
                    filterQuality: FilterQuality.high,
                  ),
//                height: 400,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Text(
                        'NAME:',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      title: Text(
                        '${book.title}',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.clip,
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        'WRITER:',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        '${book.writer}',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        'GENRE:',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        '${book.genres}',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        'NUMBER OF PAGES:',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        '${book.pageNum}',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        'PUBLISH YEAR:',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        '${book.pubYear}',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        'ISBN:',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        '${book.isbn}',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Text(
                        'RATING:',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        '${book.rating}',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
