import '../database.dart';

class DepartmentsTable extends SupabaseTable<DepartmentsRow> {
  @override
  String get tableName => 'departments';

  @override
  DepartmentsRow createRow(Map<String, dynamic> data) => DepartmentsRow(data);
}

class DepartmentsRow extends SupabaseDataRow {
  DepartmentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DepartmentsTable();

  int get departmentPk => getField<int>('department_pk')!;
  set departmentPk(int value) => setField<int>('department_pk', value);

  String get departmentId => getField<String>('department_id')!;
  set departmentId(String value) => setField<String>('department_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String get departmentName => getField<String>('department_name')!;
  set departmentName(String value) =>
      setField<String>('department_name', value);
}
