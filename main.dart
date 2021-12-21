import 'Address.dart';
import 'Agenda.dart';
import 'Contato.dart';
import 'ContatoPessoal.dart';
import 'ContatoProfissional.dart';

void main() {
  Agenda agenda = new Agenda();
  List<Contato> contatos = createContatos(agenda);
  agenda.removeContato(contatos[0]);
  agenda.showAllContatos();
  agenda.searchContato('João');
  agenda.searchContato('Maria');
}

List<Contato> createContatos(Agenda agenda) {
  ContatoProfissional ctpf1 = new ContatoProfissional();
  ctpf1.nome = "João";
  ctpf1.telefone = "8812345678";
  ctpf1.data = new DateTime.now().toString();
  ctpf1.empresa = "IFCE-Cedro";

  ContatoProfissional ctpf2 = new ContatoProfissional();
  ctpf2.nome = "Maria";
  ctpf2.telefone = "888765421";
  ctpf2.data = new DateTime.now().toString();
  ctpf2.empresa = "IFCE-Crato";

  ContatoPessoal ctps1 = new ContatoPessoal();
  Address address1 = new Address();
  ctps1.nome = "Chico";
  ctps1.telefone = "8835819999";
  ctps1.data = new DateTime.now().toString();
  address1.street = "Rua 15 de novembro";
  address1.number = 100;
  address1.neighborhood = "Centro";
  ctps1.address = address1;

  ContatoPessoal ctps2 = new ContatoPessoal();
  Address address2 = new Address();
  ctps2.nome = "Rosa";
  ctps2.telefone = "8835819090";
  ctps2.data = new DateTime.now().toString();
  address2.street = "Rua José Augusto";
  address2.number = 20;
  address2.neighborhood = "7 de setembro";
  ctps2.address = address2;

  return agenda.addContato([ctpf1, ctpf2, ctps1, ctps2], agenda);
}
