import 'dart:mirrors';

import 'package:console/model/pessoa.dart';
import 'package:console/service/imc_service.dart';
import 'package:test/test.dart';

void main() {
  group('Calculo do IMC', (){
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
}
