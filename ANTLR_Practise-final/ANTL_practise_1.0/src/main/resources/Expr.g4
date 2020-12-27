//grammar Expr;
//
////prule: 'hello';
////prule: 'hello' CHAR+;
////CHAR: 'a'..'z' | ' ' |'A'..'Z';
//
//expr: left=add(op+=('+'|'-')right+=add)*;
//do: DO;
//while: WHILE;
//add: left=mul(op+=('*'|'/')right+=mul)*;
//mul: num=NUMBER | '(' expr ')';
//viktor: num= do BRACKET_L expr BRACKET_R while '(' expr ')' BRACKET_L expr BRACKET_R;
//
//NUMBER: [0-9]+('.'[0-9]*)? | '.' [0-9]+;
//WHITESPACE: [ \n\r\t]+ -> skip;
//ADD: '+';
//SUB: '-';
//MUL: '*';
//DIV: '/';
//BRACKET_L: '{';
//BRACKET_R: '}';
//DO: 'do';
//WHILE: 'while';
grammar Expr;

expr: left=add(op+=(ADD|SUB)right+=add)*;

add: left=mul(op+=(MUL|DIV)right+=mul)*;

mul: num=NUMBER | '(' expr ')';

NUMBER: [0-9]+('.'[0-9]*)? | '.' [0-9]+;

WHITESPACE: [ \n\r\t]+ -> skip;

ADD: '+';

SUB: '-';

MUL: '*';

DIV: '/';

LP: '(';

RP: ')';