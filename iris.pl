use Math::Complex;
use Getopt::Long;
Getopt::Long::Configure('bundling');

my %opt;
$opt{'k'}=3; #number of cluster centers, default 3
$opt{'M'}=100; #max iterations, default 100
$opt{'c'}=0; #stopping criteria, percent cluster change 0
GetOptions(\%opt,'k|cluster=i','M|max_iter=i','c|criteria=f');

#finding maximums and minimums
$first=1;
while ($lines=<>){
	chomp($lines);
	@lines=split (/ /, $lines);
	
	for($i=0;$i<=$#lines;$i++){
		if($first==1){
			$feature_count=scalar @lines;
			$max[$i]=$lines[$i];
			$min[$i]=$lines[$i];
		}
		$max[$i]=$lines[$i] if ($lines[$i] > $max[$i]);
		$min[$i]=$lines[$i] if ($lines[$i] < $min[$i]);
	}
	$first=0;
	push(@data,[ @lines ]);
}
close(F);

#foreach $arrayref (@data){
	#print "@$arrayref\n";
#}
print "Max: @max\nMin: @min\n";
#generate k random centers
for($i=0; $i<$opt{'k'};$i++){
	for($j=0;$j<$feature_count;$j++){
		$center[$i][$j]=rand($max[$j]-$min[$j])+$min[$j];
	}
}
foreach $arrayref (@center){
	print "@$arrayref\n";
}

@cluster=(-1) x (scalar @data);

for($iter=0;$iter<$opt{'M'};$iter++){
	$switch=0;
#calculate distance and assign clusters
	for($i=0; $i<=$#data; $i++){
		$min_distance=INF;
		for ($j=0; $j<=$#center; $j++){
			$sum=0;
			for ($col=0;$col<$feature_count;$col++){
				$sum+=($data[$i][$col]-$center[$j][$col])**2;
			}
			$distance=sqrt($sum);
			#print "$i\t$j\t$distance\n";
			if($distance < $min_distance){
				$min_distance=$distance;
				$min_cluster=$j;
			}
		}
		if($cluster[$i] != $min_cluster){
			$switch++;
			$cluster[$i]=$min_cluster;
		}
		print "Row $i\tCluster $cluster[$i]\n";
	}
	
	#check for convergence/stopping criteria
	$percentchange=$switch/(scalar @data);
	print "Percent Change: $percentchange\n";
	last if($percentchange <= $opt{'c'});
	
	#find the mean of each cluster
	@count=(0) x $opt{'k'};
	for($i=0;$i<$opt{'k'};$i++){
		@{$sum[$i]}=(0) x $feature_count;
	}
#find sums of each new cluster
	for($i=0; $i<=$#data; $i++){
		for($col=0;$col<$feature_count;$col++){
			$sum[$cluster[$i]][$col]+=$data[$i][$col];
		}
		$count[$cluster[$i]]++;
	}
	print "Sums:\n";
	foreach $arrayref (@sum){
		print "@$arrayref\n";
	}

	print "Count @count\n";
#randomly generate a better center
	for($i=0;$i<=$#sum;$i++){
		if($count[$i]==0){
			next;
		}
		for($col=0;$col<$feature_count;$col++){
			$center[$i][$col]=$sum[$i][$col]/$count[$i];
		}
	}

	print "\nNew Centers:\n";
	foreach $arrayref (@center){
		print "@$arrayref\n";
	}
}
open(OUT, ">cluster.txt") || die("Error");
for($i=0;$i<=$#cluster;$i++){
	print OUT $i+1, "\t$cluster[$i]\n";
}
close (OUT);
