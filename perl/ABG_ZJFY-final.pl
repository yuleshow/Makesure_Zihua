#!/usr/bin/perl

#Input file:     ../TXT/AB-G_ZJFY-full-extend-index.csv
#                ../TXT/G_JFY-full-index.csv
#Output file:    ../TXT/AB-G_ZJFY-full-index.csv


use Encode;
use Encode qw(encode decode);

use utf8;
use open ":std", ":encoding(UTF-8)";


my $input_file = "../TXT/AB-G_ZJFY-full-extend-index.csv";

open (INPUT_FILE, '<', $input_file);
my $i=1;
while (<INPUT_FILE>) {
    $temp = $_;
    $temp =~ s /\r|\n//g;
    $fullline[$i]=$temp;

    ($AB_number, $AB_Z, $AB_J, $AB_F, $JF_relate, $ABG_relate, $G_number, @rest) = split (/:/, $temp);
    $isGexist{$G_number}="YES";
    $i++;    
}

# print "finished the first part, now the \$i = $i\n";
    
close (INPUT_FILE);

my $input_file = "../TXT/G_JFY-full-index.csv";

open (INPUT_FILE, '<', $input_file);
while (<INPUT_FILE>) {
    $temp = $_;
    $temp =~ s /\r|\n//g;

    ($G_number, $G_J, $G_F, $G_Y, $rest) = split (/:/, $temp);
    if ($isGexist{$G_number} eq "YES") {
        $fullline[$i]="";
    } else {
        $fullline[$i]="::::::$temp";
    }

    $i++;

}

# print "finished the second part, now the \$i = $i\n";

close (INPUT_FILE);

my $output_file = "../TXT/ABG_ZJFY-final.csv";
open (OUTPUT_FILE, '>', $output_file);


print OUTPUT_FILE "AB表編碼:正體字:簡體字:繁體字:簡正對應關係:AB表和G表對應原則:G表編碼:簡體字:繁體字:異體字:一對多附註\n";
for(my $j = 1; $j <= $i; $j++){

    if ($fullline[$j] ne '') {
        print OUTPUT_FILE "$fullline[$j]\n";
    }
}

close (OUTPUT_FILE);



    
