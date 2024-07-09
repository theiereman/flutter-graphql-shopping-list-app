class Input$GroupCreateInput {
  factory Input$GroupCreateInput({required String name}) =>
      Input$GroupCreateInput._({
        r'name': name,
      });

  Input$GroupCreateInput._(this._$data);

  factory Input$GroupCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    return Input$GroupCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    return result$data;
  }

  CopyWith$Input$GroupCreateInput<Input$GroupCreateInput> get copyWith =>
      CopyWith$Input$GroupCreateInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GroupCreateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }
}

abstract class CopyWith$Input$GroupCreateInput<TRes> {
  factory CopyWith$Input$GroupCreateInput(
    Input$GroupCreateInput instance,
    TRes Function(Input$GroupCreateInput) then,
  ) = _CopyWithImpl$Input$GroupCreateInput;

  factory CopyWith$Input$GroupCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GroupCreateInput;

  TRes call({String? name});
}

class _CopyWithImpl$Input$GroupCreateInput<TRes>
    implements CopyWith$Input$GroupCreateInput<TRes> {
  _CopyWithImpl$Input$GroupCreateInput(
    this._instance,
    this._then,
  );

  final Input$GroupCreateInput _instance;

  final TRes Function(Input$GroupCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(Input$GroupCreateInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
      }));
}

