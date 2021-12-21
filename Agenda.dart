import 'Contato.dart';

class Agenda {
  List<Contato> contatos = [];

  addContato(contatos, Agenda agenda) {
    if (contatos is List<Contato>)
      for (var contato in contatos) {
        this.contatos.add(contato);
      }
    else
      this.contatos.add(contatos);
    return this.contatos;
  }

  removeContato(Contato contato) {
    this.searchContato(contato.nome);
    this.contatos.remove(contato);
  }

  showAllContatos() {
    if (this.contatos.length == 0)
      return;
    else
      for (var contato in this.contatos) {
        print('Nome: ${contato.nome}');
        print('Telefone: ${contato.telefone}');
        print('data: ${contato.data}\n');
      }
  }

  searchContato(String nome) {
    var result =
        this.contatos.firstWhere((el) => el.nome == nome, orElse: () => null);

    if (result == null)
      print('Contato não existe na Agenda');
    else
      print('Contato existe na Agenda');
  }
}
