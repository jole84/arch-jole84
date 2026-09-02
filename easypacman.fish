#!/bin/fish

complete -c easypacman -s h -l help -d 'Show help'

complete -c easypacman -s r -l uninstall -d 'Uninstall package' -r -a "(pacman -Qeq)" -f
complete -c easypacman -s R -l uninstall-interactive -d 'Fuzzy search and uninstall' -f
complete -c easypacman -s i -l install -d 'Install package' -r -a "(pacman -Ssq)" -f
complete -c easypacman -s I -l install-interactive -d 'Fuzzy search and install' -f
complete -c easypacman -s u -l upgrade -d 'Upgrade packages' -f
complete -c easypacman -s s -l search -d 'Search for packages' -f

complete -c easypacman -l info -d 'Show package info' -f
complete -c easypacman -l list-installed -d 'List installed packages' -f
complete -c easypacman -l list-unneeded -d 'List unneeded packages' -f
complete -c easypacman -l list-aliens -d 'List installed packages not in sync database' -f
complete -c easypacman -l autoremove -d 'Remove orphaned packages that are no longer needed' -f
complete -c easypacman -s y -l assumeyes -d 'Automatically answer yes to all questions' -f
complete -c easypacman -s v -l verbose -d 'Show pacman command' -f

# ln -s ~/git/arch-jole84/easypacman.fish ~/.config/fish/completions/
#  -c or --command COMMAND
#         Specifies  that COMMAND is the name of the command. If there is no -c or -p, one non-option argument will be used as the com‐
#         mand.

#  -p or --path COMMAND
#         Specifies that COMMAND is the absolute path of the command (optionally containing wildcards).

#  -e or --erase
#         Deletes the specified completion.

#  -s or --short-option SHORT_OPTION
#         Adds a short option to the completions list.

#  -l or --long-option LONG_OPTION
#         Adds a GNU-style long option to the completions list.

#  -o or --old-option OPTION
#         Adds an old-style short or long option (see below for details).

#  -a or --arguments ARGUMENTS
#         Adds the specified option arguments to the completions list.

#  -k or --keep-order
#         Keeps the order of ARGUMENTS instead of sorting alphabetically. Multiple complete calls with -k result in  arguments  of  the
#         later ones displayed first.

#  -f or --no-files
#         This completion may not be followed by a filename.

#  -F or --force-files
#         This completion may be followed by a filename, even if another applicable complete specified --no-files.

#  -r or --require-parameter
#         This  completion must have an option argument, i.e. may not be followed by another option.  This means that the next argument
#         is the argument to the option.  If this is not given, the option argument must be attached like -xFoo or --color=auto.

#  -x or --exclusive
#         Short for -r and -f.

#  -d or --description DESCRIPTION
#         Add a description for this completion, to be shown in the completion pager.

#  -w or --wraps WRAPPED_COMMAND
#         Causes the specified command to inherit completions from WRAPPED_COMMAND.  This is used for "this command completes like that
#         other command" kinds of relationships.  See below for details.

#  -n or --condition CONDITION
#         This completion should only be used if the CONDITION (a shell command) returns 0. This makes it possible to  specify  comple‐
#         tions  that should only be used in some cases. If multiple conditions are specified, fish will try them in the order they are
#         specified until one fails or all succeeded.

#  -C or --do-complete STRING
#         Makes complete try to find all possible completions for the specified string. If there is no STRING, the current  commandline
#         is used instead.