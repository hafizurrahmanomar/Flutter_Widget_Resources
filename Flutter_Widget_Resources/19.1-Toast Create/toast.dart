

import 'package:flutter/material.dart';

myToast(context, massage) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(massage),
    ),
  );
}