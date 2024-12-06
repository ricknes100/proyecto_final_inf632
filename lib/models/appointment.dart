class Appointment {
  final int? id;
  final String date;
  final String time;
  final String doctor;

  Appointment({
    this.id,
    this.date = '',
    this.time = '',
    this.doctor = ''
  });

  factory Appointment.fromMap(Map<String, dynamic> map) {
    return Appointment(
      id: map['id'],
      date: map['date'],
      time: map['time'],
      doctor: map['doctor'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      if (id != null) 'id': id,
      'date': date,
      'time': time,
      'doctor': doctor
    };
  }
}
