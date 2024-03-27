L000: x = 5;
L001: y = 1;
L002: if ! (x > 1) goto L006;
L003: y = x * y;
L004: x = x - 1;
L005: goto L002;
L006: skip;

//@PRACOWNIA
//@analysis reaching_definitions
//@language while
//@ label 'Lentry'
//@    in: '{(x, ?), (y, ?)}'
//@   out: '{(x, ?), (y, ?)}'
//@ label 'Lexit'
//@    in: '{(x, L000), (x, L004), (y, L001), (y, L003)}'
//@   out: '{(x, L000), (x, L004), (y, L001), (y, L003)}'
//@ label 'L000'
//@    in: '{(x, ?), (y, ?)}'
//@   out: '{(x, L000), (y, ?)}'
//@ label 'L001'
//@    in: '{(x, L000), (y, ?)}'
//@   out: '{(x, L000), (y, L001)}'
//@ label 'L002'
//@    in: '{(x, L000), (x, L004), (y, L001), (y, L003)}'
//@   out: '{(x, L000), (x, L004), (y, L001), (y, L003)}'
//@ label 'L003'
//@    in: '{(x, L000), (x, L004), (y, L001), (y, L003)}'
//@   out: '{(x, L000), (x, L004), (y, L003)}'
//@ label 'L004'
//@    in: '{(x, L000), (x, L004), (y, L003)}'
//@   out: '{(x, L004), (y, L003)}'
//@ label 'L005'
//@    in: '{(x, L004), (y, L003)}'
//@   out: '{(x, L004), (y, L003)}'
//@ label 'L006'
//@    in: '{(x, L000), (x, L004), (y, L001), (y, L003)}'
//@   out: '{(x, L000), (x, L004), (y, L001), (y, L003)}'
