eval "$(/opt/homebrew/bin/brew shellenv)"
set -xa PATH ":/opt/homebrew/share/go/bin"
set -xa PATH ":/opt/homebrew/opt/rustup/bin"

set -x CARGO_HOME "$HOME/.local/share/cargo"
set -x RUSTUP_HOME "$HOME/.local/share/rustup"

set -x PAGER "most"
set -x EDITOR "nvim"

if status is-interactive
    # Commands to run in interactive sessions can go here
    function fish_prompt
        set -g __fish_git_prompt_showupstream auto
	string join '' -- (set_color brgreen) (whoami) (set_color normal) '@' (set_color FF6347) (prompt_hostname) (set_color normal) '$ ' 
    end

  function fish_right_prompt
     string join '' --  (set_color bryellow) (prompt_pwd) (set_color normal)
  end
end

alias ls=eza
