%{
%}

%%
"<"[^>]*> {printf("%s\n", yytext); }
. ;
%%	

int yywrap(){ return 1; }
	
int main()
{
	yyin = fopen("tags.txt","r");
	yylex();
	return 0;
}
