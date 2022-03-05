lab1 : cars_total.txt cars_ranking.txt

cars_ranking.txt : cars_ranking.awk cars_total.txt  
	./cars_ranking.awk cars_total.txt > cars_ranking.txt

cars_total.txt: cars_total.awk data_lab1/data.csv 
	./cars_total.awk data_lab1/data.csv | sort -t, -nk5 -r > cars_total.txt

clean :
	rm -f cars_total.txt cars_ranking.txt
