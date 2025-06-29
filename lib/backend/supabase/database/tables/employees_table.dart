import '../database.dart';

class EmployeesTableTable extends SupabaseTable<EmployeesTableRow> {
  @override
  String get tableName => 'employees_table';

  @override
  EmployeesTableRow createRow(Map<String, dynamic> data) =>
      EmployeesTableRow(data);
}

class EmployeesTableRow extends SupabaseDataRow {
  EmployeesTableRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EmployeesTableTable();

  String get employeeId => getField<String>('employee_id')!;
  set employeeId(String value) => setField<String>('employee_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get lastName => getField<String>('last_name');
  set lastName(String? value) => setField<String>('last_name', value);

  String? get firstName => getField<String>('first_name');
  set firstName(String? value) => setField<String>('first_name', value);

  String? get middleName => getField<String>('middle_name');
  set middleName(String? value) => setField<String>('middle_name', value);

  DateTime? get bday => getField<DateTime>('bday');
  set bday(DateTime? value) => setField<DateTime>('bday', value);

  String? get civilStatus => getField<String>('civil_status');
  set civilStatus(String? value) => setField<String>('civil_status', value);

  String? get spouseName => getField<String>('spouse_name');
  set spouseName(String? value) => setField<String>('spouse_name', value);

  String? get residenceAddress => getField<String>('residence_address');
  set residenceAddress(String? value) =>
      setField<String>('residence_address', value);

  String? get contactNumber => getField<String>('contact_number');
  set contactNumber(String? value) => setField<String>('contact_number', value);

  String? get secondaryNo => getField<String>('secondary_no');
  set secondaryNo(String? value) => setField<String>('secondary_no', value);

  String? get emailAddress => getField<String>('email_address');
  set emailAddress(String? value) => setField<String>('email_address', value);

  String? get companySubs => getField<String>('company_subs');
  set companySubs(String? value) => setField<String>('company_subs', value);

  String? get departmentId => getField<String>('department_id');
  set departmentId(String? value) => setField<String>('department_id', value);

  String? get position => getField<String>('position');
  set position(String? value) => setField<String>('position', value);

  String? get refferalBy => getField<String>('refferal_by');
  set refferalBy(String? value) => setField<String>('refferal_by', value);

  DateTime? get employmentEndDate => getField<DateTime>('employment_end_date');
  set employmentEndDate(DateTime? value) =>
      setField<DateTime>('employment_end_date', value);

  String? get sssNum => getField<String>('sss_num');
  set sssNum(String? value) => setField<String>('sss_num', value);

  String? get hdmfNum => getField<String>('hdmf_num');
  set hdmfNum(String? value) => setField<String>('hdmf_num', value);

  String? get phicNum => getField<String>('phic_num');
  set phicNum(String? value) => setField<String>('phic_num', value);

  String? get tinNum => getField<String>('tin_num');
  set tinNum(String? value) => setField<String>('tin_num', value);

  String? get emergencyContactName =>
      getField<String>('emergency_contact_name');
  set emergencyContactName(String? value) =>
      setField<String>('emergency_contact_name', value);

  String? get emergencyContactNumber =>
      getField<String>('emergency_contact_number');
  set emergencyContactNumber(String? value) =>
      setField<String>('emergency_contact_number', value);

  String? get emergencyContactAddress =>
      getField<String>('emergency_contact_address');
  set emergencyContactAddress(String? value) =>
      setField<String>('emergency_contact_address', value);

  String? get bankName => getField<String>('bank_name');
  set bankName(String? value) => setField<String>('bank_name', value);

  String? get bankBranch => getField<String>('bank_branch');
  set bankBranch(String? value) => setField<String>('bank_branch', value);

  String? get accountName => getField<String>('account_name');
  set accountName(String? value) => setField<String>('account_name', value);

  String? get accountNumber => getField<String>('account_number');
  set accountNumber(String? value) => setField<String>('account_number', value);

  String? get accountType => getField<String>('account_type');
  set accountType(String? value) => setField<String>('account_type', value);

  String? get accountStatus => getField<String>('account_status');
  set accountStatus(String? value) => setField<String>('account_status', value);

  String? get urlPhotoId1 => getField<String>('url_photo_id_1');
  set urlPhotoId1(String? value) => setField<String>('url_photo_id_1', value);

  String? get urlPhotoId2 => getField<String>('url_photo_id_2');
  set urlPhotoId2(String? value) => setField<String>('url_photo_id_2', value);

  String? get urlPhotoId3 => getField<String>('url_photo_id_3');
  set urlPhotoId3(String? value) => setField<String>('url_photo_id_3', value);

  String? get expId1 => getField<String>('exp_id_1');
  set expId1(String? value) => setField<String>('exp_id_1', value);

  String? get expId2 => getField<String>('exp_id_2');
  set expId2(String? value) => setField<String>('exp_id_2', value);

  String? get expId3 => getField<String>('exp_id_3');
  set expId3(String? value) => setField<String>('exp_id_3', value);
}
