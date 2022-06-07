function is_git
  git symbolic-ref HEAD > /dev/null 2>&1
end

function git_branch
  if is_git
    set_color brgreen
    echo -n '\e[97m~' '\e[92m'(git rev-parse --abbrev-ref HEAD 2> /dev/null)
    set_color normal
  end
end

function fish_prompt

  echo -ne '\e[33m'(basename (pwd | sed "s#$HOME#\~#")) (git_branch) '\e[32mλ'
  set_color normal
  echo -n ' '
end

