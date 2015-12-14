This document is comprehensive, and subdivided according to the path in 
which files are found. 
Files are provided in several directories and subdirectories.  

I.     SOURCE_CODE directory
II.    WIN_CHPSSM directory
III.   EXPERIMENTAL DATA directory
IV.    ADDITIONAL TOOL directory

===========================================================================
I.     Files in the SOURCE_CODE directory
===========================================================================
This directory contains the source codes of chPSSM algorithm and other
related programs. All the source codes are written in Perl programming
language and require Perl installed in the system.
Following files are present :
---------------------------------------------------------------------------
1. chPSSM.pl
---------------------------------------------------------------------------
This file contains the source code for chPSSM algorithm. It can be run
in Perl environment using the following syntax:
			
			perl chPSSM.pl

Input file required:

     a.  An input file containing FASTA formatted aligned sequences.
	 
Output file generated:

     a. A PSSM matrix file (file extension '.pssm') will be generated.
----------------------------------------------------------------------------
2. readme_pssm.txt
----------------------------------------------------------------------------
This file contains detailed step by step instructions and necessary
precautions that should be followed to download the input file from NCBI
BLAST site.
----------------------------------------------------------------------------
3. ScoreCalc.pl
----------------------------------------------------------------------------
This file contains the source code for calculating pairwise alignment
scores between the query and aligned sequences.
Note:
This is not an alignment tool. It just calculates the scores between
query and the already aligned sequence using chPSSM matrix formed using
the query itself. Therefore, already aligned sequences have to provided
for score calculation process.
Like 'chPSSM.pl', it also requires Perl compiler already installed in
the system.
Syntax for runing this program:

		perl ScoreCalc.pl

Input files required:
		
		a. '.query' file  : A query file (file extension '.query') has to
                    		be provided.
		b. '.align' file  : A file (file extension '.align') containing
                            corresponding aligned sequences has to be
							provided.
		c. '.pssm' file   : The chPSSM matrix file generated for the same
                      		query using above mentioned 'chPSSM.pl' program.

Output file generated:

        a.   '.out' file  : An output file containing the identity percentage,
		                    match,mismatch,gaps and aligned sequence ids is
							generated.
----------------------------------------------------------------------------
4. readme_ScoreCalc.txt
----------------------------------------------------------------------------
This file contains detailed step by step instructions and necessary
precautions that should be followed for successful generation of alignment
score(.out) file.   							
-----------------------------------------------------------------------------
5. AlignedSeqExtract.pl
-----------------------------------------------------------------------------
This tool can be used to prepare the '.query' and '.align' files for NCBI
BLASTp aligned protein sequences. 

Syntax: perl AlignedSeqExtract.pl

Input file required:

	    a.   '.txt' file obtained from BLASTp. 

Output files generated:

        a. '.query' file containing the query sequences in aligned format
		     for each aligned sequence.	
		b. '.align' file containing corresponding aligned sequences.
-----------------------------------------------------------------------------
6. readme_AlignedSeqExtract.txt
-----------------------------------------------------------------------------
This file contains detailed how to download aligned sequences required by
'AlignedSeqExtract.pl' program from the NCBI BLAST website.
===========================================================================
II.     Files in the WIN_CHPSSM directory
===========================================================================
This directory contains two '.zip' files that have required programs and
necessary intructions for successful run of chPSSM algorithm in windows
environment.
Following files are present :
-----------------------------------------------------------------------------
1. win32_chPSSM.zip
-----------------------------------------------------------------------------
This file contains the windows executable files that can be utilized to
run in the windows Operating System environment having 32bit architecture.
This has to be extracted after donloading this file. Popular extraction 
tools like 7zip,winRar,winZip or any other extraction tools can be easily 
downloaded from websites.
Link for downloading '7zip' tool is http://www.7-zip.org/a/7z1512.exe

win32_chPSSM.zip contains following files inside it.

		a. win32_chPSSM.exe
		b. win32_ScoreCalc.exe
		c. win32_AlignedSeqExtract.exe
		
