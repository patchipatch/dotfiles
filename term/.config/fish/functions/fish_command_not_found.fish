function fish_command_not_found
echo "$argv[1] was not found, here are some possible sources:"
/usr/bin/pkgfile $argv[1]
end
