#!/usr/bin/perl
use warnings;
use strict;
use diagnostics;
use POSIX;
print " ::::::   =============================================================  :::::\n";
print " ::::::   PROGRAM TO GENERATE COMPARISON MATRIX OF TWO chPSSM MATRICES   :::::\n";
print " ::::::   =============================================================  :::::\n\n";
print " ::::::           Shuvam Banerjee             Arnav Garai                :::::\n\n";
print " ::::::               Dr. Gautam Garai's lab                             :::::\n\n";
print " ::::::             Computational Sciences Division,SINP                 :::::\n\n";
print " :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::\n";
print"\n ENTER THE FIRST PSSM INPUT '.pssm' FILENAME(with extension)  : ";
chomp(my $file=<STDIN>);
print"\n ENTER THE SECOND PSSM INPUT '.pssm' FILENAME(with extension) : ";
chomp(my $file1=<STDIN>);
print"\n ENTER THE COMPARISON MATRIX OUTPUT FILENAME(.compare)        : ";
chomp(my $out2=<STDIN>);
if($file=~m/.(.pssm)$/i && $file1=~m/.(.pssm)$/i ) {
	print"\n\n";

	#-------------------------------------------OPENING OF INPUT AND OUTPUT FILE---------------------------------------------------------------------
	open(Q,"+>$out2");
	open(R,"$file")||die "\n\t*** FILE IS NOT FOUND.TRY AGAIN *****\n";
	open(S, "$file1") || die "\n\t*** FILE IS NOT FOUND.TRY AGAIN ****\n";
	print "\n\n READING FROM FILES $file AND $file1 ..............\n";
	my (@arr,@arr1,$line,$line1,$count);
	$count = 0;
	#---------------------------------------READING FROM FIRST INPUT FILE ---------------------------------------------------------------
	while(my $line=<R>){
		chomp($line);
		push @{$arr[$count]},split("\t",$line);
		$count++;
	}
	$count=$count-$count;
	#---------------------------------------READING FROM SECOND INPUT FILE  -------------------------------------------------------------		
	while(my $line1=<S>){
		chomp($line1);
		push @{$arr1[$count]},split("\t",$line1);
		$count++;
	}
	#---------------------------------------PERFORMING COMPARISON OPERATION AND PRINTING OF RESULT ----------------------------------------
	print Q "\tA\tG\tI\tL\tV\tM\tF\tW\tP\tC\tS\tT\tY\tN\tQ\tH\tK\tR\tD\tE\n";
	for(my $i=1;$i<=$count;$i++){		
		for(my $j=0;${$arr[$i]}[$j];$j++){
					${$arr[$i]}[$j]=~s/\s+//;${$arr1[$i]}[$j]=~s/\s+//;
					if (${$arr[$i]}[$j] eq ${$arr1[$i]}[$j]){if($j==0){print Q "${$arr[$i]}[$j]";}else {printf Q ("%8d","0");}}	
					else { ${$arr[$i]}[$j]=${$arr[$i]}[$j]-${$arr1[$i]}[$j];printf Q ("%8d","${$arr[$i]}[$j]");}
		}
		print Q "\n";
	}
			;
close(S);
close(R);
close(Q);
print "\n\n COMPARISON MATIRX FILE '$out2' GENERATED SUCCESSFULLY...............\n\n"; }
else
  {
   print"\n\n ~ INCORRECT FILE FORMAT ~\n";
  }
my $tme = time -$^T;
my $min = sprintf("%.1f",$tme / 60);
$min =~ s/.$//;
$min =~ s/\.//;
my $sec = $tme - ($min*60);
print "\n\n Took $min minutes $sec seconds to run...\n\n";
