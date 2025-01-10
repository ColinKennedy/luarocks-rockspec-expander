.PHONY: check-stylua llscheck luacheck stylua

# Git will error if the repository already exists. We ignore the error.
# NOTE: We still print out that we did the clone to the user so that they know.
#
ifeq ($(OS),Windows_NT)
    IGNORE_EXISTING = 2> nul
else
    IGNORE_EXISTING = 2> /dev/null || true
endif

clone_git_dependencies:
	git clone git@github.com:nvim-neorocks/luarocks-tag-release.git .dependencies/luarocks-tag-release $(IGNORE_EXISTING)

llscheck: clone_git_dependencies
	llscheck main.lua

luacheck:
	luacheck main.lua

check-stylua:
	stylua main.lua --color always --check

stylua:
	stylua main.lua
