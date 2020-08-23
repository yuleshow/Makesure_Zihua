#!/usr/bin/perl

# Covernt oneline multi characters file into multi lines single character, the input file has to be only one line
# Also plus "B0000:" to one column

use Encode;
use Encode qw(encode decode);

# use UTF-16;
use utf8;
# use utf16;

# Input file:  ../TXT/ORIGIN-G.txt
# Output file: ../TXT/G-index.csv

use open ":std", ":encoding(UTF-8)";

my $input_file = "../TXT/ORIGIN-G.txt";

open (INPUT_FILE, '<', $input_file);

my $output_file = "../TXT/G-index.csv";

open (OUTPUT_FILE, '>', $output_file);

while (<INPUT_FILE>) {
    $temp = $_;
    $temp =~ s /\r|\n//g;
    $temp =~ s /c[0-9]+//g;
    $temp =~ s /a[0-9]+//g;
        $temp =~ s /d[0-9]+//g;
    $temp =~ s /珊󠄁/珊/g;

    if ($temp ne '') {
        ($g_number, $g_character) = split (/\ /, $temp);

        if ($g_number <= 3500) {
            print OUTPUT_FILE  "G1-0$g_number:$g_character\n";
        } elsif (($g_number > 3500) and ($g_number <=6500)) {
            print OUTPUT_FILE  "G2-0$g_number:$g_character\n";
        } elsif ($g_number>6500) {
            print OUTPUT_FILE "G3-0$g_number:$g_character\n";
        }
         
        
    }
}

close (INPUT_FILE);

close (OUTPUT_FILE);
