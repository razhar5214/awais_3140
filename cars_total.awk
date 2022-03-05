#!/usr/bin/awk -f

BEGIN { FS=",";}

{
	if(NR!=1){
		sum=0;

		for(i=10; i<=NF; i++){
			sum += $i;
		}
		printf("%d, %d, %s, %s, %d\n", $7, $4, $5, $6, sum)
	}
	

}
END{}
