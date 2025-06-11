import '../database.dart';

class EmployeesTable extends SupabaseTable<EmployeesRow> {
  @override
  String get tableName => 'employees';

  @override
  EmployeesRow createRow(Map<String, dynamic> data) => EmployeesRow(data);
}

class EmployeesRow extends SupabaseDataRow {
  EmployeesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EmployeesTable();

  String get employeeId => getField<String>('employee_id')!;
  set employeeId(String value) => setField<String>('employee_id', value);

  String get firstName => getField<String>('first_name')!;
  set firstName(String value) => setField<String>('first_name', value);

  String get lastName => getField<String>('last_name')!;
  set lastName(String value) => setField<String>('last_name', value);

  String get departmentId => getField<String>('department_id')!;
  set departmentId(String value) => setField<String>('department_id', value);
}
