L000: if ! (a > b) goto L004;
L001: x = b - a;
L002: y = a - b;
L003: goto L006;
L004: y = b - a;
L005: x = a - b;
L006: skip;

//@PRACOWNIA
//@analysis very_busy_expressions
//@language while
//@ label 'Lentry'
//@    in: '{a - b, b - a}'
//@   out: '{a - b, b - a}'
//@ label 'Lexit'
//@    in: '{}'
//@   out: '{}'
//@ label 'L000'
//@    in: '{a - b, b - a}'
//@   out: '{a - b, b - a}'
//@ label 'L001'
//@    in: '{a - b, b - a}'
//@   out: '{a - b}'
//@ label 'L002'
//@    in: '{a - b}'
//@   out: '{}'
//@ label 'L003'
//@    in: '{}'
//@   out: '{}'
//@ label 'L004'
//@    in: '{a - b, b - a}'
//@   out: '{a - b}'
//@ label 'L005'
//@    in: '{a - b}'
//@   out: '{}'
//@ label 'L006'
//@    in: '{}'
//@   out: '{}'
