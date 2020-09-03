#!/usr/bin/perl

use Encode;
use Encode qw(encode decode);

# use UTF-16;
use utf8;
# use utf16;
#  use open ":encoding(gbk)", ":std";
use open ":std", ":encoding(UTF-8)";

my $input_file = $ARGV[0];
# $input_file =~ s/\r|\n//g;
($input_name, $input_ext) = split (/\./, $input_file);
my $output_file = $input_name."-result.".$input_ext;

# print "filename $input_file : $input_name == $input_ext\n";

open (INPUT_FILE, '<', $input_file);
open (OUTPUT_FILE, '>', $output_file);

$count=1;

while (<INPUT_FILE>) {
    $temp=$_;
    $temp =~ s/\r|\n//g;
    $line[$count] = $temp;
    $count++;
}


close (INPUT_FILE);

$firstline=$line[1];
$secondline=$line[2];

@first_char = split(undef, $line[1]);
@secound_char = split(undef, $line[2]);



@output_chars=split(undef, $currentline);



$i=0;
foreach (@first_char) {
    print OUTPUT_FILE "$first_char[$i]($secound_char[$i])";
    $i++;

}

close OUTPUT_FILE;


