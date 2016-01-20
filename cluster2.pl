
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
	$degree=scalar keys %{$friends{$i}};
	$triangle=0;
	foreach $j (keys %{$friends{$i}}){
		foreach $k (keys %{$friends{$i}}){
			next if $j eq $k;
			print "\t$j\t$k\n";
			$triangle++ if (exists $friends{$j}{$k}); #"exists" checks if said key has a variable
			};
		};
		$denom=$degree*($degree-1);
		if($denom ==0){
			$coef=1;
		}
		else{
			$coef=$triangle/$denom;#finds clustering coefficient
		}
		push(@cc,$coef);
		print "Degree:\t$degree\nTriangle:\t$triangle\nClustering Coefficient:\t$coef\n";
	};
	for($i=0;$i<=$#cc;$i++){#sums coefficients together
		$sum=$sum+$cc[$i];
	}
$average=$sum/scalar(@cc);
print "Average Coefficient:\t$average\n";