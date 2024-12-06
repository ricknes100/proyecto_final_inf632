import '../models/appointment.dart';

class AppointmentRepository {

  Future<List<Appointment>> getAllAppointments() async {
    final db = await database;
    final List<Map<String, dynamic>> appointmentsMap = await db.query('appointments');
    return appointmentsMap.map((appointmentMap) => Appointment.fromMap(appointmentMap)).toList();
  }
}
