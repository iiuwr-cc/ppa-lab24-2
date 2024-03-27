L000: if ! (x == 0) goto L004;
L001: x = 1;
L002: y = 1;
L003: goto L006;
L004: x = 1;
L005: y = 5;
L006: skip;
L007: z = x;

//@PRACOWNIA
//@analysis constant_propagation
//@language while
//@ label 'Lentry'
//@    in: 'x=⊤ y=⊤ z=⊤'
//@   out: 'x=⊤ y=⊤ z=⊤'
//@ label 'Lexit'
//@    in: 'x=1 y=⊤ z=1'
//@   out: 'x=1 y=⊤ z=1'
//@ label 'L000'
//@    in: 'x=⊤ y=⊤ z=⊤'
//@   out: 'x=⊤ y=⊤ z=⊤'
//@ label 'L001'
//@    in: 'x=⊤ y=⊤ z=⊤'
//@   out: 'x=1 y=⊤ z=⊤'
//@ label 'L002'
//@    in: 'x=1 y=⊤ z=⊤'
//@   out: 'x=1 y=1 z=⊤'
//@ label 'L003'
//@    in: 'x=1 y=1 z=⊤'
//@   out: 'x=1 y=1 z=⊤'
//@ label 'L004'
//@    in: 'x=⊤ y=⊤ z=⊤'
//@   out: 'x=1 y=⊤ z=⊤'
//@ label 'L005'
//@    in: 'x=1 y=⊤ z=⊤'
//@   out: 'x=1 y=5 z=⊤'
//@ label 'L006'
//@    in: 'x=1 y=⊤ z=⊤'
//@   out: 'x=1 y=⊤ z=⊤'
//@ label 'L007'
//@    in: 'x=1 y=⊤ z=⊤'
//@   out: 'x=1 y=⊤ z=1'
