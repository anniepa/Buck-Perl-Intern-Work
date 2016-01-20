open (HANDLE, "g2.net") || die ("ERROR: Cannot open file");
#for undirected networks only
while ($lines=<HANDLE>){
	chomp($lines);
	@lines=split('	', $lines);
	$friends{$lines[0]}{$lines[1]}=1;
	$friends{$lines[1]}{$lines[0]}=1; #delete for directed networks
}
close (F);
foreach $i (keys %friends){
	$degree=scalar keys %{$friends{$i}};
	$triangle=0;
	foreach $j (keys %{$friends{$i}}){			#two for loops check for edges between all pairs of neighbors
		foreach $k (keys %{$friends{$i}}){
			next if $j eq $k;
			$triangle++ if (exists $friends{$j}{$k}); #"exists" checks if said key has a variable
		};
	}
	$denom=$degree*($degree-1); #starting to find the clustering coefficient
	if($denom==0){
		$coef=0;
	}
	else{
		$coef=$triangle/$denom;
	}
	print "$i\t$degree\t$coef\n";
	$sum{$degree}+=$coef;
	$count{$degree}++;
}

foreach $x (sort {$a<=>$b} keys %sum){
	print "$x\t",$sum{$x}/$count{$x},"\n";
}