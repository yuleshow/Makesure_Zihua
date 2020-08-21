#!/usr/bin/perl

# Covernt oneline multi characters file into multi lines single character, the input file has to be only one line
# Also plus "B0000:" to one column

use Encode;
use Encode qw(encode decode);

# use UTF-16;
use utf8;
# use utf16;

# Input file:  ../TXT/ORIGIN-A.csv
# Output file: ../TXT/A-index.csv

use open ":std", ":encoding(UTF-8)";

my $input_file = "../TXT/ORIGIN-A.csv";

open (INPUT_FILE, '<', $input_file);
while (<INPUT_FILE>) {
    $temp = $_;
    $temp =~ s /\r|\n//g;
    $temp =~ s /流水序:教育部字號:Unicode:常用字//g;

    if ($temp ne '') {
        ($tmp1, $a_number, $tmp2, $a_character) = split (/:/, $temp);
        $a_index{$a_number}= $a_character;

    }
}
close (INPUT_FILE);

my $output_file = "../TXT/A-index.csv";

    open (OUTPUT, '>', $output_file);

    foreach $key (sort keys %a_index) {
        print OUTPUT "$key:$a_index{$key}\n";
    }

close (OUTPUT_FILE);
