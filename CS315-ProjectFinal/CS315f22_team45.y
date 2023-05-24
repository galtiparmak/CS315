%token WHILE FOR RETURN PRINT IF ELSE FUNCTION IDENTIFIER NUMBER STRING ASSIGN_OP PLUS_OP MINUS_OP MULTIPLY_OP DIVIDE_OP MOD_OP
%token LP RP LB RB COMMA COLON SC AND OR LT LEQ GT GEQ EE NE COMMENT S1 S2 S3 S4 S5 S6 S7 S8 S9 S10 BULLET
%token CONNECT_TO_URL_FUNCTION SEND_TO_URL_FUNCTION RECEIVE_FROM_URL_FUNCTION READ_SENSOR_FUNCTION READ_TIME_FUNCTION

%%

program : stmt_list  {printf("Input program is valid\n"); return 0;}

stmt_list : stmt | stmt stmt_list
stmt : decl_stmt | non_decl_stmt

decl_stmt : var_decl | func_decl
var_decl : var SC | IDENTIFIER COMMA var_decl

args : var | var COMMA args
func_decl : FUNCTION IDENTIFIER LP args RP LB stmt_list RB
non_decl_stmt : arith_expr | funct_call | bool_expr_stmt | loop_stmt | if_stmt | return_stmt
		    | print_stmt | assign_stmt | comment_stmt | primitive_funct | mechanism_funct

bool_expr_stmt : bool_expr | bool_expr_stmt logic_op bool_expr
bool_expr : var bool_op var

arith_expr : term | arith_expr add_op term
term : factor | term mul_op factor
factor : var | LP arith_expr RP

funct_call : IDENTIFIER LP args RP SC
assign_stmt : IDENTIFIER ASSIGN_OP var SC | IDENTIFIER ASSIGN_OP funct_call | IDENTIFIER ASSIGN_OP arith_expr SC
return_stmt : RETURN expr_stmt SC

if_stmt : matched | unmatched
matched : IF LP bool_expr_stmt RP LB matched RB ELSE LB matched RB | BULLET non_decl_stmt
unmatched : IF LP bool_expr_stmt RP LB stmt RB | IF LP bool_expr_stmt RP LB matched RB ELSE LB unmatched RB

print_stmt : PRINT LP expr_stmt RP SC

expr_stmt : STRING | var

primitive_funct : read_sensor | read_time
read_sensor : READ_SENSOR_FUNCTION LP sensor RP SC
read_time : READ_TIME_FUNCTION LP RP SC

mechanism_funct : connect_URL | send_to_URL | receive_from_URL
connect_URL : CONNECT_TO_URL_FUNCTION LP STRING RP SC
send_to_URL : SEND_TO_URL_FUNCTION LP STRING COMMA NUMBER RP SC
receive_from_URL : RECEIVE_FROM_URL_FUNCTION LP STRING RP SC

loop_stmt : for_stmt | while_stmt
while_stmt : WHILE LP bool_expr RP LB stmt_list RB
for_stmt : FOR LP assign_stmt bool_expr SC assign_stmt RP LB stmt_list RB

comment_stmt : COMMENT

var : IDENTIFIER | NUMBER

sensor : S1 | S2 | S3 | S4 | S5 | S6 | S7 | S8 | S9 | S10

bool_op : EE | NE | LT | GT | LEQ | GEQ
add_op : PLUS_OP | MINUS_OP
mul_op : MULTIPLY_OP | DIVIDE_OP
logic_op : AND | OR


%%
#include "lex.yy.c"

int yyerror(char* s){
  fprintf(stderr, "%s on line %d\n",s, yylineno);
  return 1;
}

int main(){
  yyparse();
  return 0;
}