import '../database.dart';

class PostHashtagsTable extends SupabaseTable<PostHashtagsRow> {
  @override
  String get tableName => 'post_hashtags';

  @override
  PostHashtagsRow createRow(Map<String, dynamic> data) => PostHashtagsRow(data);
}

class PostHashtagsRow extends SupabaseDataRow {
  PostHashtagsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PostHashtagsTable();

  String get postId => getField<String>('post_id')!;
  set postId(String value) => setField<String>('post_id', value);

  String get hashtagId => getField<String>('hashtag_id')!;
  set hashtagId(String value) => setField<String>('hashtag_id', value);
}
