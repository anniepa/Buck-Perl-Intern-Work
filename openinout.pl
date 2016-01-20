open (IN, "<toy.txt");
open (OUT,">toy2");
while ($line=<IN>){
	chomp ($line);
	@line=split('	', $line);
	$sum=$line[0]+$line[1];
	print OUT "$sum\n";
}
close(IN);
close (OUT);