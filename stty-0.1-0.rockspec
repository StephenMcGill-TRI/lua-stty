package = "stty"
version = "0.1-0"
source = {
  url = "git://github.com/StephenMcGill-TRI/lua-stty.git"
}
description = {
  summary = "Access tty",
  detailed = [[
      Access tty from Lua
    ]],
  homepage = "https://github.com/StephenMcGill-TRI/lua-stty",
  maintainer = "Stephen McGill <stephen.g.mcgill@gmail.com>",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "make",
  build_variables = {
    CFLAGS="$(CFLAGS)",
    LIBFLAG="$(LIBFLAG)",
    LUA_LIBDIR="$(LUA_LIBDIR)",
    LUA_BINDIR="$(LUA_BINDIR)",
    LUA_INCDIR="$(LUA_INCDIR)",
    LUA="$(LUA)",
  },
  install_variables = {
    INST_PREFIX="$(PREFIX)",
    INST_BINDIR="$(BINDIR)",
    INST_LIBDIR="$(LIBDIR)",
    INST_LUADIR="$(LUADIR)",
    INST_CONFDIR="$(CONFDIR)",
  },
}
