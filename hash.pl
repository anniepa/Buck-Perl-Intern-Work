#!/usr/bin/perl


%phone=();
while($line=<>){
	chomp($line);
	@lines=split('	',$line);
	$phone{$lines[0]}=$lines[1];
}
close(F);

open(F,"age.txt") || die("ERROR: Cannot open file");
%age=();
while($line=<F>){
	chomp($line);
	@lines=split('	',$line);
	$age{$lines[0]}=$lines[1]; #lists ages with corresponding name
}
close(F);

foreach $x (keys %phone){
	print "$x\t$phone{$x}\t$age{$x}\n";
}#combines phone numbers and names