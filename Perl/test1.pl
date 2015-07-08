#!/usr/bin/perl
use strict; #important pragma
use warnings; #also an important pragma
print "Please enter your username: "; 
my $username;
my $stringliteral1;
my $stringliteral2;
my $stringliteral3;
my $datevar;
my $master = "Ako";
my $pet = "Harold";
my $what = "pikas";
$username = <STDIN>;
$datevar = '10/03/1970'; # single quoted string
$stringliteral3 = 'abc\'xyz';
$stringliteral2 = 'abc:\\';
$stringliteral1 = 'haiku haiku
Perl stew'; # comment

# \033 - octal character 33
# \x16 - hexadecimal 16
# \t   - tab
# 56;
# 12.5;
# 34700.000;
# .007;
# 7E-3;
# 39e-100;
# 3.9E-99;
# 87e6;
# 87_000_000; 	

# NUMERICAL OPERATORS
# ** 		exponentiation
# *, /, %	multiplication, division, modulus
# +, -		addition, subtraction

# COMPARISONS
# ==		eq
# !=		ne
# if $a set to 4, 3 <=> $a returns -1
# if $a set to 4, 4 <=> $a returns 0
# if $a set to 4, 5 <=> $a returns 1

chomp($username); # remove new line "\n" from the variable
print "Hello, $username.\n";
print $stringliteral1, "\n";
print "${master}'s dog, $pet, consumed 8.5 pounds of
$what this week.\n";

@names = `cat /etc/passwd | cut -f 1 -d :`;
@ids = `cat /etc/passwd | cut -f 3 -d :`;

$LIMIT = 5000;
$length = @ids;
$i = 0;

print "The normal users on your system are: \n";

while ($i < $length){
	if ( ($ids[$i] >= 500) && ($ids[$i] <= 1000) ){
		print "$names[$i]";
		$find_disk_usage( $names[$i]);
	}
	$i += 1;
}

sub find_disk_usage{
	$usage = `du -s /home/$_[0] | cut -f 1`;
	chomp $usage;
	if ( $usage > $LIMIT ){
		print "$_[0] is over the limit.  $_[0] is using $usage Kilobytes. \n";"
	}
}
