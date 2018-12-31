if exists("b:current_syntax")
  finish
endif

syntax match rubyComment "\v#.*$"
syntax match rubyString "\v\"[^\"]*\""
syntax match rubyString "\v\'[^\']*\'"
syntax match rubyConstant "\v[A-Z][a-zA-Z]+"
syntax match rubyKeyword "\v<(class|do|end|include|true|false|def|if|else|require|and|unless|return|rescue|super|self|private|next|loop|while|break)>"
syntax match Todo "\v<(TODO|FIXME|XXX)>"


let b:current_syntax = "ruby"