class _CopyWithStubImpl$Input$GroupCreateInput<TRes>
    implements CopyWith$Input$GroupCreateInput<TRes> {
  _CopyWithStubImpl$Input$GroupCreateInput(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Input$GroupDeleteInput {
  factory Input$GroupDeleteInput({required int id}) =>
      Input$GroupDeleteInput._({
        r'id': id,
      });

  Input$GroupDeleteInput._(this._$data);

  factory Input$GroupDeleteInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    return Input$GroupDeleteInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$GroupDeleteInput<Input$GroupDeleteInput> get copyWith =>
      CopyWith$Input$GroupDeleteInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GroupDeleteInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Input$GroupDeleteInput<TRes> {
  factory CopyWith$Input$GroupDeleteInput(
    Input$GroupDeleteInput instance,
    TRes Function(Input$GroupDeleteInput) then,
  ) = _CopyWithImpl$Input$GroupDeleteInput;

  factory CopyWith$Input$GroupDeleteInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GroupDeleteInput;

  TRes call({int? id});
}

class _CopyWithImpl$Input$GroupDeleteInput<TRes>
    implements CopyWith$Input$GroupDeleteInput<TRes> {
  _CopyWithImpl$Input$GroupDeleteInput(
    this._instance,
    this._then,
  );

  final Input$GroupDeleteInput _instance;

  final TRes Function(Input$GroupDeleteInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Input$GroupDeleteInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
      }));
}

class _CopyWithStubImpl$Input$GroupDeleteInput<TRes>
    implements CopyWith$Input$GroupDeleteInput<TRes> {
  _CopyWithStubImpl$Input$GroupDeleteInput(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Input$GroupListCreationInput {
  factory Input$GroupListCreationInput({
    required int groupId,
    required String name,
  }) =>
      Input$GroupListCreationInput._({
        r'groupId': groupId,
        r'name': name,
      });

  Input$GroupListCreationInput._(this._$data);

  factory Input$GroupListCreationInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$groupId = data['groupId'];
    result$data['groupId'] = (l$groupId as int);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    return Input$GroupListCreationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get groupId => (_$data['groupId'] as int);

  String get name => (_$data['name'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$groupId = groupId;
    result$data['groupId'] = l$groupId;
    final l$name = name;
    result$data['name'] = l$name;
    return result$data;
  }

  CopyWith$Input$GroupListCreationInput<Input$GroupListCreationInput>
      get copyWith => CopyWith$Input$GroupListCreationInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GroupListCreationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (l$groupId != lOther$groupId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$groupId = groupId;
    final l$name = name;
    return Object.hashAll([
      l$groupId,
      l$name,
    ]);
  }
}

abstract class CopyWith$Input$GroupListCreationInput<TRes> {
  factory CopyWith$Input$GroupListCreationInput(
    Input$GroupListCreationInput instance,
    TRes Function(Input$GroupListCreationInput) then,
  ) = _CopyWithImpl$Input$GroupListCreationInput;

  factory CopyWith$Input$GroupListCreationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GroupListCreationInput;

  TRes call({
    int? groupId,
    String? name,
  });
}

class _CopyWithImpl$Input$GroupListCreationInput<TRes>
    implements CopyWith$Input$GroupListCreationInput<TRes> {
  _CopyWithImpl$Input$GroupListCreationInput(
    this._instance,
    this._then,
  );

  final Input$GroupListCreationInput _instance;

  final TRes Function(Input$GroupListCreationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? groupId = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Input$GroupListCreationInput._({
        ..._instance._$data,
        if (groupId != _undefined && groupId != null)
          'groupId': (groupId as int),
        if (name != _undefined && name != null) 'name': (name as String),
      }));
}

class _CopyWithStubImpl$Input$GroupListCreationInput<TRes>
    implements CopyWith$Input$GroupListCreationInput<TRes> {
  _CopyWithStubImpl$Input$GroupListCreationInput(this._res);

  TRes _res;

  call({
    int? groupId,
    String? name,
  }) =>
      _res;
}

class Input$GroupUpdateInput {
  factory Input$GroupUpdateInput({
    required int id,
    required String name,
  }) =>
      Input$GroupUpdateInput._({
        r'id': id,
        r'name': name,
      });

  Input$GroupUpdateInput._(this._$data);

  factory Input$GroupUpdateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    return Input$GroupUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  String get name => (_$data['name'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$name = name;
    result$data['name'] = l$name;
    return result$data;
  }

  CopyWith$Input$GroupUpdateInput<Input$GroupUpdateInput> get copyWith =>
      CopyWith$Input$GroupUpdateInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GroupUpdateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    return Object.hashAll([
      l$id,
      l$name,
    ]);
  }
}

abstract class CopyWith$Input$GroupUpdateInput<TRes> {
  factory CopyWith$Input$GroupUpdateInput(
    Input$GroupUpdateInput instance,
    TRes Function(Input$GroupUpdateInput) then,
  ) = _CopyWithImpl$Input$GroupUpdateInput;

  factory CopyWith$Input$GroupUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GroupUpdateInput;

  TRes call({
    int? id,
    String? name,
  });
}

class _CopyWithImpl$Input$GroupUpdateInput<TRes>
    implements CopyWith$Input$GroupUpdateInput<TRes> {
  _CopyWithImpl$Input$GroupUpdateInput(
    this._instance,
    this._then,
  );

  final Input$GroupUpdateInput _instance;

  final TRes Function(Input$GroupUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Input$GroupUpdateInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (name != _undefined && name != null) 'name': (name as String),
      }));
}

class _CopyWithStubImpl$Input$GroupUpdateInput<TRes>
    implements CopyWith$Input$GroupUpdateInput<TRes> {
  _CopyWithStubImpl$Input$GroupUpdateInput(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
  }) =>
      _res;
}

class Input$IngredientCreationInput {
  factory Input$IngredientCreationInput({
    double? amount,
    Enum$ItemCategory? category,
    String? description,
    required String name,
  }) =>
      Input$IngredientCreationInput._({
        if (amount != null) r'amount': amount,
        if (category != null) r'category': category,
        if (description != null) r'description': description,
        r'name': name,
      });

  Input$IngredientCreationInput._(this._$data);

  factory Input$IngredientCreationInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('amount')) {
      final l$amount = data['amount'];
      result$data['amount'] = (l$amount as num).toDouble();
    }
    if (data.containsKey('category')) {
      final l$category = data['category'];
      result$data['category'] =
          fromJson$Enum$ItemCategory((l$category as String));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    return Input$IngredientCreationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  double? get amount => (_$data['amount'] as double?);

  Enum$ItemCategory? get category => (_$data['category'] as Enum$ItemCategory?);

  String? get description => (_$data['description'] as String?);

  String get name => (_$data['name'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('amount')) {
      final l$amount = amount;
      result$data['amount'] = (l$amount as double);
    }
    if (_$data.containsKey('category')) {
      final l$category = category;
      result$data['category'] =
          toJson$Enum$ItemCategory((l$category as Enum$ItemCategory));
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    final l$name = name;
    result$data['name'] = l$name;
    return result$data;
  }

  CopyWith$Input$IngredientCreationInput<Input$IngredientCreationInput>
      get copyWith => CopyWith$Input$IngredientCreationInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$IngredientCreationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (_$data.containsKey('amount') != other._$data.containsKey('amount')) {
      return false;
    }
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (_$data.containsKey('category') !=
        other._$data.containsKey('category')) {
      return false;
    }
    if (l$category != lOther$category) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$category = category;
    final l$description = description;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('amount') ? l$amount : const {},
      _$data.containsKey('category') ? l$category : const {},
      _$data.containsKey('description') ? l$description : const {},
      l$name,
    ]);
  }
}

