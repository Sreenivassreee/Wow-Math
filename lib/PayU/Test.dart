// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:payumoney/payumoney.dart';
//
// class MyAppPayment extends StatefulWidget {
//   @override
//   _MyAppPaymentState createState() => _MyAppPaymentState();
// }
//
// class _MyAppPaymentState extends State<MyAppPayment> {
//   String _platformVersion = '';
//
//   @override
//   void initState() {
//     super.initState();
//     initPlatformState();
//   }
//
//   // Platform messages are asynchronous, so we initialize in an async method.
//   Future<void> initPlatformState() async {
//     String platformVersion;
//
//     Map map = {
//       "txnId": "123456",
//       "email": "test@test.com",
//       "amount": "10.00",
//       "phone": "9876543210",
//       "product": "Monthly",
//       "firstname": "Test Name",
//       "mkey": "",
//       "mid": ""
//     };
//     try {
//       platformVersion = await Payumoney.paymentStart(map);
//     } on PlatformException {
//       platformVersion = 'Failed to start payment.';
//     }
//
//     // If the widget was removed from the tree while the asynchronous platform
//     // message was in flight, we want to discard the reply rather than calling
//     // setState to update our non-existent appearance.
//     if (!mounted) return;
//
//     setState(() {
//       _platformVersion = platformVersion;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Payment Gateway'),
//         ),
//         body: Center(
//           child: Text(_platformVersion == ""
//               ? 'Payment Started'
//               : "Payment Status : $_platformVersion"),
//         ),
//       ),
//     );
//   }
// }
