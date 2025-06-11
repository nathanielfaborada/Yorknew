import '../database.dart';

class EmpTableTable extends SupabaseTable<EmpTableRow> {
  @override
  String get tableName => 'emp_table';

  @override
  EmpTableRow createRow(Map<String, dynamic> data) => EmpTableRow(data);
}

class EmpTableRow extends SupabaseDataRow {
  EmpTableRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EmpTableTable();

  String get employeeId => getField<String>('employee_id')!;
  set employeeId(String value) => setField<String>('employee_id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String? get departmentId => getField<String>('department_id');
  set departmentId(String? value) => setField<String>('department_id', value);

  String get lastName => getField<String>('last_name')!;
  set lastName(String value) => setField<String>('last_name', value);

  String get firstName => getField<String>('first_name')!;
  set firstName(String value) => setField<String>('first_name', value);

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

  DateTime get dateHired => getField<DateTime>('date_hired')!;
  set dateHired(DateTime value) => setField<DateTime>('date_hired', value);

  String get employmentStatus => getField<String>('employment_status')!;
  set employmentStatus(String value) =>
      setField<String>('employment_status', value);

  String? get roleType => getField<String>('role_type');
  set roleType(String? value) => setField<String>('role_type', value);

  String? get companySubs => getField<String>('company_subs');
  set companySubs(String? value) => setField<String>('company_subs', value);

  String? get position => getField<String>('position');
  set position(String? value) => setField<String>('position', value);

  String? get refferalBy => getField<String>('refferal_by');
  set refferalBy(String? value) => setField<String>('refferal_by', value);

  DateTime? get employmentEndDate => getField<DateTime>('employment_end_date');
  set employmentEndDate(DateTime? value) =>
      setField<DateTime>('employment_end_date', value);

  String? get sssNumber => getField<String>('sss_number');
  set sssNumber(String? value) => setField<String>('sss_number', value);

  String? get hdmfNumber => getField<String>('hdmf_number');
  set hdmfNumber(String? value) => setField<String>('hdmf_number', value);

  String? get phicNumber => getField<String>('phic_number');
  set phicNumber(String? value) => setField<String>('phic_number', value);

  String? get tinNumber => getField<String>('tin_number');
  set tinNumber(String? value) => setField<String>('tin_number', value);

  String? get emergencyPerson => getField<String>('emergency_person');
  set emergencyPerson(String? value) =>
      setField<String>('emergency_person', value);

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

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
