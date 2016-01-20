
while ($line=<>){#makes each row into array
	chomp ($line);
	@line=split('	', $line);
	$sum=0;
	for($i=0;$i<=$#line;$i++){#sums the numbers in the arrays made by the previous while loop
		$sum=$sum+$line[$i];
	}
	print "$line\t$sum\n";
}
close (HANDLE);