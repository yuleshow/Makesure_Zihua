#!/usr/bin/perl

#Input file:     ../TXT/G-index.csv
#                ../TXT/G_JFY-long-table.csv
#Output file:    ../TXT/G_JFY-full-index.csv


use Encode;
use Encode qw(encode decode);

use utf8;
use open ":std", ":encoding(UTF-8)";


my $input_file = "../TXT/G-index.csv";

open (INPUT_FILE, '<', $input_file);
while (<INPUT_FILE>) {
    $temp = $_;
    $temp =~ s /\r|\n//g;
    ($g_number, $g_character)  = split (/:/, $temp);
#     print "$g_number => $g_character\n";
    $g_index{$g_number}= $g_character;
}

close (INPUT_FILE);

my $input_file = "../TXT/G_JFY-long-table.csv";

open (INPUT_FILE, '<', $input_file);
while (<INPUT_FILE>) {
    $temp = $_;
    $temp =~ s /\r|\n//g;
    $fullline= $temp;
    ($gg_number, $rest) = split (/:/, $temp);
    $g_table{$gg_number} = $fullline;
#    print "$gg_number => $g_table{$gg_number}\n";

}

close (INPUT_FILE);

my $output_file = "../TXT/G_JFY-full-index.csv";
open (OUTPUT_FILE, '>', $output_file);

foreach my $key (sort keys %g_index) {

    if ($g_table{$key} eq '') {
        print OUTPUT_FILE "$key:$g_index{$key}:無繁體:無異體\n";
    } else {
        print OUTPUT_FILE "$g_table{$key}\n";
    }

}


close (OUTPUT_FILE);


    
#    print "$key:$a_index{$key}:$AJ_table{$key}\n";
    # print "$key => $value\n";
    


