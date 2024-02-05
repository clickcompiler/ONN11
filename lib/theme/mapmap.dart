// import 'package:flutter/material.dart';
// // import 'package:flutter_google_places_hoc081098/flutter_google_places_hoc081098.dart';
// // import 'package:geocoding/geocoding.dart';
// // import 'package:geolocator/geolocator.dart';
// // import 'package:google_api_headers/google_api_headers.dart';
// // import 'package:google_maps_flutter/google_maps_flutter.dart';
// // import 'package:google_maps_webservice/places.dart';
// // import 'package:saniocustomer/theme/const_color.dart';

// typedef ListVal = Function(List<Placemark> value, String lat, String long);

// // class GetMapLoaction extends StatefulWidget {
// //   GetMapLoaction({super.key, this.callback});
// //   ListValue? callback;
// //   @override
// //   _GetMapLoactionState createState() => _GetMapLoactionState();
// // }
// class GetMapLoaction extends StatefulWidget {
//   @override
//   _GetMapLoactionState createState() => _GetMapLoactionState();
//   dynamic callback;
//   GetMapLoaction(this.callback, {super.key});
// }

// class _GetMapLoactionState extends State<GetMapLoaction> {
//   double? latCurrentController;
//   double? longCurrentController;
//   String googleApikey = "AIzaSyDExoGhzKn-eH5qBNZcCD-cQz-KbZlEJnA";
//   GoogleMapController? mapController; //contrller for Google map
//   CameraPosition? cameraPosition;
//   // LatLng startLocation = LatLng(latCurrentController, longCurrentController);
//   String location = "Location Name:";
//   bool val = false;
//   Future<Position> getLocation() async {
//     // Test if location services are enabled.
//     bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       // App to enable the location services.
//       return Future.error('Location services are disabled.');
//     }

//     LocationPermission permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.deniedForever) {
//         // Permissions are denied forever, handle appropriately.
//         return Future.error(
//             Exception('Location permissions are permanently denied.'));
//       }

//       if (permission == LocationPermission.denied) {
//         return Future.error(Exception('Location permissions are denied.'));
//       }
//     }

//     // When we reach here, permissions are granted and we can
//     // continue accessing the position of the device.
//     return await Geolocator.getCurrentPosition().then((Position position) {
//       setState(() {
//         latCurrentController = position.latitude;
//         longCurrentController = position.longitude;

//         print("$longCurrentController lat $latCurrentController Long");
//         // _moveCamera(lat, lng);
//       });
//       return position;
//     });
//   }

//   // _getCurrentLocation() {
//   //   Geolocator.getCurrentPosition().then((Position position) {
//   //     setState(() {
//   //       latCurrentController = position.latitude;
//   //       longCurrentController = position.longitude;

//   //       print("$longCurrentController lat $latCurrentController Long");
//   //       // _moveCamera(lat, lng);
//   //     });
//   //   }).catchError((e) {
//   //     print(e);
//   //   });
//   // }

//   bool mapType = false;
//   @override
//   void initState() {
//     // _getCurrentLocation();
//     getLocation();
//     // TODO: implement initState
//     super.initState();
//   }

