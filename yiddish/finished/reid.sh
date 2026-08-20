ls $1| while read file; do perl "../../scripts/rm-id.prl" "$file" > "$file".noid; perl "../../scripts/add-id.prl" "$file".noid > "$file"; rm "$file".noid; done
