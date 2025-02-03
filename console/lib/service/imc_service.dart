import 'dart:io';
import 'package:console/model/pessoa.dart';

class ImcService{
  static void recebeDadosPessoaCalculaIMC(){
    String nome = lerTexto('Digite seu nome: ');
    double peso = lerValor('Digite seu peso:');
    double altura = lerValor('Digite sua altura:');
    Pessoa pessoa = setPessoa(nome, peso, altura);
    double imc = calcularImc(pessoa);
    imprimirMensagem('${pessoa.nome}, seu IMC é: $imc');
  }

  static void imprimirMensagem(String mensagem){
    print(mensagem);
  }

  static double lerValor(String mensagem){
    double valor = 0;

    imprimirMensagem(mensagem);
    try{
      String valorTexto = stdin.readLineSync() ?? "";
      valor = double.parse(valorTexto.replaceAll(",", "."));
      if(valor <= 0){
        imprimirMensagem('Valor inválido, tente novamente!');
      }
    }catch(e){
      imprimirMensagem('Valor inválido, tente novamente!');
    }

    return valor <= 0 ? lerValor(mensagem) : valor;
  }

  static String lerTexto(String mensagem){
    String texto = "";

    imprimirMensagem(mensagem);
    texto = stdin.readLineSync() ?? "";
    if(texto == ""){
      imprimirMensagem('Texto inválido, tente novamente!');
    }

    return texto.isEmpty ? lerTexto(mensagem) : texto;
  }
  
  static Pessoa setPessoa(String nome, double peso, double altura){
    return Pessoa(nome: nome, peso: peso, altura: altura);
  }

  static double calcularImc(Pessoa pessoa){
    return pessoa.peso / (pessoa.altura * pessoa.altura);
  }
}