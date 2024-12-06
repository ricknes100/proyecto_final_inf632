import '../models/appointment.dart';
import '../repositories/appointments_repository.dart';

class AppointmentService {
  final AppointmentRepository _appointmentRepository;

  AppointmentService(this._appointmentRepository);

  Future<List<Appointment>> getAppointments() async {
    return await _appointmentRepository.getAllAppointments();
  }
}
