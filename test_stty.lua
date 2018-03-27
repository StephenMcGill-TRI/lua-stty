#!/usr/bin/env lua
local stty = require'stty'
local ttyname = arg[1] or '/dev/ttyACM0'

print("TTY", ttyname)

local fd
local has_unix, unix = pcall(require, 'unix')
if has_unix then
  print("Opening", ttyname)
  fd = assert(unix.open(ttyname, unix.O_RDWR + unix.O_NOCTTY))
else
  fd = assert(io.open(ttyname, 'wb'))
end
print("fd", fd)

-- Check if opened correctly
-- assert(fd>2, string.format("Open: %s, (%d)\n", ttyname, fd))
local baud = 115200

-- Serial port settings
stty.raw(fd)
stty.serial(fd)
stty.speed(fd, baud)

print("closing")
if has_unix then
  unix.close(fd)
else
  fd:close()
end