abstract class CopyWith$Input$IngredientCreationInput<TRes> {
  factory CopyWith$Input$IngredientCreationInput(
    Input$IngredientCreationInput instance,
    TRes Function(Input$IngredientCreationInput) then,
  ) = _CopyWithImpl$Input$IngredientCreationInput;

  factory CopyWith$Input$IngredientCreationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$IngredientCreationInput;

  TRes call({
    double? amount,
    Enum$ItemCategory? category,
    String? description,
    String? name,
  });
}

class _CopyWithImpl$Input$IngredientCreationInput<TRes>
    implements CopyWith$Input$IngredientCreationInput<TRes> {
  _CopyWithImpl$Input$IngredientCreationInput(
    this._instance,
    this._then,
  );

  final Input$IngredientCreationInput _instance;

  final TRes Function(Input$IngredientCreationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? amount = _undefined,
    Object? category = _undefined,
    Object? description = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Input$IngredientCreationInput._({
        ..._instance._$data,
        if (amount != _undefined && amount != null)
          'amount': (amount as double),
        if (category != _undefined && category != null)
          'category': (category as Enum$ItemCategory),
        if (description != _undefined) 'description': (description as String?),
        if (name != _undefined && name != null) 'name': (name as String),
      }));
}

class _CopyWithStubImpl$Input$IngredientCreationInput<TRes>
    implements CopyWith$Input$IngredientCreationInput<TRes> {
  _CopyWithStubImpl$Input$IngredientCreationInput(this._res);

  TRes _res;

  call({
    double? amount,
    Enum$ItemCategory? category,
    String? description,
    String? name,
  }) =>
      _res;
}

class Input$UserCreateInput {
  factory Input$UserCreateInput({
    required String email,
    required String password,
  }) =>
      Input$UserCreateInput._({
        r'email': email,
        r'password': password,
      });

  Input$UserCreateInput._(this._$data);

  factory Input$UserCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$UserCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get email => (_$data['email'] as String);

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$email = email;
    result$data['email'] = l$email;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Input$UserCreateInput<Input$UserCreateInput> get copyWith =>
      CopyWith$Input$UserCreateInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserCreateInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$password = password;
    return Object.hashAll([
      l$email,
      l$password,
    ]);
  }
}

abstract class CopyWith$Input$UserCreateInput<TRes> {
  factory CopyWith$Input$UserCreateInput(
    Input$UserCreateInput instance,
    TRes Function(Input$UserCreateInput) then,
  ) = _CopyWithImpl$Input$UserCreateInput;

  factory CopyWith$Input$UserCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserCreateInput;

  TRes call({
    String? email,
    String? password,
  });
}

