#
# @param stringtemplate:linker constructor.in.file : string
#
data modify storage stringtemplate:linker self set value {\
    version : "v1", \
    file : {core:"null"}\
}
data modify storage stringtemplate:linker self.file set \
    from storage stringtemplate:linker constructor.in.file
