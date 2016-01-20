

while ($lines=<>){
	chomp($lines);
	@lines=split('	', $lines);
	$friends{$lines[0]}++; #counts how many edges a node has
	$friends {$lines[1]}++;
}
foreach $person (keys %friends){
	print "$person\t$friends{$person}\n";
	};

close (F);