class _CopyWithImpl$Input$UserCreateInput<TRes>
    implements CopyWith$Input$UserCreateInput<TRes> {
  _CopyWithImpl$Input$UserCreateInput(
    this._instance,
    this._then,
  );

  final Input$UserCreateInput _instance;

  final TRes Function(Input$UserCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Input$UserCreateInput._({
        ..._instance._$data,
        if (email != _undefined && email != null) 'email': (email as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Input$UserCreateInput<TRes>
    implements CopyWith$Input$UserCreateInput<TRes> {
  _CopyWithStubImpl$Input$UserCreateInput(this._res);

  TRes _res;

  call({
    String? email,
    String? password,
  }) =>
      _res;
}

class Input$UserDeleteInput {
  factory Input$UserDeleteInput({required int id}) => Input$UserDeleteInput._({
        r'id': id,
      });

  Input$UserDeleteInput._(this._$data);

  factory Input$UserDeleteInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    return Input$UserDeleteInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$UserDeleteInput<Input$UserDeleteInput> get copyWith =>
      CopyWith$Input$UserDeleteInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserDeleteInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Input$UserDeleteInput<TRes> {
  factory CopyWith$Input$UserDeleteInput(
    Input$UserDeleteInput instance,
    TRes Function(Input$UserDeleteInput) then,
  ) = _CopyWithImpl$Input$UserDeleteInput;

  factory CopyWith$Input$UserDeleteInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserDeleteInput;

  TRes call({int? id});
}

class _CopyWithImpl$Input$UserDeleteInput<TRes>
    implements CopyWith$Input$UserDeleteInput<TRes> {
  _CopyWithImpl$Input$UserDeleteInput(
    this._instance,
    this._then,
  );

  final Input$UserDeleteInput _instance;

  final TRes Function(Input$UserDeleteInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Input$UserDeleteInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
      }));
}

class _CopyWithStubImpl$Input$UserDeleteInput<TRes>
    implements CopyWith$Input$UserDeleteInput<TRes> {
  _CopyWithStubImpl$Input$UserDeleteInput(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Input$UserListCreationInput {
  factory Input$UserListCreationInput({
    required String name,
    required int userId,
  }) =>
      Input$UserListCreationInput._({
        r'name': name,
        r'userId': userId,
      });

  Input$UserListCreationInput._(this._$data);

  factory Input$UserListCreationInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as int);
    return Input$UserListCreationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  int get userId => (_$data['userId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$userId = userId;
    result$data['userId'] = l$userId;
    return result$data;
  }

  CopyWith$Input$UserListCreationInput<Input$UserListCreationInput>
      get copyWith => CopyWith$Input$UserListCreationInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserListCreationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$userId = userId;
    return Object.hashAll([
      l$name,
      l$userId,
    ]);
  }
}

abstract class CopyWith$Input$UserListCreationInput<TRes> {
  factory CopyWith$Input$UserListCreationInput(
    Input$UserListCreationInput instance,
    TRes Function(Input$UserListCreationInput) then,
  ) = _CopyWithImpl$Input$UserListCreationInput;

  factory CopyWith$Input$UserListCreationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserListCreationInput;

  TRes call({
    String? name,
    int? userId,
  });
}

class _CopyWithImpl$Input$UserListCreationInput<TRes>
    implements CopyWith$Input$UserListCreationInput<TRes> {
  _CopyWithImpl$Input$UserListCreationInput(
    this._instance,
    this._then,
  );

  final Input$UserListCreationInput _instance;

  final TRes Function(Input$UserListCreationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? userId = _undefined,
  }) =>
      _then(Input$UserListCreationInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (userId != _undefined && userId != null) 'userId': (userId as int),
      }));
}

class _CopyWithStubImpl$Input$UserListCreationInput<TRes>
    implements CopyWith$Input$UserListCreationInput<TRes> {
  _CopyWithStubImpl$Input$UserListCreationInput(this._res);

  TRes _res;

  call({
    String? name,
    int? userId,
  }) =>
      _res;
}

class Input$UserUpdateInput {
  factory Input$UserUpdateInput({
    String? email,
    required int id,
    String? password,
  }) =>
      Input$UserUpdateInput._({
        if (email != null) r'email': email,
        r'id': id,
        if (password != null) r'password': password,
      });

  Input$UserUpdateInput._(this._$data);

  factory Input$UserUpdateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('password')) {
      final l$password = data['password'];
      result$data['password'] = (l$password as String?);
    }
    return Input$UserUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get email => (_$data['email'] as String?);

  int get id => (_$data['id'] as int);

  String? get password => (_$data['password'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('password')) {
      final l$password = password;
      result$data['password'] = l$password;
    }
    return result$data;
  }

  CopyWith$Input$UserUpdateInput<Input$UserUpdateInput> get copyWith =>
      CopyWith$Input$UserUpdateInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserUpdateInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (_$data.containsKey('password') !=
        other._$data.containsKey('password')) {
      return false;
    }
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$id = id;
    final l$password = password;
    return Object.hashAll([
      _$data.containsKey('email') ? l$email : const {},
      l$id,
      _$data.containsKey('password') ? l$password : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserUpdateInput<TRes> {
  factory CopyWith$Input$UserUpdateInput(
    Input$UserUpdateInput instance,
    TRes Function(Input$UserUpdateInput) then,
  ) = _CopyWithImpl$Input$UserUpdateInput;

  factory CopyWith$Input$UserUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserUpdateInput;

  TRes call({
    String? email,
    int? id,
    String? password,
  });
}

class _CopyWithImpl$Input$UserUpdateInput<TRes>
    implements CopyWith$Input$UserUpdateInput<TRes> {
  _CopyWithImpl$Input$UserUpdateInput(
    this._instance,
    this._then,
  );

  final Input$UserUpdateInput _instance;

  final TRes Function(Input$UserUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? id = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Input$UserUpdateInput._({
        ..._instance._$data,
        if (email != _undefined) 'email': (email as String?),
        if (id != _undefined && id != null) 'id': (id as int),
        if (password != _undefined) 'password': (password as String?),
      }));
}

class _CopyWithStubImpl$Input$UserUpdateInput<TRes>
    implements CopyWith$Input$UserUpdateInput<TRes> {
  _CopyWithStubImpl$Input$UserUpdateInput(this._res);

  TRes _res;

  call({
    String? email,
    int? id,
    String? password,
  }) =>
      _res;
}

enum Enum$ImperialUnit {
  CUP,
  FL_OZ,
  GAL,
  LB,
  OZ,
  PT,
  QT,
  $unknown;

  factory Enum$ImperialUnit.fromJson(String value) =>
      fromJson$Enum$ImperialUnit(value);

  String toJson() => toJson$Enum$ImperialUnit(this);
}

String toJson$Enum$ImperialUnit(Enum$ImperialUnit e) {
  switch (e) {
    case Enum$ImperialUnit.CUP:
      return r'CUP';
    case Enum$ImperialUnit.FL_OZ:
      return r'FL_OZ';
    case Enum$ImperialUnit.GAL:
      return r'GAL';
    case Enum$ImperialUnit.LB:
      return r'LB';
    case Enum$ImperialUnit.OZ:
      return r'OZ';
    case Enum$ImperialUnit.PT:
      return r'PT';
    case Enum$ImperialUnit.QT:
      return r'QT';
    case Enum$ImperialUnit.$unknown:
      return r'$unknown';
  }
}

Enum$ImperialUnit fromJson$Enum$ImperialUnit(String value) {
  switch (value) {
    case r'CUP':
      return Enum$ImperialUnit.CUP;
    case r'FL_OZ':
      return Enum$ImperialUnit.FL_OZ;
    case r'GAL':
      return Enum$ImperialUnit.GAL;
    case r'LB':
      return Enum$ImperialUnit.LB;
    case r'OZ':
      return Enum$ImperialUnit.OZ;
    case r'PT':
      return Enum$ImperialUnit.PT;
    case r'QT':
      return Enum$ImperialUnit.QT;
    default:
      return Enum$ImperialUnit.$unknown;
  }
}

enum Enum$ItemCategory {
  BABY_CARE,
  BAKERY,
  BEVERAGES,
  CANNED_GOODS,
  CLEANING_SUPPLIES,
  DAIRY,
  FROZEN_FOODS,
  GROCERIES,
  HEALTH_WELLNESS,
  HOUSEHOLD_ITEMS,
  MEAT_POULTRY,
  NONE,
  PERSONAL_CARE,
  PET_SUPPLIES,
  PRODUCE,
  SNACKS,
  $unknown;

  factory Enum$ItemCategory.fromJson(String value) =>
      fromJson$Enum$ItemCategory(value);

  String toJson() => toJson$Enum$ItemCategory(this);
}

String toJson$Enum$ItemCategory(Enum$ItemCategory e) {
  switch (e) {
    case Enum$ItemCategory.BABY_CARE:
      return r'BABY_CARE';
    case Enum$ItemCategory.BAKERY:
      return r'BAKERY';
    case Enum$ItemCategory.BEVERAGES:
      return r'BEVERAGES';
    case Enum$ItemCategory.CANNED_GOODS:
      return r'CANNED_GOODS';
    case Enum$ItemCategory.CLEANING_SUPPLIES:
      return r'CLEANING_SUPPLIES';
    case Enum$ItemCategory.DAIRY:
      return r'DAIRY';
    case Enum$ItemCategory.FROZEN_FOODS:
      return r'FROZEN_FOODS';
    case Enum$ItemCategory.GROCERIES:
      return r'GROCERIES';
    case Enum$ItemCategory.HEALTH_WELLNESS:
      return r'HEALTH_WELLNESS';
    case Enum$ItemCategory.HOUSEHOLD_ITEMS:
      return r'HOUSEHOLD_ITEMS';
    case Enum$ItemCategory.MEAT_POULTRY:
      return r'MEAT_POULTRY';
    case Enum$ItemCategory.NONE:
      return r'NONE';
    case Enum$ItemCategory.PERSONAL_CARE:
      return r'PERSONAL_CARE';
    case Enum$ItemCategory.PET_SUPPLIES:
      return r'PET_SUPPLIES';
    case Enum$ItemCategory.PRODUCE:
      return r'PRODUCE';
    case Enum$ItemCategory.SNACKS:
      return r'SNACKS';
    case Enum$ItemCategory.$unknown:
      return r'$unknown';
  }
}

Enum$ItemCategory fromJson$Enum$ItemCategory(String value) {
  switch (value) {
    case r'BABY_CARE':
      return Enum$ItemCategory.BABY_CARE;
    case r'BAKERY':
      return Enum$ItemCategory.BAKERY;
    case r'BEVERAGES':
      return Enum$ItemCategory.BEVERAGES;
    case r'CANNED_GOODS':
      return Enum$ItemCategory.CANNED_GOODS;
    case r'CLEANING_SUPPLIES':
      return Enum$ItemCategory.CLEANING_SUPPLIES;
    case r'DAIRY':
      return Enum$ItemCategory.DAIRY;
    case r'FROZEN_FOODS':
      return Enum$ItemCategory.FROZEN_FOODS;
    case r'GROCERIES':
      return Enum$ItemCategory.GROCERIES;
    case r'HEALTH_WELLNESS':
      return Enum$ItemCategory.HEALTH_WELLNESS;
    case r'HOUSEHOLD_ITEMS':
      return Enum$ItemCategory.HOUSEHOLD_ITEMS;
    case r'MEAT_POULTRY':
      return Enum$ItemCategory.MEAT_POULTRY;
    case r'NONE':
      return Enum$ItemCategory.NONE;
    case r'PERSONAL_CARE':
      return Enum$ItemCategory.PERSONAL_CARE;
    case r'PET_SUPPLIES':
      return Enum$ItemCategory.PET_SUPPLIES;
    case r'PRODUCE':
      return Enum$ItemCategory.PRODUCE;
    case r'SNACKS':
      return Enum$ItemCategory.SNACKS;
    default:
      return Enum$ItemCategory.$unknown;
  }
}

enum Enum$MetricUnit {
  CL,
  GRAM,
  KG,
  L,
  ML,
  $unknown;

  factory Enum$MetricUnit.fromJson(String value) =>
      fromJson$Enum$MetricUnit(value);

  String toJson() => toJson$Enum$MetricUnit(this);
}

String toJson$Enum$MetricUnit(Enum$MetricUnit e) {
  switch (e) {
    case Enum$MetricUnit.CL:
      return r'CL';
    case Enum$MetricUnit.GRAM:
      return r'GRAM';
    case Enum$MetricUnit.KG:
      return r'KG';
    case Enum$MetricUnit.L:
      return r'L';
    case Enum$MetricUnit.ML:
      return r'ML';
    case Enum$MetricUnit.$unknown:
      return r'$unknown';
  }
}

Enum$MetricUnit fromJson$Enum$MetricUnit(String value) {
  switch (value) {
    case r'CL':
      return Enum$MetricUnit.CL;
    case r'GRAM':
      return Enum$MetricUnit.GRAM;
    case r'KG':
      return Enum$MetricUnit.KG;
    case r'L':
      return Enum$MetricUnit.L;
    case r'ML':
      return Enum$MetricUnit.ML;
    default:
      return Enum$MetricUnit.$unknown;
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
