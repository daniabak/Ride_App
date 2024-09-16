// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:latlong2/latlong.dart';
import 'package:rideshare_app/bloc/hubs/hubs_bloc.dart';
import 'package:rideshare_app/core/utils/color_manager.dart';

class MapPage extends StatefulWidget {
  final NotchBottomBarController? controller;
  const MapPage({
    Key? key,
    this.controller,
  }) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  LatLng _latLng = LatLng(
    33.513104,
    36.304363,
  );
  LatLng _damascus = const LatLng(31.51020000, 31.129128000);
  void getLocation() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        print("permission are denied");
      }
    }
    Position pos = await Geolocator.getCurrentPosition();

//By adding the if (mounted) check, you ensure that setState()
// is only called if the widget is still in the widget tree.
//This should prevent the error you’re seeing.
    if (mounted) {
      setState(() {
        _damascus = LatLng(pos.latitude, pos.longitude);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (context) => HubsBloc(
          internetConnectionChecker:
              InternetConnectionChecker.createInstance()),
      child: Builder(builder: (context) {
        context.read<HubsBloc>().add(getAllHubsEvent(
            lang: _damascus.longitude, lat: _damascus.latitude));
        return Stack(
          children: [
            FlutterMap(
              options: MapOptions(
                initialCenter: _latLng,
                initialZoom: 13,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                ),
                CircleLayer(circles: [
                  CircleMarker(
                    point: _damascus,
                    radius: 800,
                    useRadiusInMeter: true,
                    color: Colors.green.withOpacity(0.3),
                  )
                ]),
                BlocBuilder<HubsBloc, HubsState>(
                  builder: (context, state) {
                    if (state is SuccessGetHubs) {
                      return MarkerLayer(
                        markers:
                            List.generate(state.listOfHubs.length, (index) {
                          if (index == state.listOfHubs.length - 1) {
                            return Marker(
                              point: _damascus,
                              child: const Icon(
                                Icons.location_on,
                                size: 22,
                                color: Colors.green,
                              ),
                            );
                          } else {
                            return Marker(
                                point: LatLng(
                                    state.listOfHubs[index].latitude.toDouble(),
                                    state.listOfHubs[index].longitude
                                        .toDouble()),
                                child: SizedBox(
                                  width: 100,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      // Text(
                                      //   state.listOfHubs[index].name,
                                      //   maxLines: 5,
                                      //   softWrap: true,
                                      // ),
                                      const Icon(
                                        Icons.location_on,
                                        size: 22,
                                        color: Colors.green,
                                      ),
                                    ],
                                  ),
                                ));
                          }
                        }),
                      );
                    } else if (state is FailedGetHubs) {
                      return const Center(
                        child: Text("error in get hubs"),
                      );
                    } else if (state is OfflineGetHubs) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return const Text("data");
                    }
                  },
                ),
              ],
            ),
            const Positioned(
              top: 44,
              left: 44,
              child: Icon(
                Icons.menu,
                color: ColorManager.primaryColor,
                size: 33,
              ),
            ),
            const Positioned(
              top: 44,
              right: 44,
              child: Icon(
                Icons.notifications,
                color: ColorManager.primaryColor,
                size: 33,
              ),
            ),
          ],
        );
      }),
    ));
  }
}
