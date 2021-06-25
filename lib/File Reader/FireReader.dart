import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PDFReader extends StatefulWidget {
  @override
  _PDFReaderState createState() => _PDFReaderState();
}

class _PDFReaderState extends State<PDFReader> {
  bool? _isLoading = false;
  PDFDocument? document;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }
  //
  // loadDocument() async {
  //   document = await PDFDocument.fromAsset('assets/sample.pdf');
  //
  //   setState(() => _isLoading = false);
  // }

  loadDocument() async {
    setState(() => _isLoading = true);
    document = await PDFDocument.fromURL(
      "https://firebasestorage.googleapis.com/v0/b/final-e7ea8.appspot.com/o/DT20206307665-2.pdf?alt=media&token=2e1488d8-b2d6-4389-8aca-185be4535ef2",
      // cacheManager: CacheManager(
      //   Config(
      //     "customCacheKey",
      //     stalePeriod: const Duration(days: 2),
      //     maxNrOfCacheObjects: 10,
      //   ),
      // ),
    );

    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _isLoading!
            ? Center(child: CircularProgressIndicator())
            : PDFViewer(
                document: document!,
                zoomSteps: 1,
                scrollDirection: Axis.vertical,
                //uncomment below line to preload all pages
                lazyLoad: false,
                // uncomment below line to scroll vertically
                // scrollDirection: Axis.vertical,

                //uncomment below code to replace bottom navigation with your own
                /* navigationBuilder:
                      (context, page, totalPages, jumpToPage, animateToPage) {
                    return ButtonBar(
                      alignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.first_page),
                          onPressed: () {
                            jumpToPage()(page: 0);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            animateToPage(page: page - 2);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_forward),
                          onPressed: () {
                            animateToPage(page: page);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.last_page),
                          onPressed: () {
                            jumpToPage(page: totalPages - 1);
                          },
                        ),
                      ],
                    );
                  }, */
              ),
      ),
    );
  }
}
