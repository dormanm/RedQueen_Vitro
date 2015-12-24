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
print "\n\n\nRedQueen_Vitro Promoter Evolution (rqv_promoter) version 0.0.1.\n\n";
print "rqv_promoter will evolve bacterial Sigma70 promoters in vitro using defined parameters.\n";
print "\nIn its first iteration, the program will randomly generate a 500mer seed nucleotide sequence (1*) to evolve.\n";
print "If there is NOT a consensus -10 OR -35 OR consensus 18 nt spacer OR a valid ORF, the sequence gets binned.\n";
print "Please be ready to supply the number of rounds of evolution you want to simulate:\n\n";

#$round_timer = <>;

print "\nCreating a random 500mer:";


$nuc = int(rand(3));
$len = length($dna1);
$dna1 = '';

my $check = 0;
my $counter = 1;

SIMULATION:



if ($check == 2) {
  $dna2 = $dna1;
  $dna1 = '';
  goto END;
} else {
while ($len ne 500) {

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
  print "$dna1\n";
  $nuc = int(rand(4));
  $len = length($dna1);
}
if ($dna1 =~ /TTGACA/) {
  $check ++;
  if ($dna1 =~ /TATAAT/) {
    $check ++;
  } else {

    $len = length($dna1);
    $counter ++;
    goto SIMULATION;
  }
} else {

  $len = length($dna1);
  $counter ++;
  goto SIMULATION;
}

}

#-35
#if ($dna1 =~ /'TTGACA'/) {
#  print $dna1;
#} else {
#  goto GENERATE;
#}

#-10
#MINUS10:
#if ($dna1 =~ m/'TATAAT'/) {
#  goto READY;
#} else {
#  $dna1 = '';
#  goto GENERATE;
#}

END:
print "\n I did $counter rounds of computation\n";

print "\nThe 500mer I have generated is of 5'-3' sequence: $dna2\n";

#$dna2 = reverse $dna1;
#$dna2 =~ y/GATC/CTAG/;

#print "And the reciprocal 500mer is of 5'-3' sequence: $dna2\n";
