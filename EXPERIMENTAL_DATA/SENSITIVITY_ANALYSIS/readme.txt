This document is comprehensive, and subdivided according to the path in 
which files are found. 
Files are provided in several directories and subdirectories. 

I.     ACTIN   directory
II.    ALBUMIN directory
III.   INSULIN directory

===========================================================================
I.     Files in the ACTIN directory
===========================================================================
This directory contains the experimental output files for sensitivity
analysis experiment(refer manuscript) with BLAST and PSI BLAST tools.
The following files shown below are  according to the order of the files
required and output files obtained for the experimental analysis.
---------------------------------------------------------------------------
1. actin.txt
---------------------------------------------------------------------------
This file is downloaded from BLASTp result. It is the input file required
by 'AlignedSeqExtract.pl/win32_AlignedSeqExtract.exe/win64_AlignedSeqExtract.exe'
program to generate the '.query' and '.align' files.
---------------------------------------------------------------------------
2. actin.query
---------------------------------------------------------------------------
Output file obtained by running 'AlignedSeqExtract.pl/win32_AlignedSeqExtract.exe/
win64_AlignedSeqExtract.exe' program and providing 'actin.txt' as input.
This file contains the aligned human actin query sequences that are aligned
with the aligned sequences.
---------------------------------------------------------------------------
3. actin.align
---------------------------------------------------------------------------
Output file obtained by running 'AlignedSeqExtract.pl/win32_AlignedSeqExtract.exe/
win64_AlignedSeqExtract.exe' program and providing 'actin.txt' as input.
This file contains the aligned sequences that are aligned with human
actin query sequences.
---------------------------------------------------------------------------
4. actin_100.txt
---------------------------------------------------------------------------
This is the fasta formatted aligned sequence file that is downloaded from
BLASTp. A chPSSM matrix having name 'actin_100.pssm' is formed using
chPSSM.pl program and 'actin_100.txt' as input.
---------------------------------------------------------------------------
5. actin_100.pssm
---------------------------------------------------------------------------
chPSSM matrix file that is obtained by running chPSSM program and is
required by 'ScoreCalc.pl/win32_ScoreCalc.pl/win64_ScoreCalc.pl' program
along with 'actin.query' and 'actin.align' files. This file is also used
in the SATBILITY_ANALYSIS experiment.
---------------------------------------------------------------------------
6. actin_score.out
---------------------------------------------------------------------------
This file contains the raw aligned scores between the query and aligned
sequences.It contains the following details:
aligned sequence id, score,identity,match,mismatch and gaps.
This program is output of 'ScoreCalc.pl/win32_ScoreCalc.pl/win64_ScoreCalc.pl'
program.
===========================================================================
II.     Files in the ALBUMIN directory
===========================================================================
This directory contains the experimental output files for sensitivity
analysis experiment(refer manuscript) with BLAST and PSI BLAST tools.
The following files shown below are  according to the order of the files
required and output files obtained for the experimental analysis.
---------------------------------------------------------------------------
1. albumin.txt
---------------------------------------------------------------------------
This file is downloaded from BLASTp result. It is the input file required
by 'AlignedSeqExtract.pl/win32_AlignedSeqExtract.exe/win64_AlignedSeqExtract.exe'
program to generate the '.query' and '.align' files.
---------------------------------------------------------------------------
2. albumin.query
---------------------------------------------------------------------------
Output file obtained by running 'AlignedSeqExtract.pl/win32_AlignedSeqExtract.exe/
win64_AlignedSeqExtract.exe' program and providing 'albumin.txt' as input.
This file contains the aligned human albumin query sequences that are aligned
with the aligned sequences.
---------------------------------------------------------------------------
3. albumin.align
---------------------------------------------------------------------------
Output file obtained by running 'AlignedSeqExtract.pl/win32_AlignedSeqExtract.exe/
win64_AlignedSeqExtract.exe' program and providing 'albumin.txt' as input.
This file contains the aligned sequences that are aligned with human
albumin query sequences.
---------------------------------------------------------------------------
4. albumin_100.txt
---------------------------------------------------------------------------
This is the fasta formatted aligned sequence file that is downloaded from
BLASTp. A chPSSM matrix having name 'albumin_100.pssm' is formed using
chPSSM.pl program and 'albumin_100.txt' as input.
---------------------------------------------------------------------------
5. albumin_100.pssm
---------------------------------------------------------------------------
chPSSM matrix file that is obtained by running chPSSM program and is
required by 'ScoreCalc.pl/win32_ScoreCalc.pl/win64_ScoreCalc.pl' program
along with 'albumin.query' and 'albumin.align' files. This file is also used
in the SATBILITY_ANALYSIS experiment.
---------------------------------------------------------------------------
6. albumin_score.out
---------------------------------------------------------------------------
This file contains the raw aligned scores between the query and aligned
sequences.It contains the following details:
aligned sequence id, score,identity,match,mismatch and gaps.
This program is output of 'ScoreCalc.pl/win32_ScoreCalc.pl/win64_ScoreCalc.pl'
program.
===========================================================================
III.     Files in the INSULIN directory
===========================================================================
This directory contains the experimental output files for sensitivity
analysis experiment(refer manuscript) with BLAST and PSI BLAST tools.
The following files shown below are  according to the order of the files
required and output files obtained for the experimental analysis.
---------------------------------------------------------------------------
1. insulin.txt
---------------------------------------------------------------------------
This file is downloaded from BLASTp result. It is the input file required
by 'AlignedSeqExtract.pl/win32_AlignedSeqExtract.exe/win64_AlignedSeqExtract.exe'
program to generate the '.query' and '.align' files.
---------------------------------------------------------------------------
2. insulin.query
---------------------------------------------------------------------------
Output file obtained by running 'AlignedSeqExtract.pl/win32_AlignedSeqExtract.exe/
win64_AlignedSeqExtract.exe' program and providing 'insulin.txt' as input.
This file contains the aligned human insulin query sequences that are aligned
with the aligned sequences.
---------------------------------------------------------------------------
3. insulin.align
---------------------------------------------------------------------------
Output file obtained by running 'AlignedSeqExtract.pl/win32_AlignedSeqExtract.exe/
win64_AlignedSeqExtract.exe' program and providing 'insulin.txt' as input.
This file contains the aligned sequences that are aligned with human
insulin query sequences.
---------------------------------------------------------------------------
4. insulin_100.txt
---------------------------------------------------------------------------
This is the fasta formatted aligned sequence file that is downloaded from
BLASTp.chPSSM matrix having name 'insulin_100.pssm' is formed using chPSSM.pl
program and 'insulin_100.txt' as input.
---------------------------------------------------------------------------
5. insulin_100.pssm
---------------------------------------------------------------------------
chPSSM matrix file that is obtained by running chPSSM program and is
required by 'ScoreCalc.pl/win32_ScoreCalc.pl/win64_ScoreCalc.pl' program
along with 'insulin.query' and 'insulin.align' files. This file is also used
in the SATBILITY_ANALYSIS experiment.
---------------------------------------------------------------------------
6. insulin_score.out
---------------------------------------------------------------------------
This file contains the raw aligned scores between the query and aligned
sequences.It contains the following details:
aligned sequence id, score,identity,match,mismatch and gaps.
This program is output of 'ScoreCalc.pl/win32_ScoreCalc.pl/win64_ScoreCalc.pl'
program.