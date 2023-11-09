# single_multi_units

This code depends on the output of single unit sorting done by Wave_Clus developed by others and requires MATLAB.
The source publication and code for Wave_Clus can be found in the links below:
https://pubmed.ncbi.nlm.nih.gov/15228749/
https://github.com/csn-le/wave_clus

After installing Wave_Clus, running Get_spikes.m derives putative action potential spike shapes. Subsequently running Do_Clustering.m sorts the spikes into similarly shaped single units. 
One of the outputs of Do_Clustering.m is variable times_filename that itself contains variable Cluster_Class which is used in our code. Cluster_Class has two columns: (1) timestamps of the peaks of all detected putative action potentials in the second column and (2) the assignment of waveforms associated with each of these timestamps to a cluster number (0,1,2,3…) of similar waveform shape single units in the first column. A cluster number of zero indicates that that spike waveform could not be assigned to any single-unit cluster.

Single-unit firing rate was calculated as the number of spikes within a single unit cluster divided by the duration of recording (in seconds).
Multiunit firing rate was calculated as the total number of spikes with all single unit clusters divided by the duration of recording (in seconds).

DOI: 10.5281/zenodo.10092944
