import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';

abstract interface class PatientRepository{
  Future<Either<RepositoryException, Object>> findPatientByDocument(String document);
}