package Gramatica;
import java_cup.runtime.Symbol;
import practicaoctaldecimal.PracticaOctalDecimal;


%%
%public
%class AnalizadorLexico
%cup
%cupdebug
%line
%column

/*Identificadores*/
Numero = [01234567]


%{

    private Symbol symbol(int tipo){
        return new Symbol(tipo, yyline+1, yycolumn+1);
    }

    private Symbol symbol(int tipo, Object value){
        return new Symbol(tipo, yyline+1, yycolumn+1, value);
    }


%}
%%
<YYINITIAL>{
        
    {Numero}                                                                    {return symbol(sym.NUMERO, new Integer(yytext()));}
    .                                                                           {System.out.println("ERROR LEXICO");}
}