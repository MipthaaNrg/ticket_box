import 'package:flutter/material.dart';
import 'package:ticket_box/components/text_field_container.dart';
import 'package:ticket_box/constant.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: Colors.purple,
          ),
          suffixIcon: Icon(Icons.visibility, color: Colors.purple),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
