class PlantDisplay {
  String? cause;
  String? title;
  String? treatment;

  PlantDisplay();

  Map<String, dynamic> toJson() =>
      {'cause': cause, 'title': title, 'treatment': treatment};

  PlantDisplay.fromSnapshot(snapshot)
      : cause = snapshot.data()['cause'],
        title = snapshot.data()['title'],
        treatment = snapshot.data()['treatment'];
}
