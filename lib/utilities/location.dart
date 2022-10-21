import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude;
  late double longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
              desiredAccuracy: LocationAccuracy.high)
          .timeout(const Duration(seconds: 4));
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      throw 'something goes wrong $e';
    }
  }
}
