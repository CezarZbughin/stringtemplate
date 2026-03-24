#
#
#
$data modify storage oop:x exception set value {\
    ooptype : {\
        as_string: "TemplateEvaluationException",\
        Exception:{},\
        TemplateEvaluationException:{}},\
    exception__message : "Failed to evaluate template. Can not resolve '$(nbt)'."\
}