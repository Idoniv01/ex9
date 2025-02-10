#a
sed -rn '/(Holmes|Sherlock)/p' sherlockholmes.txt | wc -l
#b
sed -rn 's/\(Sherlock\|Holmes\)/p' sherlockholmes.txt | grep -oE "(Sherlock|Holmes)" | wc -l
#c
sed -rn 's/^/Hello: /p' sherlockholmes.txt
#d
sed -E -n 's/[A-Z][a-z]{1,}\s[A-Z][a-z]{1,}/Ido Niv/gp' sherlockholmes.txt
#e
sed -rn 's/\(/\[/gp' sherlockholmes.txt | sed -rn 's/\)/\]/gp'

