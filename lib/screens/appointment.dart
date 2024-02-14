
/*
//Instantiate Firestore
final db = FirebaseFirestore.instance;

bookSession({name, service, time}) async {
  final docRef = db.collection('appointments').doc();
  Appointment appt =
      Appointment(name: name, time: time, service: service, id: docRef.id);

  await docRef.set(appt.toJson()).then(
      (value) => log("Appointment booked successfully!"),
      onError: (e) => log("Error booking appointment: $e"));
}*/