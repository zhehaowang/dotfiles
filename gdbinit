set $USECOLOR = 1
set $COLOREDPROMPT = 0
# SETCOLOR1STLINE and modify it :-)
set $SETCOLOR1STLINE = 0

#set $SHOWSTACK = 0

set history filename ~/.gdb_history
set history save

# These make gdb never pause in its output
set height 0
set width 0


set $SHOW_CONTEXT = 1
set $SHOW_NEST_INSN = 0

set $CONTEXTSIZE_STACK = 6
set $CONTEXTSIZE_DATA  = 8
set $CONTEXTSIZE_CODE  = 8

# __________________color functions_________________
#
# color codes

set style address foreground green