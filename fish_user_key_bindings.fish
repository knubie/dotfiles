function fish_user_key_bindings
  fzf_key_bindings

  fish_vi_key_bindings
  bind -M insert \cf accept-autosuggestion
  bind -M insert \ce forward-word
  bind H beginning-of-line
  bind L end-of-line
  #  bind -M insert -m default jj backward-char force-repaint
end
