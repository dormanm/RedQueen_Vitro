use warnings;
use strict;

#This script will evolve molecules in vitro using defined parameters.
#It is designed to simulate intraorganismal Red Queen type evolution.
#It will start out as very rudimentary and gradually become more sophisticated as evolution parameters are incorportated into the algorithm.

my $round_timer = ''; #Initialisation of the evolution round timer
my $dna1 = '';
my $dna2 = '';
my $nuc = '';
my $len = '';

print "\n\n\nWeb: bioinf.dormanm.com, Git: github.com/bioinf-dormanm-com\n\n";
print "\n\n\nRedQueen_Vitro (rqv) version 0.0.1.\n\n";
print "RQV will evolve molecules in vitro using defined parameters.\n";
print "\nIn its first iteration, the program will randomly generate a seed nucleotide sequence (1*) to evolve. It will be assumed that its reverse complement will be the second molecule (2*).\n";
print "Please be ready to supply the number of rounds of evolution you want to simulate:\n\n";

$round_timer = <>;

print "\nCreating a random 20mer:";

$nuc = int(rand(3));
$len = length($dna1);

while ($len ne 20) {

  if ($nuc eq 0) {
    $dna1 .= 'G';
  }
  if ($nuc eq 1) {
    $dna1 .= 'A';
  }
  if ($nuc eq 2) {
    $dna1 .= 'T';
  }
  if ($nuc eq 3) {
    $dna1 .= 'C';
  }
  $nuc = int(rand(3));
  $len = length($dna1);
}

print "$dna1\n";
