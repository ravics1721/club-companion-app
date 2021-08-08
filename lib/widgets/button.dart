import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final Function onPressed;
  final String title;
  final Color color;
  final MaterialStateProperty bgColor;
  const PrimaryButton({Key key, this.onPressed, this.title, this.color=Colors.white, this.bgColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed))
        return Theme.of(context).colorScheme.primary;
      return null; // Use the component's default.
    },
    ),
        ),
        child: Text(title, style: TextStyle(
      color: color,
      fontSize: 17,
      fontWeight: FontWeight.w500,
    ),));
  }
}

