import '../models/appointment.dart';
import '../services/appointment_service.dart';

class AppointmentController {
  final AppointmentService _appointmentService;

  AppointmentController(this._appointmentService);

  final _appointments = <Appointment>[];

  List<Appointment> get appointments => List.unmodifiable(_appointments);

  Future<void> loadAppointments() async {
    try {
      _appointments.clear();
      final loadedAppointments = await _appointmentService.getAppointments();
      if (loadedAppointments.isNotEmpty) _appointments.addAll(loadedAppointments);
    } catch (e) {
      throw Exception("Error al cargar los doctores: $e");
    }
  }
}