The description are same as described above for the files in SOURCE_CODE
directory. These are infact only the windows version of the above source
programs. Please read the description of SOURCE_CODE directory.
-----------------------------------------------------------------------------
2. win64_chPSSM.zip
-----------------------------------------------------------------------------
This file contains the windows executable files that can be utilized to run
in the windows Operating System environment having 64bit architecture.
This has to be extracted after donloading this file. Popular extraction
tools like 7zip, winRar, winZip or any other extraction tools can be easily
downloaded from windows.
Link for downloading '7zip' tool is http://d.7-zip.org/a/7z1512-x64.exe

win64_chPSSM.zip contains following files inside it.

		a. win64_chPSSM.exe
		b. win64_ScoreCalc.exe
		c. win64_AlignedSeqExtract.exe
		
The description are same as described above for the files in SOURCE_CODE
directory. These are infact only the windows version of the above source
programs. Please read the description of SOURCE_CODE directory.
-----------------------------------------------------------------------------
3. readme_WIN_CHPSSM.txt
-----------------------------------------------------------------------------
This file contains detailed insructions for how to generate chPSSM matrix
and calculate scores successfully and the necessary precautions that needs
to be followed.
===========================================================================
III.     Files in the EXPERIMENTAL_DATA directory
===========================================================================
This directory contains all the biological data that are associated with
the successful experimental validation of chPSSM algorithm.
It is divided into two sub directories based on the experimentation performed.
Refer manuscript for more details.

		a. STABILITY_ANALYSIS directory
		b. SENSITIVITY_ANALYIS directory
		
-----------------------------------------------------------------------------
1. readme_STABILITY_ANALYSIS.txt
-----------------------------------------------------------------------------
This file contains details about the files and sub-directories present inside
STABILITY_ANALYSIS directory.
-----------------------------------------------------------------------------
2. readme_SENSITIVITY_ANALYSIS.txt
-----------------------------------------------------------------------------
This file contains details about the files and sub-directories present inside
SENSITIVITY_ANALYIS directory.
===========================================================================
IV.     Files in the ADDTIONAL_TOOLS directory
===========================================================================
This directory conatains additional program files that are associated with
chPSSM tool.
-----------------------------------------------------------------------------
1. chPSSM_compare.pl
-----------------------------------------------------------------------------
This file contains the source code to perform a comparison between two chPSSM
matrices. 
Syntax                : perl chPSSM_compare.pl
Input files required  : Two chPSSM matrix files('.pssm') among which
                        comparison has to be performed.
Output file generated :	Comparison matrix file (.compare) is generated.				   
-----------------------------------------------------------------------------
2. win32_chPSSM_compare.exe
-----------------------------------------------------------------------------
This executable file can be used to run the above mentioned 'chPSSM_compare.pl'
program in Windows 32bit environment.
Input files required  : Two chPSSM matrix files('.pssm') among which
                        comparison has to be performed.
Output file generated :	Comparison matrix file (.compare) is generated.
-----------------------------------------------------------------------------
3. win64_chPSSM_compare.exe
-----------------------------------------------------------------------------
This executable file can be used to run the above mentioned 'chPSSM_compare.pl'
program in Windows 64bit environment.
Input files required  : Two chPSSM matrix files('.pssm') among which
                        comparison has to be performed.
Output file generated :	Comparison matrix file (.compare) is generated.
-----------------------------------------------------------------------------
4. batch_chPSSM.pl
-----------------------------------------------------------------------------
This file contains the source code to generate multiple chPSSM matrix files
simultaneously.
Syntax : perl batch_chPSSM.pl
Note:
i. For correct execution of this program, user has to change the path of the
   directory where the fasta formatted files are present. This has to be done
   manually inside the code (In line number 15) before runnning the program.
ii.By default, this program checks for all '.txt' files in the provided
   directory and generate chPSSM matrix files. 
   So, if there are other '.txt' files present along with required files,the
   program will generate an error, since those files are not fasta formatted.
   Therefore, user must check that only those '.txt' files must be present
   inside the directory for which chPSSM matrices have to be generated.


xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
For any suggestions and queries contact here : shuvam.banerjee89@gmail.com

The users are requested to give proper citation if this tool is found to be
useful for their research purposes.