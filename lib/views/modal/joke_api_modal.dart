class joke_modal {
  String value;

  joke_modal({required this.value});

  factory joke_modal.get({required Map data}) {
    return joke_modal(value: data['value']);
  }
}
