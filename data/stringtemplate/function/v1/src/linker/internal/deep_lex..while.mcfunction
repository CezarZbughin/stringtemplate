
    #queue pop
    data modify storage stringtemplate:linker deep_lex.local.queue_front set \
        from storage stringtemplate:linker deep_lex.local.queue[0]
    data remove storage stringtemplate:linker deep_lex.local.queue[0]

    data modify storage stringtemplate:compile_exception static.linker.files append \
        from storage stringtemplate:linker deep_lex.local.queue_front.file

    #continue; if queue front already lexed
    execute if function stringtemplate:v1/src/linker/internal/deep_lex..already_lexed run \
        return run execute if data storage stringtemplate:linker deep_lex.local.queue[0] run \
            function stringtemplate:v1/src/linker/internal/deep_lex..while
    
    #lex the queue front 
    data remove storage stringtemplate:lexer constructor
    data modify storage stringtemplate:lexer constructor.in.file set from \
        storage stringtemplate:linker deep_lex.local.queue_front.file
    function stringtemplate:v1/src/lexer/public/constructor

    function stringtemplate:v1/core/try
        function stringtemplate:v1/src/lexer/public/lex
    execute if data storage oop:x exception run return fail

    #insert the result
    function stringtemplate:v1/src/linker/internal/deep_lex..insert with storage stringtemplate:lexer lex.out

    #add all children to queue
    data modify storage stringtemplate:linker deep_lex.local.queue append \
        from storage stringtemplate:lexer lex.out.dependencies[]

    #if queue not empty loop
    function stringtemplate:v1/core/try
    execute if data storage stringtemplate:linker deep_lex.local.queue[0] run \
        function stringtemplate:v1/src/linker/internal/deep_lex..while
    execute if data storage oop:x exception run return fail
