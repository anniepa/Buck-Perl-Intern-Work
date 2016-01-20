

while ($lines=<>){
	chomp($lines);
	@lines=split('	', $lines);
	$friends{$lines[0]}{$lines[1]}=1;
	$friends{$lines[1]}{$lines[0]}=1;
	#counts edges on nodes
	#this is if you don't know if there are repeats or not
}
foreach $x (keys %friends){
	@friend_list=keys %{$friends{$x}};
	$friend_count=$#friend_list+1;
	print "$x\t$friend_count\t@friend_list\n"
	#this lists the name of friends also
	};

