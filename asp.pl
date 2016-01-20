
$integer=0;
while ($lines=<>){
	chomp($lines);
	@lines=split('	', $lines);
	if(! (exists $hash{$lines[0]})){
		$hash{$lines[0]}=$integer;
		$integer++;
	}
	if(! (exists $hash{$lines[1]})){
		$hash{$lines[1]}=$integer;
		$integer++;
	}
	print "$hash{$lines[0]}\t$hash{$lines[1]}\n";
}

close (F);

open(OUT,">friends.index") || die("Cannot open outfile");

foreach $x (sort {$hash{$a} <=> $hash{$b}} keys %hash){
	print OUT "$hash{$x}\t$x\n";
}

close(OUT);