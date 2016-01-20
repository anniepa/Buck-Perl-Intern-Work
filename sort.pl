
while ($lines=<>){
	chomp($lines);
	@lines=split('	', $lines);
	$friends{$lines[0]}++;
	$friends {$lines[1]}++;
}
	close (F);
foreach $person (keys %friends){
		push(@ppl,$person);
	};
@sort= sort {$a cmp $b} @ppl; #sorts by alphabetical order from specified array
print "@sort\t";