use List::Util 'max';

while(<>){
	chomp;
	@fields=split(/\t/,$_);
	$edge{$fields[0]}{$fields[1]}=1;
	$edge{$fields[1]}{$fields[0]}=1;
}

foreach $node (sort keys %edge){
	$level=1;
	%seen=();
	$seen{$node}=1;
	@current=keys %{$edge{$node}};
	@next=();
	while(@current){
		foreach $y (@current){
			next if exists $seen{$y};
			$seen{$y}=1;
			$out{$node}{$y}=$level;
			push(@next,keys %{$edge{$y}});
		}
		$level++;
		@current=@next;
		@next=();
	}
}

foreach $node (sort keys %out){
	foreach $y (sort keys %{$out{$node}}){
		print "$node\t$y\t$out{$node}{$y}\n";
		push(@values,$out{$node}{$y});
		#alternative
		#$max=$out{$node}{$y} 
		#if $out{$node}{$y}>$max
	}
}
	$max= max @values;
	print "$max\n";