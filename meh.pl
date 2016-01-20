open (F, "iris.txt") || die ("Error");
while ($lines=<F>){
	chomp($lines);
	@lines=split (/ /, $lines);
	$trash=pop(@lines);
	print "@lines\n";
}
close(F);

