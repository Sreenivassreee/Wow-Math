// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:flutter_cache_manager/flutter_cache_manager.dart';
// import 'package:pdf_render/pdf_render_widgets.dart';
//
// class Reader extends StatefulWidget {
//   @override
//   _ReaderState createState() => _ReaderState();
// }
//
// class _ReaderState extends State<Reader> {
//   final controller = PdfViewerController();
//
//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home: new Scaffold(
//         appBar: new AppBar(
//           title: ValueListenableBuilder<Object>(
//               // The controller is compatible with ValueListenable<Matrix4> and you can receive notifications on scrolling and zooming of the view.
//               valueListenable: controller,
//               builder: (context, _, child) => Text(controller.isReady
//                   ? 'Page #${controller.currentPageNumber}'
//                   : 'Page -')),
//         ),
//         backgroundColor: Colors.grey,
//         body: Platform.isMacOS
//             // Networking sample using flutter_cache_manager
//             ? PdfViewer.openFutureFile(
//                 // Accepting function that returns Future<String> of PDF file path
//                 () async => (await DefaultCacheManager().getSingleFile(
//                         'https://console.firebase.google.com/u/0/project/final-e7ea8/storage/final-e7ea8.appspot.com/files'))
//                     .path,
//                 viewerController: controller,
//                 onError: (err) => print(err),
//                 params: PdfViewerParams(
//                   padding: 10,
//                   minScale: 1.0,
//                 ),
//               )
//             : PdfViewer.openAsset(
//                 'assets/hello.pdf',
//                 viewerController: controller,
//                 onError: (err) => print(err),
//                 params: PdfViewerParams(
//                   padding: 10,
//                   minScale: 1.0,
//                 ),
//               ),
//         floatingActionButton: Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: <Widget>[
//             FloatingActionButton(
//               child: Icon(Icons.first_page),
//               onPressed: () => controller.ready?.goToPage(pageNumber: 1),
//             ),
//             FloatingActionButton(
//               child: Icon(Icons.last_page),
//               onPressed: () =>
//                   controller.ready?.goToPage(pageNumber: controller.pageCount),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
