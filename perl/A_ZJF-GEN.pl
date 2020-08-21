#!/usr/bin/perl

# Covernt oneline multi characters file into multi lines single character, the input file has to be only one line
# Also plus "B0000:" to one column
# Input file:    ../TXT/ORIGIN-A_ZJF.txt
# Output file:   ../TXT/A_ZJF-unidexed.csv

use Encode;
use Encode qw(encode decode);

use utf8;
use open ":std", ":encoding(UTF-8)";

my $input_file = "../TXT/ORIGIN-A_ZJF.txt";
my $output_file = "../TXT/A_ZJF-unidexed.csv";

open (INPUT_FILE, '<', $input_file);
open (OUTPUT_FILE, '>', $output_file);

while (<INPUT_FILE>) {
    $temp = $_;
    $temp =~ s /\r|\n//g;
    $temp =~ s/【[0-9]+ 畫】//g;
    $temp =~ s/[0-9]+ 畫～ [0-9]+ 畫//g;
    $temp =~ s/- [0-9]+ -//g;
    $temp =~ s/標準字對照簡化字表//g;
    $temp =~ s/[0-9]+ 畫//g;
    $temp =~ s/\ //g;
    $temp =~ s/\(锺\)\[鍾\]//g;
    $temp =~ s/\(苹\)\[蘋\]//g;
    $temp =~ s/蘋\(\)\[蘋\]/蘋(苹)[蘋]/g;
    $temp =~ s/轂\(\)\[轂\]/轂(♧)[轂]/g;
    $temp =~ s/\)\*\[/:一簡對多:/g;
    $temp =~ s/\(/:/g;
    $temp =~ s/]//g;
    $temp =~ s/\)\[/:一簡對一:/g;
    $temp =~ s/\)\*/:一簡對多:佔格/g;
    $temp =~ s/\)/:一簡對一:佔格/g;
    if ($temp ne '') {
        print OUTPUT_FILE $temp."\n";
    }
}


close (INPUT_FILE);
close (OUTPUT_FILE);
