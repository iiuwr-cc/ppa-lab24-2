L000: x = 2;
L001: y = 4;
L002: x = 1;
L003: if ! (y > x) goto L006;
L004: z = y;
L005: goto L008;
L006: z = y * y;
L007: x = z;
L008: skip;

//@PRACOWNIA
//@analysis live_variables
//@language while
//@ label 'Lentry'
//@    in: '{}'
//@   out: '{}'
//@ label 'Lexit'
//@    in: '{}'
//@   out: '{}'
//@ label 'L000'
//@    in: '{}'
//@   out: '{}'
//@ label 'L001'
//@    in: '{}'
//@   out: '{y}'
//@ label 'L002'
//@    in: '{y}'
//@   out: '{x, y}'
//@ label 'L003'
//@    in: '{x, y}'
//@   out: '{y}'
//@ label 'L004'
//@    in: '{y}'
//@   out: '{}'
//@ label 'L005'
//@    in: '{}'
//@   out: '{}'
//@ label 'L006'
//@    in: '{y}'
//@   out: '{z}'
//@ label 'L007'
//@    in: '{z}'
//@   out: '{}'
//@ label 'L008'
//@    in: '{}'
//@   out: '{}'
