L000: x = a + b;
L001: y = a * b;
L002: if ! (y > a + b) goto L006;
L003: a = a + 1;
L004: x = a + b;
L005: goto L002;
L006: skip;

//@PRACOWNIA
//@analysis available_expressions
//@language while
//@ label 'Lentry'
//@    in: '{}'
//@   out: '{}'
//@ label 'Lexit'
//@    in: '{a + b}'
//@   out: '{a + b}'
//@ label 'L000'
//@    in: '{}'
//@   out: '{a + b}'
//@ label 'L001'
//@    in: '{a + b}'
//@   out: '{a + b, a * b}'
//@ label 'L002'
//@    in: '{a + b}'
//@   out: '{a + b}'
//@ label 'L003'
//@    in: '{a + b}'
//@   out: '{}'
//@ label 'L004'
//@    in: '{}'
//@   out: '{a + b}'
//@ label 'L005'
//@    in: '{a + b}'
//@   out: '{a + b}'
//@ label 'L006'
//@    in: '{a + b}'
//@   out: '{a + b}'
