#!/usr/bin/perl

#Input file:     ../TXT/AB_ZJF-index.csv
#                ../TXT/G_JFY-full-index.csv
#Output file:    ../TXT/AB-G_ZJFY-extend-index.csv";


use Encode;
use Encode qw(encode decode);

use utf8;
use open ":std", ":encoding(UTF-8)";


my $input_file = "../TXT/AB_ZJF-index.csv";

open (INPUT_FILE, '<', $input_file);
while (<INPUT_FILE>) {
    $temp = $_;
    $temp =~ s /\r|\n//g;
    $fullline=$temp;
    ($AB_number, $AB_Z, $AB_J, $AB_F, $AB_relate) = split (/:/, $temp);
    $AB_fullline{$AB_number} = $fullline;
    $AB_index{$AB_number}=$AB_J;

#    print "$AB_number => $AB_Z | $AB_J | $AB_F | $AB_relate\n";
    
}

close (INPUT_FILE);

my $input_file = "../TXT/G_JFY-full-index.csv";

open (INPUT_FILE, '<', $input_file);
while (<INPUT_FILE>) {
    $temp = $_;
    $temp =~ s /\r|\n//g;
    $fullline= $temp;
    ($G_number, $G_J, $G_F, $G_Y, $rest) = split (/:/, $temp);
    $G_fullline{$G_J}=$fullline;
    $G_fullline_F{$G_F}=$fullline;
    $G_fullline_Y{$G_Y}=$fullline;
    
#    print "$G_number => $G_J | $G_F | $G_Y | $rest\n";

}

close (INPUT_FILE);

my $output_file = "../TXT/AB-G_ZJFY-extend-index.csv";
open (OUTPUT_FILE, '>', $output_file);

# print OUTPUT_FILE "AB表編碼:正體字:簡體字:繁體字:簡正對應關係:AB表和G表對應原則:G表編碼:簡體字:繁體字:異體字:一對多附註\n";

foreach my $key (sort keys %AB_fullline) {


    $G_J=$G_fullline{$AB_index{$key}};
    $G_F=$G_fullline_F{$AB_index{$key}};
    $G_Y=$G_fullline_Y{$AB_index{$key}};

    # if ($G_Y ne '') {
    #     print $G_Y;
    # }
    
    if ($G_fullline{$AB_index{$key}} ne '') {
        print OUTPUT_FILE "$AB_fullline{$key}:對應簡體:$G_J\n";
    } elsif (($G_J eq '') and ($G_F ne '')) {
        print OUTPUT_FILE "$AB_fullline{$key}:對應繁體:$G_F\n";
    } elsif ((($G_J eq '') and ($G_F eq '')) and ($G_Y ne '')) {
#    } elsif (($G_J eq '') and ($G_F eq ''))  {
        print OUTPUT_FILE "$AB_fullline{$key}:對應異體:$G_Y\n";
    } else {
        print OUTPUT_FILE "$AB_fullline{$key}\n";
    }
    
}

close (OUTPUT_FILE);



    
