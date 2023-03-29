import 'package:flutter/material.dart';

class DisplayScreen extends StatefulWidget {
  final String destinationAddress;
  final String originAddress;
  final String distance;
  final String duration;
  final String longitude;
  final String latitude;
  final String ocrResult;
  const DisplayScreen(
      {super.key,
      required this.destinationAddress,
      required this.originAddress,
      required this.distance,
      required this.duration,
      required this.longitude,
      required this.latitude,
      required this.ocrResult});

  State<DisplayScreen> createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  late TextEditingController _originAddressController;
  late TextEditingController _destinationAddressController;
  late TextEditingController _distanceController;
  late TextEditingController _durationController;
  late TextEditingController _latitudeController;
  late TextEditingController _longitudeController;
  late TextEditingController _ocrResultController;

  @override
  void initState() {
    super.initState();

    _originAddressController =
        TextEditingController(text: widget.originAddress);
    _destinationAddressController =
        TextEditingController(text: widget.destinationAddress);
    _distanceController = TextEditingController(
        text: (double.parse(widget.distance) / 1000).toString() + ' KM');
    _durationController = TextEditingController(text: widget.duration);
    _latitudeController = TextEditingController(text: widget.latitude);
    _longitudeController = TextEditingController(text: widget.longitude);
    _ocrResultController = TextEditingController(text: widget.ocrResult);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Display Data'),
      ),
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Expanded(
              child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.all(5),
                  child: TextField(
                    minLines: 2,
                    maxLines: 5,
                    controller: _originAddressController,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: 'Origin Address'),
                  )),
              Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.all(5),
                  child: TextField(
                    minLines: 2,
                    maxLines: 5,
                    controller: _destinationAddressController,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: 'Destination Address'),
                  )),
              Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.all(5),
                  child: TextField(
                    controller: _distanceController,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: 'Distance'),
                  )),
              Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.all(5),
                  child: TextField(
                    controller: _durationController,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: 'Travel Duration'),
                  )),
              Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.all(5),
                  child: TextField(
                    controller: _latitudeController,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: 'Origin Latitude'),
                  )),
              Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.all(5),
                  child: TextField(
                    controller: _longitudeController,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: 'Origin Longitude'),
                  )),
              Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.all(5),
                  child: TextField(
                    minLines: 2,
                    maxLines: 5,
                    controller: _ocrResultController,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: 'OCR Result'),
                  )),
            ],
          )),
        ),
      ),
    );
  }
}
/*
class DisplayScreen extends StatelessWidget {
  @override
  void initState() {
    super.initState();

    _originAddressController = TextEditingController(text: "My Text");
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Display Data'),
        ),
        body: Container(
          padding: const EdgeInsets.all(30.0),
          child: Center(
              child: Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.all(0),
                  child: TextField(
                    controller: _originAddressController,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: 'Origin Address'),
                  ))
            ],
          )),
        ),
      );
}
*/