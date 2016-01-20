
print "Warning: all answers, except names, must be in all lowercase letters.\nWhen there is no answer function, press enter to continue.";
my $enter=<>;
if ($enter=~<.>){
	\n;
}
my $answer =<>;
chomp($answer);
print "Hello, what is your name?";
my $answer =<>;
chomp($answer);
if($answer=~<.>){
    print "So, your name is $answer! Are you a boy or girl?\n";
	chomp($answer);
	my $gender=<>;
		
	if($gender=~/boy/){
		print "Okay, so you're a $gender.\n";
		chomp($gender);
		}
		else {
		print "Okay, so you're a girl.\n";
		}
}
print "This is your neighbor. You've been rivals with him since you two were babies. Er...what's his name?";
my $rival=<>;
chomp($rival);
if($rival=~<.>){
	print "Ah! I remember, his name is $rival.";
	chomp($rival);
}
print "$answer, We live in a world full of pokemon.\n Some people have pokemon as pets.\n";
my $enter=<>;
chomp($answer);
print "Some use them in battles.\n";
my $enter=<>;
chomp($answer);
print "You are going to go one your own adventure to become a master.\n";
my $enter=<>;
chomp($answer);
print "Be quick, be smart, and I'll see you at my lab!\n";
my $enter=<>;
chomp($answer);
if ($enter=~<.>){
	\n
}
print "You turn into a small cluster of pixels and begin inside\n your house in Pallet Town.\n";
my $enter=<>;
if ($enter=~<.>){
	\n;
}
print "You wake up to your alarm clock.\n
After further inspection of the ringing device,\n you find out you're running late!\n
You jump out of bed and quickly get ready.\n Kissing mom goodbye, you set off to the town Lab.";
my $enter=<>;
if ($enter=~<.>){
	\n;
}
print "How surprising, Prof. Oak is absent.\nProbably researching in the tall grass outside of town.\nWanna go check?";
my $yesno=<>;
chomp($yesno);
if($yesno=~/no/){
	print "No?? You lazy bum! Go look for him in the tall grass! >:U\n";
	}
	else{
	print "Okay, go along then!";
	}
my $enter=<>;
if ($enter=~<.>){
	\n;
}
print "You are now in the tall grass.\nAnd all of the sudden,\n Prof. Oak is running toward you!
'Be careful!' Oak said.\n 'The tall grass is dangerous! You need a pokemon to protect you!'\nAfter that, he dragged you into his lab.\n";
my $enter=<>;
if ($enter=~<.>){
	\n;
}
print "In the lab, you see $rival. He sees you and Oak and says,\n'Grandpa! What's taking ya so long? I want my pokemon!'";
my $enter=<>;
if ($enter=~<.>){
	\n;
}
print "Oak steps forward, 'Calm down, $rival,' he says.\n
'Let $answer' pick first.'\n";
my $enter=<>;
if ($enter=~<.>){
	\n;
}
print "$rival is livid at the statement. 'What?!' he yells, 'I want it first!! >:('\n";
my $enter=<>;
if ($enter=~<.>){
	\n;
}
print "'Now calm down, $rival. Just let $answer pick.'\n
Oak turns to you.
'$answer, time to pick your first partner!'";
my $enter=<>;
if ($enter=~<.>){
	\n;
}
print "It's time to choose your first pokemon!\nWhich will you choose?";
my $enter=<>;
if ($enter=~<.>){
	\n;
}
print"a. Bulbasaur: the grass-type pokemon?\n";
my $enter=<>;
if ($enter=~<.>){
	\n;
}
print"b. Squirtle: the water-type pokemon?\n";
my $enter=<>;
if ($enter=~<.>){
	\n;
}
print"Or, c. Charmander: the fire-type pokemon?\n";
my $enter=<>;
if ($enter=~<.>){
	\n;
}
print "Please type 'a', 'b', or 'c' to choose.\nBe careful, you only have one chance.";
my $enter=<>;
if ($enter=~<.>){
	\n;
}
my $firstpokemon=<>
if ($firstpokemon=~<.>);{
if ($firstpokemon=~m/a/){
	print "You got a Bulbasaur!"
	}
	if($firstpokemon=~m/b/){
		print "You got a Squirtle!"
};
		if(my $firstpokemon=~m/c/){
			print "You got a Charmander!"
};
};