import 'dart:io';
import 'user.dart';
import 'recipe.dart';

void main() {
  print("Herzlich Willkommen bei Foodie :)");
  User user = User();
  if (!user.registrieren()) {
    return;
  }
  if (!user.anmelden()) {
    return;
  }
  bool eingeloggt = true;
  RecipeManager recipeManager = RecipeManager();
  while (eingeloggt) {
    print("Menü:");
    print("1. Rezept hinzufügen");
    print("2. Rezepte-Feed ansehen");
    print("3. Abmelden");
    print("Bitte wählen Sie eine Option: ");
    String? auswahl = stdin.readLineSync();
    switch (auswahl) {
      case '1':
        recipeManager.rezeptHinzufuegen();
        break;
      case '2':
        recipeManager.rezepteAnsehen();
        break;
      case '3':
        print("Sie haben sich erfolgreich abgemeldet.");
        eingeloggt = false;
        break;
      default:
        print("Ungültige Auswahl. Bitte erneut versuchen.");
    }
  }
}
