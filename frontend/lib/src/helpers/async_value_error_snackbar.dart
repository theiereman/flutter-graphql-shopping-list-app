import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

extension AsyncValueUI on AsyncValue {
  void showSnackbarOnError(BuildContext context) {
    if (!isLoading && hasError) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Oops, an error occurred.")),
      );
    }
  }
}
