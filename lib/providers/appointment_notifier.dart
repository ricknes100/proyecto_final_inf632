import 'package:flutter/material.dart';
import '../models/appointment.dart';
import '../controllers/appointment_controller.dart';

class AppointmentNotifier extends ChangeNotifier {
  final AppointmentController _appointmentController;
  bool _isLoading = false;
  String? _errorMessage;

  AppointmentNotifier(this._appointmentController) {
    _loadAppointments();
  }

  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  List<Appointment> get appointments => _appointmentController.appointments;
  int get appointmentsCount => appointments.length;

  Future<void> _loadAppointments() async {
    try {
      _isLoading = true;
      notifyListeners();
      await _appointmentController.loadAppointments();
    } catch (_) {
      _errorMessage = "No se pudieron cargar las citas";
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
