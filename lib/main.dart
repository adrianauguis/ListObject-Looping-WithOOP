import 'page1.dart'; //Page1 class import
import 'dart:io'; //dart:io import para maka work with inputs and outputs etc.

void main() {
  //global variables
  int i=0,e=0;
  var nme, adrs;

  //empty na list with given keys
  List objects = [
    {'Name' : '','Address' : ''},
    {'Name' : '','Address' : ''},
    {'Name' : '','Address' : ''}
  ];
  //display instructions
  print('Enter 3 names with their corresponding addresses');

  //nested for loop, outer loop = name
  for (int x = 0; x < objects.length; x++) {
    stdout.write('Name: ');
    var input = stdin.readLineSync();
    objects[x]['Name'] = input;

    //inner loop = address
    for (i; i < objects.length; i++){
      stdout.write('Address: ');
      var input = stdin.readLineSync();
      objects[i]['Address'] = input;
      break;
    }

    //increment sa inner for loop tas condition sa next na display
    i++;
    if (i<objects.length){
      print('Next \n');
    }else{
      print('');
    }
  }

  //nested for loop pag traverse sa list
  for (int x = 0; x < objects.length; x++) {
    nme = objects[x]['Name'];

    for (e; e < objects.length; e++){
      adrs = objects[e]['Address'];
      break;
    }

    //increment sa inner for loop tas pass ang value sa Page1 class
    e++;
    Page1(nme,adrs).add();
  }
}

