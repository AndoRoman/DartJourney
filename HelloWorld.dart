void main() {
  // Primeros pasos en Dart

  print("Hello world!");

  var variablesMinusculas = 'Hola Mundo!';

  print(variablesMinusculas);

  // variables

  var myint1 = 3;
  var mystring = 'hola mundo2';
  String mystring2 = "esto es otra cadena de caracteres";
  print(mystring * myint1);
  double mydouble = 5.9;
  print(mystring2);
  print(mydouble);

  bool mybool = false;
  print(mybool);
  mybool = true;
  // Constantes

  final myfinalstring =
      'forever final, es una constante en tiempo de ejecucion';

  const myconst = "const es una constante en tiempo de compi";

  print(myfinalstring);
  print(myconst);

  // Controles de flujo

  if (mydouble == 5.9 && mybool) {
    print('Se cumplio la condicion if');
  } else if (mydouble == 5.3 || myint1 != 2) {
    print("el else if");
    // ignore: dead_code
  } else {
    print("dead line of code");
  }

  for (var i = 0; i < 2; i++) {
    print("Un classico for");
  }

  while (myint1 < 9) {
    print(myint1);
    myint1++;
  }

  // Exe func

  myVoidFunction();

  // Collections!!!
  //Se recomienda solo usar list de un mismo tipo de datos!
  List mylist = ['jose', 'maria', 2, 5.2, mybool];

  print(mylist);
  print(mylist[2]);
  print(mylist[0]);

  //set casi igual a la list pero no se repiten los valores
  Set myset = {'jose', 'maria', 'maria'};
  print(myset);

  //map
  Map mymap = {"clave": 55, "jose": 77, 7: 9.3};
  print(mymap);
  print(mymap['jose']);
  mymap["nuevoDato"] = 893;

  //for in

  for (var element in myset) {
    print(element);
  }

  //OPTIONAL => un valor null por defecto o una variable que puede ser nulable!
  String? myoptionalString;
  print(myoptionalString);
}

//Enumerable
//
enum Myenum { dart, python, java }

// funciones

void myVoidFunction() {
  print("my void function");
  print(myStringFunc());
}

String myStringFunc() {
  String test = "hola de nuevo!";
  return test;
}
