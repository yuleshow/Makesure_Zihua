#!/usr/bin/perl

# Covernt oneline multi characters file into multi lines single character, the input file has to be only one line
# Also plus "B0000:" to one column
# Inputfile:      ../TXT/A-index.csv
#                 ../TXT/A_ZJF-unidexed.csv
# Output:         ../TXT/A_ZJF-index.csv

use Encode;
use Encode qw(encode decode);

use utf8;
use open ":std", ":encoding(UTF-8)";

my $input_file = "../TXT/A-index.csv";

open (INPUT_FILE, '<', $input_file);
while (<INPUT_FILE>) {
    $temp = $_;
    $temp =~ s /\r|\n//g;
    ($a_number, $a_character) = split (/:/, $temp);
#    print "$a_number => $a_character\n";
    $a_index{$a_character}= $a_number;
}

close (INPUT_FILE);

my $input_file = "../TXT/A_ZJF-unidexed.csv";

open (INPUT_FILE, '<', $input_file);
while (<INPUT_FILE>) {
    $temp = $_;
    $temp =~ s /\r|\n//g;
    $fullline= $temp;
    ($a_character, $rest) = split (/:/, $temp);
    $AJ_table{$a_character} = $fullline;
#    print "$a_character => $fullline\n";

}

close (INPUT_FILE);


my $output_file = "../TXT/A_ZJF-index.csv";
open (OUTPUT_FILE, '>', $output_file);


while ( ($key, $value) = each %a_index ) {
    $fullline = "$a_index{$key}:$AJ_table{$key}";
    ($ZJF_number, $Z_char, $J_char, $ZJF_relate, $F_char) = split (/:/, $fullline);
    $ZJF{$ZJF_number} = $ZJF_number.":".$Z_char.":".$J_char.":".$F_char.":".$ZJF_relate;
    # print "$key => $value\n";
    
}

foreach my $number (sort keys %ZJF) {
    print OUTPUT_FILE $ZJF{$number}."\n";
}

close (OUTPUT_FILE);