//   List<Placemark> placemarks = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         // appBar: AppBar(
//         //   title: const Text("Google Map"),
//         //   backgroundColor: Colors.deepPurpleAccent,
//         //   actions: [
//         //     InkWell(
//         //         onTap: () {
//         //           if (mapType) {
//         //             setState(() {
//         //               mapType = false;
//         //             });
//         //           } else {
//         //             setState(() {
//         //               mapType = true;
//         //             });
//         //           }
//         //         },
//         //         child: const Padding(
//         //           padding: EdgeInsets.all(8.0),
//         //           child: Icon(
//         //             Icons.satellite,
//         //             size: 30,
//         //             color: White01,
//         //           ),
//         //         ))
//         //   ],
//         // ),
//         body: latCurrentController.toString() == "null" &&
//                 longCurrentController.toString() == "null"
//             ? const Center(
//                 child: CircularProgressIndicator(),
//               )
//             : Stack(children: [
//                 GoogleMap(
//                   //Map widget from google_maps_flutter package
//                   zoomGesturesEnabled: true, //enable Zoom in, out on map
//                   initialCameraPosition: CameraPosition(
//                     //innital position in map
//                     target: LatLng(latCurrentController!,
//                         longCurrentController!), //initial position
//                     zoom: 14.0, //initial zoom level
//                   ),
//                   mapType:
//                       mapType ? MapType.satellite : MapType.normal, //map type
//                   onMapCreated: (controller) {
//                     //method called when map is created
//                     setState(() {
//                       mapController = controller;
//                     });
//                   },
//                   onCameraMove: (CameraPosition cameraPositiona) {
//                     cameraPosition = cameraPositiona; //when map is dragging
//                   },
//                   onCameraIdle: () async {
//                     //when map drag stops
//                     placemarks = await placemarkFromCoordinates(
//                         cameraPosition?.target.latitude ?? 0.0,
//                         cameraPosition?.target.longitude ?? 0.0);
// // log(cameraPosition.target.latitude)
//                     setState(() {
//                       location =
//                           "${placemarks.first.administrativeArea}, ${placemarks.first.locality}${placemarks.first.postalCode}";
//                       //get place name from lat and lang
//                     });
//                   },
//                 ),
//                 const Center(
//                     //picker image on google map
//                     child: Icon(
//                   Icons.location_on,
//                   size: 50,
//                   color: Colors.red,
//                 )),
//                 Positioned(
//                     //widget to display location name
//                     bottom: 20,
//                     child: Padding(
//                       padding: const EdgeInsets.all(15),
//                       child: Card(
//                         child: Container(
//                             color: Colors.white70.withOpacity(.6),
//                             padding: const EdgeInsets.all(0),
//                             width: MediaQuery.of(context).size.width - 40,
//                             child: ListTile(
//                                 // leading: const Icon(Icons.location_on),
//                                 title: Text(
//                                   location,
//                                   maxLines: 10,
//                                   style: const TextStyle(fontSize: 12),
//                                 ),
//                                 trailing: InkWell(
//                                     onTap: () {
//                                       if (placemarks.isNotEmpty) {
//                                         widget.callback(
//                                             placemarks,
//                                             cameraPosition!.target.latitude
//                                                 .toString(),
//                                             cameraPosition!.target.longitude
//                                                 .toString());
//                                         Navigator.pop(context);
//                                       } else {
//                                         ScaffoldMessenger.of(context)
//                                             .showSnackBar(const SnackBar(
//                                                 backgroundColor: Black01,
//                                                 content: Text(
//                                                     "Please select location or refresh the or move the map")));
//                                       }
//                                     },
//                                     child: const Card(
//                                       color: Colors.blue,
//                                       child: Padding(
//                                         padding: EdgeInsets.all(0.0),
//                                         child: Icon(
//                                           Icons.check,
//                                           size: 30,
//                                           color: White01,
//                                         ),
//                                       ),
//                                     ))
//                                 //  Checkbox(
//                                 //     value: val,
//                                 //     onChanged: (v) {
//                                 //       Navigator.pop(context);
//                                 //       widget.callback(placemarks);

//                                 //       print(val);
//                                 //       setState(() {
//                                 //         val == false ? val = true : val = false;
//                                 //       });
//                                 //     }),
//                                 // dense: true,
//                                 )),
//                       ),
//                     )),
//                 Positioned(
//                     //search input bar
//                     top: 30,
//                     child: InkWell(
//                         onTap: () async {
//                           var place = await PlacesAutocomplete.show(
//                               insetPadding: const EdgeInsets.all(5),
//                               radius: 1000,
//                               context: context,
//                               apiKey: googleApikey,
//                               mode: Mode.overlay,
//                               types: [],
//                               // textDecoration: InputDecoration(
//                               //     constraints: BoxConstraints(
//                               //         maxHeight: MediaQuery.of(context).size.height / 2),
//                               //     hintText: "Search Location",
//                               //     hintStyle: const TextStyle(color: Colors.black),
//                               //     border: OutlineInputBorder(
//                               //         borderRadius: BorderRadius.circular(10),
//                               //         borderSide: const BorderSide(color: Colors.black))),
//                               strictbounds: false,
//                               components: [Component(Component.country, 'In')],
//                               //google_map_webservice package
//                               onError: (err) {
//                                 print(err);
//                               });

//                           if (place != null) {
//                             setState(() {
//                               location = "${place.description}";
//                             });

//                             //form google_maps_webservice package
//                             final plist = GoogleMapsPlaces(
//                               apiKey: googleApikey,
//                               apiHeaders:
//                                   await const GoogleApiHeaders().getHeaders(),
//                               //from google_api_headers package
//                             );
//                             String placeid = place.placeId ?? "0";
//                             final detail =
//                                 await plist.getDetailsByPlaceId(placeid);
//                             final geometry = detail.result.geometry!;
//                             final lat = geometry.location.lat;
//                             final lang = geometry.location.lng;
//                             var newlatlang = LatLng(lat, lang);

//                             //move map camera to selected place with animation
//                             mapController?.animateCamera(
//                                 CameraUpdate.newCameraPosition(CameraPosition(
//                                     target: newlatlang, zoom: 17)));
//                           }
//                         },
//                         child: Padding(
//                           padding: const EdgeInsets.all(20),
//                           child: Card(
//                             child: Container(
//                                 padding: const EdgeInsets.all(0),
//                                 width: MediaQuery.of(context).size.width - 40,
//                                 child: ListTile(
//                                   title: Text(
//                                     location,
//                                     style: const TextStyle(fontSize: 18),
//                                   ),
//                                   trailing: const Icon(Icons.search),
//                                   dense: true,
//                                 )),
//                           ),
//                         )))
//               ]));
//   }
// }
