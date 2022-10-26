class PlantDisplay {
  String? cause;
  String? title;
  String? treatment;
  String? link;

  PlantDisplay();

  Map<String, dynamic> toJson() =>
      {'cause': cause, 'title': title, 'treatment': treatment, 'link': link};

  PlantDisplay.fromSnapshot(snapshot)
      : cause = snapshot.data()['cause'],
        title = snapshot.data()['title'],
        treatment = snapshot.data()['treatment'],
        link = snapshot.data()['link'];
}
