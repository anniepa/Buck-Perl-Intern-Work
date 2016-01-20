#!/usr/bin/perl

%phone=();
while($line=<>){
	chomp($line);
	@lines=split('	',$line);
	$phone{$lines[0]}=$lines[1];
}


print "Name\tPhone\n";
foreach $x (keys %phone){
	print "$x\t$phone{$x}\n";
}
#lists name and phone, doesn't really do anything