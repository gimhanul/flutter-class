import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'enum.dart';
import 'logger.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final myLatLng = LatLng(35.163143, 129.117681);
  bool isInside = false;

  Circle blueCircle = Circle(
      circleId: CircleId('my_circle'),
      center: LatLng(35.163143, 129.117681),
      fillColor: Colors.blue.withOpacity(0.5),
      strokeColor: Colors.blue,
      strokeWidth: 3,
      radius: 3000);
  Circle redCircle = Circle(
      circleId: CircleId('my_circle'),
      center: LatLng(35.163143, 129.117681),
      fillColor: Colors.red.withOpacity(0.5),
      strokeColor: Colors.red,
      strokeWidth: 3,
      radius: 3000);

  Marker marker = const Marker(
    markerId: MarkerId('my_marker'),
    position: LatLng(35.163143, 129.117681),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: FutureBuilder<Permission>(
        future: checkPermission(),
        builder: (BuildContext context, AsyncSnapshot<Permission> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.data != Permission.permitted) {
            return Text('위치 정보를 획득하지 못했습니다.');
          }
          return Column(
            children: [
              Expanded(
                flex: 2,
                child: StreamBuilder(
                  stream: Geolocator.getPositionStream(),
                  builder: (context, asyncData) {
                    print('stream activated');
                    if (!asyncData.hasData) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    bool isInside = Geolocator.distanceBetween(
                            35.163143, 129.117681, asyncData.data!.latitude, asyncData.data!.longitude) <
                        3000;
                    return GoogleMap(
                        mapType: MapType.normal,
                        myLocationEnabled: true,
                        myLocationButtonEnabled: true,
                        circles: {isInside ? blueCircle : redCircle},
                        markers: {marker},
                        initialCameraPosition: CameraPosition(target: myLatLng, zoom: 10));
                  },
                ),
              ),
              Expanded(flex: 1, child: Center(child: Text('출첵')))
            ],
          );
        },
      ),
    );
  }

  Future<Permission> checkPermission() async {
    logger.d('check permission');
    bool isLocationEnabled = await Geolocator.isLocationServiceEnabled();
    logger.d('isLocationEnabled : $isLocationEnabled');
    if (!isLocationEnabled) {
      return Permission.unAble;
    }
    LocationPermission checkedPermission = await Geolocator.checkPermission();
    logger.d('checkedPermission : $checkedPermission');

    switch (checkedPermission) {
      case LocationPermission.denied:
        checkedPermission = await Geolocator.requestPermission();
        logger.d('checkedPermission : $checkedPermission');
        if (checkedPermission == LocationPermission.denied) {
          return Permission.denied;
        }
        break;
      case LocationPermission.deniedForever:
        return Permission.deniedForever;
      case LocationPermission.unableToDetermine:
        return Permission.unAble;
      default:
        return Permission.permitted;
    }

    return Permission.permitted;
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(
        '출근하기 어플',
        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w700),
      ),
      backgroundColor: Colors.amberAccent,
    );
  }
}
