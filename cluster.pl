
#for undirected networks only
while ($lines=<>){
	chomp($lines);
	@lines=split('	', $lines);
	$friends{$lines[0]}{$lines[1]}=1;
	$friends{$lines[1]}{$lines[0]}=1; #delete for directed networks
}
close (F);
foreach $i (keys %friends){
	print "Target Person: $i\n";
	$degree=scalar keys %{$friends{$i}}; #finds number of edges
	$triangle=0;
	foreach $j (keys %{$friends{$i}}){#counts how many triangles are being made
		foreach $k (keys %{$friends{$i}}){
			next if $j eq $k;
			print "\t$j\t$k\n";
			$triangle++ if (exists $friends{$j}{$k}); #"exists" checks if said key has a variable
			};
		};
		print "Degree:\t$degree\nTriangle:\t$triangle\nClustering Coeffitient:\t",$triangle/$degree,"\n";
	};
