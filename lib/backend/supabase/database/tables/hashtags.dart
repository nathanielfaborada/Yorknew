import '../database.dart';

class HashtagsTable extends SupabaseTable<HashtagsRow> {
  @override
  String get tableName => 'hashtags';

  @override
  HashtagsRow createRow(Map<String, dynamic> data) => HashtagsRow(data);
}

class HashtagsRow extends SupabaseDataRow {
  HashtagsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => HashtagsTable();

  String get hashtagId => getField<String>('hashtag_id')!;
  set hashtagId(String value) => setField<String>('hashtag_id', value);

  String get tag => getField<String>('tag')!;
  set tag(String value) => setField<String>('tag', value);
}
