#!/usr/bin/awk -f

BEGIN { FS=","; rank=0}
{
	rank++;
	printf("%d, %s\n", rank, $0)
	
}
