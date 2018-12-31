if exists("b:current_syntax")
  finish
endif

syntax match clojureComment "\v;.*$"
syntax match clojureString "\v\"[^\"]*(\"|$)"
"syntax match clojureString "\v(\"|^)[^\"]*\""
syntax match clojureParen "\v\("
syntax match clojureParen "\v\)"
syntax match clojureParen "\v\["
syntax match clojureParen "\v\]"
syntax match clojureParen "\v\{"
syntax match clojureParen "\v\}"

let b:current_syntax = "clojure"
