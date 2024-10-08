#!/usr/bin/env fish

# Convert wal's colors.sh to fish-compatible syntax
set wal_colors_file ~/.cache/wal/colors.sh
set fish_colors_file ~/.cache/wal/colors.fish

if test -f $wal_colors_file
    # Read colors.sh and convert each line
    cat $wal_colors_file | sed 's/^export /set -gx /; s/=\(.*\)/ \1/' > $fish_colors_file
end
