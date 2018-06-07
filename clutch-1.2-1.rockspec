-- This file was automatically generated for the LuaDist project.

package = "clutch"
version = "1.2-1"
-- LuaDist source
source = {
  tag = "1.2-1",
  url = "git://github.com/LuaDist-testing/clutch.git"
}
-- Original source
-- source = {
--     url = "git://github.com/akojo/clutch",
--     tag = "v1.2.1"
-- }
description = {
    summary = "A simple API for sqlite3",
    detailed = [[
        clutch is an API for sqlite3 designed for simplicity and ease of use.
        It hides all the complexities of binding parameters to SQL queries and
        parsing the results returned by queries, allowing you to concentrate
        on writing application code.
    ]],
    homepage = "https://github.com/akojo/clutch",
    license = "MIT"
}
dependencies = {
    "lua >= 5.2"
}
build = {
    type = "builtin",
    modules = {
        clutch = {
            sources = "clutch.c",
            libraries = {"sqlite3"},
            incdirs = {"$(LIBSQLITE3_INCDIR)"},
            libdirs = {"$(LIBSQLITE3_LIBDIR)"}
        }
    }
}
external_dependencies = {
   LIBSQLITE3 = {
      header = "sqlite3.h"
   }
}