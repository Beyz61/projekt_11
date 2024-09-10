import 'dart:io';

class User {
  String? nutzername;
  String? password;
  bool registrieren() {
    print("Bitte wählen Sie einen Benutzernamen: ");
    nutzername = stdin.readLineSync();
    print("Bitte wählen Sie ein Passwort: ");
    password = stdin.readLineSync();
    if (nutzername != null &&
        password != null &&
        nutzername!.isNotEmpty &&
        password!.isNotEmpty) {
      print(
          "Registrierung erfolgreich! Ihr Benutzername '$nutzername' und Passwort wurden gespeichert.");
      return true;
    } else {
      print("Registrierung fehlgeschlagen. Bitte gültige Daten eingeben.");
      return false;
    }
  }

  bool anmelden() {
    print("Bitte geben Sie Ihren Benutzernamen zur Anmeldung ein: ");
    String? loginNutzername = stdin.readLineSync();
    print("Bitte geben Sie Ihr Passwort ein: ");
    String? loginPassword = stdin.readLineSync();
    if (loginNutzername == nutzername && loginPassword == password) {
      print("Anmeldung erfolgreich! Willkommen zurück, $nutzername.");
      return true;
    } else {
      print("Falscher Benutzername oder Passwort.");
      return false;
    }
  }
}
