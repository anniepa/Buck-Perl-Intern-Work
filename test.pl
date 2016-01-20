
while ($line=<>){
	chomp ($line);
	@line=split('	', $line);
	$sum=$line[0]+$line[1];#adds the specified number in each array
	print "$sum\n";
}
close (HANDLE);