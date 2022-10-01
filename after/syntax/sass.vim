if dracula#should_abort('sass')
    finish
endif

hi! link sassId                     cssIdentifier
hi! link sassIdChar                 cssIdentifier
hi! link sassInterpolationDelimiter DraculaPink
hi! link sassVariableAssignment     Operator
hi! link sassClass                  cssClassName
hi! link sassClassChar              cssClassNameDot
hi! link sassDefinition             DraculaGreen
hi! link sassFunction               cssFunction
hi! link sassFunctionDecl           cssFunctionName
hi! link sassInclude                DraculaPink
hi! link sassMedia                  DraculaPink
hi! link sassMediaOperator          DraculaPink
hi! link sassMediaOperators         DraculaPink
hi! link sassMediaQuery             DraculaCyan
hi! link sassMixin                  DraculaPink
hi! link sassMixinName              Function
hi! link sassMixing                 DraculaPink
hi! link sassProp                   cssProp
hi! link sassProperty               cssProp
hi! link sassVariable               DraculaFg
