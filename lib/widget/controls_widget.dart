import 'package:flutter/material.dart';

class ControlsWidget extends StatelessWidget {
  final void Function() onClickedPickImage;
  final void Function() onClickedScanText;
  final void Function() onClickedClear;

  const ControlsWidget({
    required this.onClickedPickImage,
    required this.onClickedScanText,
    required this.onClickedClear,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            onPressed: onClickedPickImage,
            child: Text('Pick Image'),
          ),
          const SizedBox(width: 12),
          RaisedButton(
            onPressed: onClickedScanText,
            child: Text('Scan For Text'),
          ),
          const SizedBox(width: 12),
          RaisedButton(
            onPressed: onClickedClear,
            child: Text('Clear'),
          )
        ],
      );
}
