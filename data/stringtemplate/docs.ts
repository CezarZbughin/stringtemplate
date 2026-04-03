//
// THIS IS DOCUMENTATION ONLY
//
import "./function/v1/core/doc"


// VALUE PROVIDER

type ValueProvider = VarValueProvider | ConstValueProvider | FuncValueProvider;

type VarValueProvider = {
    provider : "VAR";
    id: string;
    name : string; 
    nbt : string; 
}

type ConstValueProvider = {
    provider : "CONST";
    value : unknown;
    type : "string" | "list" | "object" | "number"
}

type FuncValueProvider = {
    provider : "FUNC";
    function : string,
    args : ValueProvider[]
}

//LEXER

type Token = 
    {TEXT:string} | 
    {TEMPLATE:boolean} | 
    {ENDTEMPLATE: boolean} |
    {X: boolean} |
    {FOR: boolean} |
    {IN: boolean} |
    {DO: boolean} |
    {FROM: boolean} |
    {TO: boolean} |
    {ENDFOR: boolean} |
    {EACH: boolean} |
    {ENDEACH: boolean} |
    {IF: boolean} |
    {THEN: boolean} |
    {ELSE: boolean} |
    {ENDIF: boolean} |
    {FUNC: boolean} |
    {ARG: boolean} |
    {ENDFUNC: boolean} |
    {INVOKE: boolean} |
    {WITH: boolean} |
    {ENDINVOKE: boolean};

type Lex = {
    vesrion : "v1",
    file : string,
    dependinces : {file: string},
    template : Token[]
}

// ABSTRACT SYNTAX TREE

type Variable = {
    id : string,
    name : string,
    value : unknown
}

type Scope = {
    variables : Variable[]
}

type SyntaxNode = StrNode | ValueNode | IfNode | ForNode | EachNode | InvokeNode;

type SyntaxTree = SyntaxNode[];

type StrNode = {
    node : "STR";
    str : string; //sq escaped string
}

type ValueNode = {
    node : "VALUE";
    value_provider : ValueProvider;
}

type IfNode = {
    node : "IF";
    predicate : ValueProvider;
    then : SyntaxTree;
    else : SyntaxTree | CoreNull;
}

type ForNode = {
    node : "FOR";
    list_provider : ValueProvider;
    list_value : unknown[] | CoreNull;
    body : SyntaxTree;
}

type EachNode = {
    node : "EACH";
    nbt : string;
    list_value : unknown[] | CoreNull;
    body : SyntaxTree;
}

type InvokeNode = {
    node : "INVOKE";
    model : ValueProvider;
    body : SyntaxTree;
}

//

type Parser = {
    version : string;
    file : string;
    dependencies : {file : string}[];
    tokens : Token[];
    scopes : Scope[];
    tree_stack : SyntaxTree[];
}



