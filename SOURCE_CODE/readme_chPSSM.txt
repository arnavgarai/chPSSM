INSTRUCTIONS:
This file contains the stepwise instruction for successful
generation of chPSSM matrix.

Steps for generation of chPSSM using aligned sequences:

	1.  Select the query in Fasta format.(eg: Human Albumin[AGI02589.1]
        protein sequence from NCBI protein database)

	2.  Run Blastp between the query sequence and a database of your choice.
	    We encourage to use non-redundant protein sequence database (nrDatabase).

	3.  In the Blastp result page, select the no of hits (hits referred
	    to as the number of ungapped aligned sequences). Then Click on
		"FASTA (aligned sequences)"  button under "download" option on
		the top left corner of "Description" window. An aligned Hit file
		(seqdump.txt) will be generated containing the selected hits.
		This file is the required "INPUT FILE" for chPSSM matrix generation.

	4.  Open "seqdump.txt" file and paste the FASTA Query Sequence at the
    	top of the file (since FIRST fasta sequence present in that file
		will be considered as the QUERY by chPSSM program).

	5.  Retain only the un-gapped aligned hits since chPSSM is generated
     	correctly only if un-gapped aligned hits are provided in the input
		file. The gapped sequences has to be deleted manually.
		NOTE: ALTERNATIVELY, the "INPUT FILE" required for chPSSM matrix
		generation can also be developed manually.Just user have to keep
		in mind following things:
			a. The first fasta sequence has to be QUERY sequence.
			b. Un-gapped aligned sequences must be taken. The more conserved
			   the hits are, the better the PSSM scores will be.
	
	6. Run chPSSM program. 


xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
For any suggestions and queries contact here : shuvam.banerjee89@gmail.com

The users are requested to give proper citation if this tool is found to be
useful for their research purposes.