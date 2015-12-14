#!/usr/bin/perl
use warnings;
print " ::::::   =============================================================  :::::\n";
print " ::::::   PROGRAM TO GENERATE .QUERY FILE AND .ALIGN FILES FROM ALIGNED  :::::\n";
print " ::::::   '.TXT' FILE ('TEXT' option under 'DOWNLOAD' category in         :::::\n";
print " ::::::   DESCRIPTION option) EXTRACTED FROM BLAST                       :::::\n";
print " ::::::   =============================================================  :::::\n\n";
print " ::::::           Shuvam Banerjee             Arnav Garai                :::::\n\n";
print " ::::::               Dr. Gautam Garai's lab                             :::::\n\n";
print " ::::::             Computational Sciences Division,SINP                 :::::\n\n";
print " :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::\n";
print "\nNote:Aligned sequences that have multiple aligned segments(sequences) over\n     their entire length must be discarded else wrong result will be produced.\n";
print "\n-------------------------------------------------------------------------------\n\n";
print"\n  ENTER THE QUERY FILE '.txt' FILENAME                 : ";
chomp(my $file1=<STDIN>);
open(R,"$file1")||die "\n\t*** FILE IS NOT FOUND.TRY AGAIN ***\n";
my $file2=$file1;$file2=~s/.txt/.query/;
my $file3=$file1;$file3=~s/.txt/.align/;
open(W1,"+>$file2");
open(W2, "+>$file3");
my $flag1=0;my @arr=();my $flag2=0;my $line2;my $qno;
print "\n\n\n  READING FROM FILE '$file1' ..........\n\n\n  GENERATING '.query' AND '.align' FILES ......................\n\n";
while(my $line=<R>){
		if($line=~m/^\>/g){
			print W1 "$line";
			print W2 "$line";
			$flag1 = 1;
			
		}
	
			
		if($line=~m/^Query /g){
			if($flag1==1){ 
					$qno = substr($line,7,4);
					$qno=~s/\s+//g;
					if ($qno != 1){
						$line=~s/^Query //g;$line=~s/\d+//g;$line=~s/\s+//g;
						for(my $i=$qno-2;$i>=0;$i--){
							$line = "N".$line;			
						}
						
					}
					
					$line=~s/^Query //g;$line=~s/\d+//g;$line=~s/\s+//g;
					print W1 "$line\n";	
			}
			else{
				$line=~s/^Query //g;$line=~s/\d+//g;$line=~s/\s+//g;
				print W1 "$line\n";
			}
		}
		if($line=~m/^Sbjct /g){
			$line=~s/^Sbjct //g;$line=~s/\d+//g;$line=~s/\s+//g;
			if($flag1==1){ 
				if ($qno != 1){
					for(my $i=$qno-2;$i>=0;$i--){
						$line = " ".$line;			
					}
				}				
				print W2 "$line\n";
			}
			else{   print W2 "$line\n"; }
			$flag1=0;
		}
}
print "\n\n  QUERY FILE '$file2' AND\n\n  ALIGN FILE '$file3'\n\n  ARE GENERATED SUCCESSFULLY...............\n\n";
system("pause");				
