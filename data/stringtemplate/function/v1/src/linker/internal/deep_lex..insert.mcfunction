    $data modify storage stringtemplate:linker deep_lex.out.lex_record."$(file)" set \
        from storage stringtemplate:lexer lex.out
    data modify storage stringtemplate:linker deep_lex.out.lex_list append \
        from storage stringtemplate:lexer lex.out