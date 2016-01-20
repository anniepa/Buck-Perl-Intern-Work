open (F, "friends.net") || die ("ERROR: Cannot open file");

while ($lines=<F>){
	chomp($lines);
	@lines=split('	', $lines);
	$friends{$lines[0]}{$lines[1]}=1;
	$friends{$lines[1]}{$lines[0]}=1;
}
$interger=0;
foreach $x (keys %friends){
	@friend=$interger++;
	print "$interger\t$friends{x}\n";
	};

close (F);