
while ($line=<>){
	chomp ($line);
	@line=split('	', $line);
	$sum=0;
	foreach $number(@line){
		$sum=$sum+$number;#sum of rows but with a foreach loop
	}
	print "$line\t$sum\n";
}
close (HANDLE);