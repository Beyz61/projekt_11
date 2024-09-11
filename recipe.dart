import 'dart:io';

class RecipeManager {
  List<Map<String, String>> rezepte = [];
  void rezeptHinzufuegen() {
    print("Bitte geben Sie den Titel des Rezepts ein: ");
    String? titel = stdin.readLineSync();
    print("Bitte geben Sie die Zutaten des Rezepts ein: ");
    String? zutaten = stdin.readLineSync();
    if (titel != null &&
        zutaten != null &&
        titel.isNotEmpty &&
        zutaten.isNotEmpty) {
      Map<String, String> rezept = {'titel': titel, 'zutaten': zutaten};
      rezepte.add(rezept);
      print("Rezept erfolgreich hinzugefügt!");
    } else {
      print(
          "Fehler beim Hinzufügen des Rezepts. Bitte gültige Daten eingeben.");
    }
  }

  void rezepteAnsehen() {
    if (rezepte.isNotEmpty) {
      print("Rezepte-Feed:");
      for (var rezept in rezepte) {
        print("Titel: ${rezept['titel']}, Zutaten: ${rezept['zutaten']}");
      }
    } else {
      print("Keine Rezepte verfügbar.");
    }
  }
}
