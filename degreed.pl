
#for undirected networks only
while ($lines=<>){
	chomp($lines);
	@lines=split('	', $lines);
	$friends{$lines[0]}{$lines[1]}=1;
	$friends{$lines[1]}{$lines[0]}=1; #delete for directed networks
}
close (F);

print "Name\tDegree\n";
foreach $person (keys %friends){
	$degree=scalar keys%{$friends{$person}};
	print "$person\t$degree\n";
	$count{$degree}++;#counts how many edges someone has
}

print "Degree Distribution\n";
foreach $value (sort {$a <=> $b} keys %count){#puts the degrees in order and how many people have said degree
	print "$value\t$count{$value}\n";
}