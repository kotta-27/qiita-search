class User {
  // コンストラクタ
  // idとprofileImageUrlを必須パラメータにする
  User({
    required this.id,
    required this.profileImageUrl,
  });

  // プロパティ
  // finalは変更不可つまり読み取り専用
  final String id;
  final String profileImageUrl;

  // JSONからUserを生成するファクトリコンストラクタ
  // ファクトリコンストラクタ：新しいインスタンスを返すカスタムロジックを含むコンストラクタ
  // 条件に基づいて異なるコンストラクタを返す
  factory User.fromJson(dynamic json) {
    // jsonは通常はMap<String, dynamic>型
    return User(
      id: json['id'] as String, // 型の安全性を保証するための明示的なキャスト
      profileImageUrl: json['profile_image_url'] as String,
    );
  }
}

// ex
// dynamic json = {
//   'id': '12345',
//   'profile_image_url': 'https://example.com/image.jpg',
// }; 

// User user = User.fromJson(json);