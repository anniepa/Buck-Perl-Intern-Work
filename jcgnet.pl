use Set::Intersection;
use List::MoreUtils qw/ uniq /;

while ($line=<>){
	chomp($line);
	@fields=split('	', $line);
	$gene=$fields[0];
	@terms=split('!', $fields[1]); #separates terms by symbol
	@{$hash{$gene}}=@terms;#puts terms in an array
}

close (F);

#foreach $key (keys %hash){
#	print "$key\t@{$hash{$key}}\n";
#}
@genes=keys %hash;
#find jaccard coefficient
for($i=0;$i<=$#genes;$i++){
	for($j=$i+1;$j<=$#genes;$j++){
		#print "@{$hash{$genes[$i]}}\n@{$hash{$genes[$j]}}\n";
		@intersection= get_intersection($hash{$genes[$i]}, $hash{$genes[$j]});
		@union=uniq(@{$hash{$genes[$i]}}, @{$hash{$genes[$j]}});
		#print "@intersection\n@union\n";
		$jaccard=(scalar @intersection)/ (scalar @union);
		print "$genes[$i]\t$genes[$j]\n";
	}
}
