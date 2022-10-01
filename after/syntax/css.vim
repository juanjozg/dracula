if dracula#should_abort('css')
    finish
endif

hi! link cssAtRule            DraculaPinkBold
hi! link cssAtRuleLogical     DraculaPinkBold
hi! link cssAttr              DraculaPurple
hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        DraculaPink
hi! link cssAttributeSelector DraculaGreenItalic
hi! link cssBraces            Delimiter
hi! link cssClassName         DraculaGreenItalic
hi! link cssClassNameDot      DraculaGreenItalic
hi! link cssColor             DraculaFg
hi! link cssCommonAttr        DraculaPink
hi! link cssFunction          DraculaGreen
hi! link cssFunctionName      DraculaGreenBold
hi! link cssFunctionComma     Delimiter
hi! link cssIdentifier        DraculaGreenItalic
hi! link cssImportant         DraculaPinkBold
hi! link cssKeyFrameProp      DraculaPinkBoldItalic
hi! link cssMediaType         DraculaPurple
hi! link cssNoise             DraculaPink
hi! link cssProp              DraculaCyan
hi! link cssPseudoClass       DraculaGreen
hi! link cssPseudoClassId     DraculaGreen
hi! link cssPseudoClassLang   DraculaGreen
hi! link cssTagName           DraculaGreenBoldItalic
hi! link cssUnitDecorators    DraculaPink
hi! link cssVendor            DraculaGreenItalic
hi! link sassClass            cssClassName
hi! link sassClassChar        cssClassNameDot
hi! link sassDefinition       DraculaGreen
hi! link sassFunction         cssFunction
hi! link sassFunctionDecl     cssFunctionName
hi! link sassInclude          DraculaPink
hi! link sassMedia            DraculaPink
hi! link sassMediaOperator    DraculaPink
hi! link sassMediaOperators   DraculaPink
hi! link sassMediaQuery       DraculaCyan
hi! link sassMixin            DraculaPink
hi! link sassMixinName        cssFunction
hi! link sassMixing           DraculaPink
hi! link sassProp             cssProp
hi! link sassProperty         cssProp
hi! link sassVariable         DraculaFg
