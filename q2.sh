#a
sed -E -n '/(Holmes|Sherlock)/p' sherlockholmes.txt | wc -l
#b
sed -n 's/\(Sherlock\|Holmes\)/&\n/gp' sherlockholmes.txt | grep Sherlock|Holmes | wc -l
#c
sed -n 's/^/Hello:/gp' sherlockholmes.txt
#d
sed -E -n 's/[A-Z][a-z]{1,}\s[A-Z][a-z]{1,}/Ido Niv/gp' sherlockholmes.txt
#e
sed -E -n 's/\((.*)\)/[\1]/gp' sherlockholmes.txt
