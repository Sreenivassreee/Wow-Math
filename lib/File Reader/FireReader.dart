import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class PDFReader extends StatefulWidget {
  @override
  _PDFReaderState createState() => _PDFReaderState();
}

class _PDFReaderState extends State<PDFReader> {
  bool? _isLoading = false;
  PDFDocument? document;

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
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
      "https://firebasestorage.googleapis.com/v0/b/final-e7ea8.appspot.com/o/BATCH%2007%20FINAL%20DOCUMENTATION.pdf?alt=media&token=ae0cff34-3e20-40e0-ae8b-b3e5f3b9bcf7",
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
  void dispose() {
    // TODO: implement dispose
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.dispose();
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
                navigationBuilder:
                    (context, page, totalPages, jumpToPage, animateToPage) {
                  return SizedBox(
                    height: 10,
                  );
                }
                /* return ButtonBar(
                    alignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.first_page),
                        onPressed: () {
                          // jumpToPage()(page: 0);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          // animateToPage(page: page - 2);
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
                          // jumpToPage(page: totalPages - 1);
                        },
                      ),
                    ],
                  );
                },*/
                ),
      ),
    );
  }
}
