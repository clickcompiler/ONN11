// import 'dart:developer';
// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:flutter_polyline_points/flutter_polyline_points.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:location/location.dart';

// class MyMapPage extends StatefulWidget {
//   const MyMapPage({Key? key, this.desLat, this.srcLat}) : super(key: key);
//   final LatLng srcLat;
//   final LatLng desLat;

//   @override
//   State<MyMapPage> createState() => _MyMapPageState();
// }

// class _MyMapPageState extends State<MyMapPage> {
//   LatLng sourceLocation = LatLng(23.3441, 85.3096);
//   LatLng destination = LatLng(23.6363, 85.5124);
//   List<LatLng> polylineCoordinates = [];
//   LocationData currentLocation;
//   void getCurrentLocation() {
//     Location location = Location();
//     location.getLocation().then((location) {
//       currentLocation = location;
//     });
//   }

//   double totalDistance = 0;
//   double distance = 0.0;
//   getdistance() {
//     //polulineCoordinates is the List of longitute and latidtude.

//     for (var i = 0; i < polylineCoordinates.length - 1; i++) {
//       totalDistance += calculateDistance(
//           polylineCoordinates[i].latitude,
//           polylineCoordinates[i].longitude,
//           polylineCoordinates[i + 1].latitude,
//           polylineCoordinates[i + 1].longitude);
//     }
//     print(totalDistance);

//     setState(() {
//       distance = totalDistance;
//     });
//   }

//   double calculateDistance(lat1, lon1, lat2, lon2) {
//     var p = 0.017453292519943295;
//     var a = 0.5 -
//         cos((lat2 - lat1) * p) / 2 +
//         cos(lat1 * p) * cos(lat2 * p) * (1 - cos((lon2 - lon1) * p)) / 2;
//     return 12742 * asin(sqrt(a));
//   }

//   void getPolyPoints() async {
//     PolylinePoints polylinePoints = PolylinePoints();
//     PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
//         "AIzaSyDExoGhzKn-eH5qBNZcCD-cQz-KbZlEJnA",
//         PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
//         PointLatLng(destination.latitude, destination.longitude));

//     if (result.points.isNotEmpty) {
//       print(result.points.toString());

//       result.points.forEach((PointLatLng point) =>
//           polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
//       setState(() {
//         getdistance();
//       });
//     } else {
//       print("else part");
//     }
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     // sourceLocation = widget.srcLat;
//     // destination = widget.desLat;
//     // polylineCoordinates.add(widget.srcLat);
//     // polylineCoordinates.add(widget.desLat);

//     getPolyPoints();

//     // getCurrentLocation();
//   }

//   @override
//   Widget build(BuildContext context) {
//     // log(polylineCoordinates.toString());
//     print("${distance}   madharchod");
//     return Scaffold(
//       body: GoogleMap(
//           initialCameraPosition: CameraPosition(
//               target: LatLng(sourceLocation.latitude, sourceLocation.longitude),
//               zoom: 14.5),
//           polylines: {
//             Polyline(
//                 polylineId: PolylineId("route"),
//                 points: polylineCoordinates,
//                 color: Colors.purple,
//                 width: 6),
//           },
//           markers: {
//             // Marker(
//             //   markerId: MarkerId("currentLocation"),
//             //   position: LatLng(
//             //       currentLocation.latitude, currentLocation.longitude),

//             Marker(markerId: MarkerId("source"), position: sourceLocation),
//             Marker(
//                 markerId: MarkerId("source"),
//                 position: sourceLocation,
//                 infoWindow: InfoWindow(title: distance.toString())),
//             Marker(markerId: MarkerId("destination"), position: destination),
//           }),
//     );
//   }
// }
