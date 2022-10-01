class Page1 {
  //global variables
  var _name,_address;

  //constructor
  Page1(var c, var d){
    _name = c;
    _address = d;
  }

  //add method para pag print
  add(){
    print('$_name lives in $_address');
  }

}