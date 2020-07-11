class Item {
  
  String _id;
  String _profissional;
  String _area;

  Item(this._id, this._profissional, this._area);

  String get id => _id;
  String get email => _profissional;
  String get senha => _area;

  Item.map(dynamic obj) {
    this._id = obj['id'];
    this._profissional = obj['Profissional'];
    this._area = obj['Área de atuação'];
  }

  String get area => null;

  String get profissional => null;

  //Converter os dados para um Mapa
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (_id != null) {
      map["id"] = _id;
    }
    map["Profissional"] = _profissional;
    map["Área de atuação"] = _area;
    return map;
  }

  //Converter um Mapa para o modelo de dados
  Item.fromMap(Map<String, dynamic> map, String id) {
    //Atribuir id ao this._id, somente se id não for
    //nulo, caso contrário atribui '' (vazio).
    this._id = id ?? '';
    this._profissional = map["Profissional"];
    this._area = map["Área de atuação"];
  }
}