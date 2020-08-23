perl A-index-GEN.pl
perl B-index-GEN.pl
perl G-index-GEN.pl
perl A_ZJF-GEN.pl
perl A_ZJF-index.pl
perl B_ZJF-index.pl
cat ../TXT/A_ZJF-index.csv ../TXT/B_ZJF-index.csv > ../TXT/AB_ZJF-index.csv
perl G_JFY-GEN.pl
perl G_JFY-long-GEN.pl
perl G_JFY-full-index.pl
perl AB-G_ZJFY-full-index.pl
perl AB-G_ZJFY-extend-index.pl
perl ABG_ZJFY-final.pl
