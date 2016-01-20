
while ($line=<>){
	chomp ($line);
	@line=split('	', $line);
	for($i=0;$i<=$#line;$i++){#sums columns
		$sum[$i]=$sum[$i]+$line[$i];
	}
}
print "@sum\n";
