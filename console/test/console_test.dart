import 'package:console/model/pessoa.dart';
import 'package:console/service/imc_service.dart';
import 'package:test/test.dart';

void main() {
  group('Calculo do IMC Tests', (){
    test('Calcular IMC passando uma pessoa', () {
      Pessoa pessoa = Pessoa(nome: 'Fulano', peso: 70, altura: 1.70);
      expect(ImcService.calcularImc(pessoa), greaterThan(24));
    });

    test('Calcular IMC de uma pessoa com altura 0', () {
      Pessoa pessoa = Pessoa(nome: 'Fulano', peso: 70, altura: 0);
      expect(
        ImcService.calcularImc(pessoa), 
        double.infinity,
        reason: 'Altura não pode ser 0'
      );
    });

    test('Calcular IMC de uma pessoa com peso 0', () {
      Pessoa pessoa = Pessoa(nome: 'Fulano', peso: 0, altura: 1);
      expect(
        ImcService.calcularImc(pessoa), 
        0,
        reason: 'Pesoo não pode ser 0'
      );
    }); 
  });
  group('IMC Classification Tests', () {
    test('IMC < 16', () {
      expect(ImcService.classificacaoImc(15), 'Sua classificação de IMC é: Magreza grave');
    });

    test('IMC < 17', () {
      expect(ImcService.classificacaoImc(16.5), 'Sua classificação de IMC é: Magreza moderada');
    });

    test('IMC < 18.5', () {
      expect(ImcService.classificacaoImc(18), 'Sua classificação de IMC é: Magreza leve');
    });

    test('IMC < 25', () {
      expect(ImcService.classificacaoImc(24), 'Sua classificação de IMC é: Saudável');
    });

    test('IMC < 30', () {
      expect(ImcService.classificacaoImc(29), 'Sua classificação de IMC é: Sobrepeso');
    });

    test('IMC < 35', () {
      expect(ImcService.classificacaoImc(34), 'Sua classificação de IMC é: Obesidade Grau I');
    });

    test('IMC < 40', () {
      expect(ImcService.classificacaoImc(39), 'Sua classificação de IMC é: Obesidade Grau II (severa)');
    });

    test('IMC >= 40', () {
      expect(ImcService.classificacaoImc(40), 'Sua classificação de IMC é: Obesidade Grau III (mórbida)');
    });
  });
}
