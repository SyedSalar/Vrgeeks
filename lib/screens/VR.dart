// import 'package:flutter/material.dart';
// import 'package:panorama/panorama.dart';
// import 'package:video_player/video_player.dart';


// class VRView extends StatefulWidget {
//   final String url;

//   VRView({required this.url});

//   @override
//   _VRViewState createState() => _VRViewState();
// }

// class _VRViewState extends State<VRView> {
//   late VideoPlayerController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.network(widget.url)..initialize().then((_) {
//       setState(() {});
//       _controller.play();
//     });
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         child: _controller.value.isInitialized
//             ? Panorama(
//                 child: Image(image: _controller.value.image),
//                 interactive: true,
//                 animSpeed: 0.5,
//                 sensorControl: SensorControl.Orientation,
//               )
//             : Center(child: CircularProgressIndicator()),
//       ),
//     );
//   }
// }
