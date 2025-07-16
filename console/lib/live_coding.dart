//#region LiveCodingPalindromo
// void main() {
//   String palavra = 'osso ';
//
//   if (palavra.isNotEmpty) {
//     var result = ehPalindromo(palavra);
//
//     result
//         ? print("A palavra: ${palavra}, é um palindromo!")
//         : print("A palavra: ${palavra}, não é um palindromo!");
//   } else {
//     print("A palavra não é válida!");
//   }
// }
//
// bool ehPalindromo(String palavra) {
//   String palavraNormalizada = palavra.replaceAll(' ', '').toUpperCase();
//
//   String palavraReversa = palavraNormalizada.split('').reversed.join('');
//
//   return palavraNormalizada == palavraReversa;
// }
//#endregion

//#region NUMEROS DE 1 A 100, MULTIPLOS DE 3 E/OU DE 5
// void main() {
//   for (var i = 1; i <= 100; i++) {
//     if ((i % 5) == 0 && (i % 3) == 0) {
//       print('FizzBuzz');
//     } else if ((i % 3) == 0) {
//       print('Fizz');
//     } else if ((i % 5) == 0) {
//       print('Buzz');
//     } else {
//       print(i);
//     }
//   }
// }
//#endregion

//#region Resultado do valor fatorial
// void main() {
//   try {
//     int valor = 6;
//     int resultadoFatorial = calculateFactorialIterative(valor);
//     print('O valor de $valor! é: $resultadoFatorial');
//   } catch (e) {
//     print('Erro: ${e.toString()}');
//   }
// }
//
// int calculateFactorialIterative(int n) {
//   // O fatorial é definido apenas para números não negativos
//   if (n < 0) {
//     throw ArgumentError('O número deve ser não negativo.');
//   }
//
//   // Caso base: 0! é 1
//   if (n == 0) {
//     return 1;
//   }
//
//   int result = 1;
//   // Multiplica de 1 até n
//   for (int i = 1; i <= n; i++) {
//     result *= i;
//   }
//   return result;
// }
//#endregion

//#region Criação de Sequencia Fibonacci a partir de dois números
// void main() {
//   List<int> arrayFibonacci = [0, 1];
//
//   for (var i = 0; i < 9; i++) {
//     int proximoNumero =
//         arrayFibonacci[arrayFibonacci.length - 2] + arrayFibonacci.last;
//
//     arrayFibonacci.add(proximoNumero);
//   }
//
//   print(arrayFibonacci);
// }
//#endregion

//#region Retorno de maior número em uma lista de inteiros
// void main() {
//   List<int> numerosInteiros = [2, 4, 0, 3, 1, 5, 10, 9, 7, 6, 8];
//
//   numerosInteiros.sort((a, b) => b.compareTo(a));
//
//   print("Maior número da lista: ${numerosInteiros.first}");
//
//   print("Lista ordenada DESC: $numerosInteiros");
// }
//#endregion

//#region Validar se o número é primo
// void main() {
//   int numero = 7;
//   print('$numero é número primo? ${ehPrimo(numero)}');
// }
//
// bool ehPrimo(int number) {
//   if (number <= 1) {
//     return false;
//   }
//   if (number == 2) {
//     return true;
//   }
//   if (number % 2 == 0) {
//     return false;
//   }
//   for (int i = 3; i * i <= number; i += 2) {
//     if (number % i == 0) {
//       return false;
//     }
//   }
//   return true;
// }
//#endregion

//#region Soma de todos os números em um array
// void main() {
//   List<int> numerosInteiros = [1,7,2,4,7,2,5,4,3,5];
//
//   int somaDosItens = 0;
//   numerosInteiros.forEach((e) => somaDosItens += e);
//   print('Soma de todos os números é: $somaDosItens');
// }
//#endregion

//#region verificar quantas vogais tem uma string
// void main() {
//   String palavra = 'palavra';
//   List<String> vogais = ['a','e','i','o','u'];
//   int vogaisNaPalavra = 0;
//
//   for(var vogal in vogais){
//     for(var letra in palavra.replaceAll(' ', '').split('')){
//       vogaisNaPalavra += vogal.toUpperCase() == letra.toUpperCase()
//           ? 1
//           : 0;
//     }
//   }
//
//   print('A palavra $palavra contém $vogaisNaPalavra vogais.');
// }
//#endregion

//#region Verificar se uma palabra é anagrama de outra
// void main() {
//   String palavra1 = 'silent';
//   String palavra2 = 'listen';
//   bool ehAnagrama = true;
//
//   String palavra1Normalizada = palavra1.replaceAll(' ', '').toLowerCase();
//   String palavra2Normalizada = palavra2.replaceAll(' ', '').toLowerCase();
//
//   if (palavra1Normalizada.length != palavra2Normalizada.length) {
//     ehAnagrama = false;
//   }else{
//     List<String> list1 = palavra1Normalizada.split(''); // Divide a string em uma lista de caracteres
//     list1.sort();                                 // Ordena a lista de caracteres
//
//     List<String> list2 = palavra2Normalizada.split('');
//     list2.sort();
//
//     ehAnagrama = list1.join('') == list2.join('');
//   }
//
//   print('A palavra $palavra1 ${ehAnagrama ? 'É' : 'NÃO É'} um anagrama da palavra $palavra2');
// }
//#endregion

//#region Retorno de lista de itens unicos da primeira lista
// void main() {
//   List<int> listaNumeros = [1,2,5,2,5,3,4,3,1];
//   List<int> listaNumerosUnicos = [];
//
//   for(var numero in listaNumeros){
//     if(!listaNumerosUnicos.any((e) => e == numero)){
//       listaNumerosUnicos.add(numero);
//     }
//   }
//
//   print('Lista de números unicos: $listaNumerosUnicos');
// }
//#endregion

//#region Mostrar os numeros que estão faltando em um primeiro array
// void main() {
//   List<int> listaNumeros = [1,2,5,2,5,3,4,3,10];
//   List<int> numerosFaltando = [];
//
//   listaNumeros.sort();
//   int primeiroNumero = listaNumeros.first;
//   int ultimoNumero = listaNumeros.last;
//
//   for(var i = primeiroNumero; i <= ultimoNumero; i++){
//     if(!listaNumeros.any((e) => e == i)){
//       numerosFaltando.add(i);
//     }
//   }
//
//   print('Esses números estão faltando no primeiro array: $numerosFaltando');
// }
//#endregion

//#region Conversão de graus celcius para Fahrenheit
// void main() {
//   int grausCelcius = 30;
//   int grausFahrenheit = (grausCelcius * 9/5 + 32).ceil();
//
//   print('A temperatura de $grausCelciusº graus Celsius em Fahrenheit é de: $grausFahrenheitº');
// }
//#endregion