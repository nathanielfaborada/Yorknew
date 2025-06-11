import '../database.dart';

class PostsWithHashtagsTable extends SupabaseTable<PostsWithHashtagsRow> {
  @override
  String get tableName => 'posts_with_hashtags';

  @override
  PostsWithHashtagsRow createRow(Map<String, dynamic> data) =>
      PostsWithHashtagsRow(data);
}

class PostsWithHashtagsRow extends SupabaseDataRow {
  PostsWithHashtagsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PostsWithHashtagsTable();

  String? get postId => getField<String>('post_id');
  set postId(String? value) => setField<String>('post_id', value);

  String? get content => getField<String>('content');
  set content(String? value) => setField<String>('content', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  List<String> get hashtags => getListField<String>('hashtags');
  set hashtags(List<String>? value) => setListField<String>('hashtags', value);
}
