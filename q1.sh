#a
awk 'END {print NR}' aliceinwonderland.txt
#b
awk '/ Alice / {count++} END {print count}' aliceinwonderland.txt
#c
awk '{for (i=2;i<NF;i++) {words[$i]++}} END {for (k in words) if (words[k] == 1) print k}' aliceinwonderland.txt
#d
awk '{for (i=1;i<=NF;i++) {words[$i]++}} END {for (k in words) print words[k], k}' aliceinwonderland.txt | sort -k1 -h -r | head -6 | sed '2d'
#e
awk '{for (i=1;i<=NF;i++) {len+=length($i); count++}} END {print len/count}' aliceinwonderland.txt
