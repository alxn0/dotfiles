" Color [[wikilinks]] and #tags (footnotes already handled by builtin markdown)
syntax match markdownWikiLink /\[\[[^][]\+\]\]/ containedin=ALL display
syntax match markdownTag /\v%(^|\s)@<=#[0-9_/-]*[A-Za-z][A-Za-z0-9_/-]*/ display

highlight default link markdownWikiLink Underlined
highlight default link markdownTag      Identifier
