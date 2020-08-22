#!/usr/bin/perl

# Covernt oneline multi characters file into multi lines single character, the input file has to be only one line
# Also plus "B0000:" to one column

use Encode;
use Encode qw(encode decode);

use utf8;
use open ":std", ":encoding(UTF-8)";

my $input_file = "../TXT/B_ZJ-two.csv";

open (INPUT_FILE, '<', $input_file);
while (<INPUT_FILE>) {
    $temp = $_;
    $temp =~ s /\r|\n//g;
    ($number, $A[$number], $AJ[$number], $B[$number], $BJ[$number]) = split (/:/, $temp);
#   print "$number, $A[$number], $AJ[$number], $B[$number], $BJ[$number]\n";
    
}

close (INPUT_FILE);

my $output_file = "../TXT/B_ZJ-diff.csv";
open (OUTPUT_FILE, '>', $output_file);

for(my $i = 0; $i <=6343; $i++){
#    print $A[$i]."\n";
    if ($AJ[$i] ne $BJ[$i])
    {
        print OUTPUT_FILE "$i:$A[$i]:$AJ[$i]:$BJ[$i]\n";
    }
}

close (OUTPUT_FILE);
