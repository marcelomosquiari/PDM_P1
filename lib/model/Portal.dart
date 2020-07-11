class Portal {
  //Atributos
  String _id;
  String _email;
  double _senha;

  //Construtor
  Portal(this._id, this._email, this._senha);

  //Getters
  String get id => _id;
  String get email => _email;
  double get senha => _senha;

  Portal.map(dynamic obj) {
    this._id = obj['id'];
    this._email = obj['email'];
    this._senha = obj['senha'];
  }

  //Converter os dados para um Mapa
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (_id != null) {
      map["id"] = _id;
    }
    map["email"] = _email;
    map["senha"] = _senha;
    return map;
  }

  //Converter um Mapa para o modelo de dados
  Portal.fromMap(Map<String, dynamic> map, String id) {
    //Atribuir id ao this._id, somente se id não for
    //nulo, caso contrário atribui '' (vazio).
    this._id = id ?? '';
    this._email = map["email"];
    this._senha = map["senha"];
  }
} 