
% Please go through the README file in this Github repository
% Ensure we are within the folder with the saved output of Do_Clustering.m
% (from Wave_Clus)

clear variables % clears all the variables from the workspace 

load('times_filename.mat') % Cluster_Class is one of the variables within saved variable times_filename derived from Do_Clustering.m
 
duration_of_recording=900; %in seconds, change as needed

number_unique_clusters=unique(cluster_class(:,1));

multiunit_firing_rate=[]; % will be in Hz
single_units_firing_rate=zeros(1,length(number_unique_clusters));% in Hz, each value is the firing rate for a single unit within that recording
multiunit_temp=[];
for i=1:length(number_unique_clusters)
    cluster_time_stamps=cluster_class(cluster_class(:,1)==i,2);% in milliseconds
    single_units_firing_rate(i)=length(cluster_time_stamps)/duration_of_recording;
    multiunit_temp=[multiunit_temp; cluster_time_stamps];
end
multiunit_firing_rate=length(multiunit_temp)/duration_of_recording;


