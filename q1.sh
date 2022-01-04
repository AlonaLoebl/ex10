(A)
awk 'END{print NR}' aliceinwonderland.txt

(B)
awk '/Alice/' aliceinwonderland.txt | wc -l

(C)
awk '/ Alice /' aliceinwonderland.txt | wc -l

(D)
awk '{print gsub("Alice",$0)}' aliceinwonderland.txt | awk 'BEGIN{sum=0}{sum=sum+$1}END{print sum}'

(E)
awk '{print $1}' aliceinwonderland.txt | sort -n | head -1

(F)
tr -cs '[:alnum:]' '\n' <aliceinwonderland.txt | awk '{a[$1]++}END{for(k in a)print a[k], k}' | sort -n | tail -n5 


(G)
awk '/ [O,o]ne[/,,., ]| [T,t],wo,[/,,., ]| [T,t]hree[/,,., ]| [F,f]our[/,,., ]| [F,f]ive[/,,., ]| [S,s]ix[/,,., ]| [S,s]even[/,,., ]| [E,e]ight[/,,., ]| [N,n]ine[/,,., ]/ {print $0}' aliceinwonderland.txt | awk '/Alice/ {print $0}' | wc -l

