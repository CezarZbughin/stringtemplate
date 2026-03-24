#
# @param stringtemplate:linker constructor.in.file : string
#
data modify storage stringtemplate:linker self set value {\
    file : {core:"null"}\
}
data modify storage stringtemplate:linker self.file set \
    from storage stringtemplate:linker constructor.in.file
