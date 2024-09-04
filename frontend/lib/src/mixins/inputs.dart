import 'package:flutter/material.dart';
import 'package:frontend/src/utils/theme.dart'; // Assurez-vous d'importer le bon chemin

InputDecoration inputDecorationDefault(BuildContext context) {
  return InputDecoration(
    filled: true,
    fillColor: Colors.white,
    focusedBorder: outlineInputBorderDefault(context),
    focusedErrorBorder: outlineInputBorderError(context),
    errorBorder: outlineInputBorderError(context),
    enabledBorder: outlineInputBorderDefault(context),
    disabledBorder: outlineInputBorderDisabled(),
  );
}

OutlineInputBorder outlineInputBorderError(BuildContext context) {
  return OutlineInputBorder(
    borderRadius: CustomTheme.defaultRadius,
    borderSide:
        BorderSide(width: 2, color: Theme.of(context).colorScheme.error),
  );
}

OutlineInputBorder outlineInputBorderDefault(BuildContext context) {
  return OutlineInputBorder(
    borderRadius: CustomTheme.defaultRadius,
    borderSide:
        BorderSide(width: 2, color: Theme.of(context).colorScheme.secondary),
  );
}

OutlineInputBorder outlineInputBorderDisabled() {
  return const OutlineInputBorder(
    borderRadius: CustomTheme.defaultRadius,
    borderSide: BorderSide(width: 2, color: Colors.grey),
  );
}
