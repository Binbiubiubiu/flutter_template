import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_template/services/upload_service.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  @override
  _ImagePickerWidgetState createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  File _imageFile;
  dynamic _pickImageError;
  String _retrieveDataError;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void _onImageButtonPressed(ImageSource source) async {
    try {
      _imageFile = await ImagePicker.pickImage(
        source: source,
      );
      setState(() {});
    } catch (e) {
      _pickImageError = e;
    }
  }

  Future<void> retrieveLostData() async {
    final LostDataResponse response = await ImagePicker.retrieveLostData();
    if (response.isEmpty) {
      return;
    }
    if (response.file != null) {
      setState(() {
        _imageFile = response.file;
      });
    } else {
      _retrieveDataError = response.exception.code;
    }
  }

  Widget _previewImage() {
    final Text retrieveError = _getRetrieveErrorWidget();
    if (retrieveError != null) {
      return retrieveError;
    }
    if (_imageFile != null) {
      return Image.file(_imageFile);
    } else if (_pickImageError != null) {
      return Text(
        'Pick image error: $_pickImageError',
        textAlign: TextAlign.center,
      );
    } else {
      return const Text(
        'You have not yet picked an image.',
        textAlign: TextAlign.center,
      );
    }
  }

  Text _getRetrieveErrorWidget() {
    if (_retrieveDataError != null) {
      final Text result = Text(_retrieveDataError);
      _retrieveDataError = null;
      return result;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    var _imagePreview = Platform.isAndroid
        ? FutureBuilder<void>(
            future: retrieveLostData(),
            builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                case ConnectionState.waiting:
                  return const Text(
                    'You have not yet picked an image.',
                    textAlign: TextAlign.center,
                  );
                case ConnectionState.done:
                  return _previewImage();
                default:
                  if (snapshot.hasError) {
                    return Text(
                      'Pick image/video error: ${snapshot.error}}',
                      textAlign: TextAlign.center,
                    );
                  } else {
                    return const Text(
                      'You have not yet picked an image.',
                      textAlign: TextAlign.center,
                    );
                  }
              }
            },
          )
        : _previewImage();

    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            _imagePreview,
            MaterialButton(
              color: Colors.blue,
              onPressed: () async {
                _onImageButtonPressed(ImageSource.camera);
              },
              child: Text("拍照"),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () async {
                _onImageButtonPressed(ImageSource.gallery);
              },
              child: Text("从相册中选择"),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () async {
//                await PermissionHandler()
//                    .requestPermissions([PermissionGroup.storage]);

//                var result = await ImageGallerySaver.saveFile(_imageFile.path);
//
//                ToastUtil.show(result);
                print(_imageFile.path.split("/").last);

                await uploadBySingle(
                  _imageFile,
                  onSendProgress: (int sent, int total) {
                    setState(() {});
                  },
                );
              },
              child: Text("保存图片"),
            ),
          ],
        ),
      ),
    );
  }
}
