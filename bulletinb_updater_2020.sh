#I wrote this script at 1:38 AM, 3rd of December 2020 during Covid-19 time. This code come with no garuntee but it is working with the singularity of this https://github.com/vivekvenkris/pulsar_docker/.  

#download all files 
wget -r --cut-dirs=4 -np --reject="index.html*" --reject="*.pdf" --reject="*.dat"  http://hpiers.obspm.fr/iers/bul/bulb_new/

#Go inside the directory
cd hpiers.obspm.fr

#create a new u1 file 
$TEMPO/util/ut1/do.iers.ut1.new bulletinb.* > nohead_ut1.dat
#This might depends on the version of TEMPO. Consider searchig around $TEMPO or do this inside the docker mentioned above 

#add a header 
#Somehow fortran need this header which I just copy from an old ut1.dat file 
cat header nohead_ut1.dat > u1.dat 


#Move u1.dat to $TEMPO/clock 
