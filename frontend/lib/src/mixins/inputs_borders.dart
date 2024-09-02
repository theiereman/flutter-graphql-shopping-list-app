import 'package:flutter/material.dart';
import 'package:frontend/src/utils/theme.dart'; // Assurez-vous d'importer le bon chemin

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
