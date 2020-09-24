Absolutely the simplest code for an n percent table?                                                         
                                                                                                             
Ok for your tiny datasets (2000 or 2,000,000)                                                                
                                                                                                             
GitHub                                                                                                       
https://tinyurl.com/y5u96dkl                                                                                 
https://github.com/rogerjdeangelis/utl-absolutely-the-simplest-code-for-an-n-percent-table                   
                                                                                                             
https://tinyurl.com/y4g7xa2y                                                                                 
https://communities.sas.com/t5/SAS-Programming/Easiest-way-to-calculate-Percentages/m-p/686120               
                                                                                                             
/*                   _                                                                                       
(_)_ __  _ __  _   _| |_                                                                                     
| | `_ \| `_ \| | | | __|                                                                                    
| | | | | |_) | |_| | |_                                                                                     
|_|_| |_| .__/ \__,_|\__|                                                                                    
        |_|                                                                                                  
*/                                                                                                           
Data have;                                                                                                   
input id$ val;                                                                                               
Cards4;                                                                                                      
A 2                                                                                                          
A 3                                                                                                          
A 5                                                                                                          
B 1                                                                                                          
B 2                                                                                                          
B 7                                                                                                          
;;;;                                                                                                         
run;quit;                                                                                                    
                                                                                                             
WORK.HAVE total obs=6                                                                                        
                                                                                                             
  ID    VAL                                                                                                  
                                                                                                             
  A      2                                                                                                   
  A      3                                                                                                   
  A      5                                                                                                   
  B      1                                                                                                   
  B      2                                                                                                   
  B      7                                                                                                   
                                                                                                             
/*           _               _                                                                               
  ___  _   _| |_ _ __  _   _| |_                                                                             
 / _ \| | | | __| `_ \| | | | __|                                                                            
| (_) | |_| | |_| |_) | |_| | |_                                                                             
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                            
                |_|                                                                                          
*/                                                                                                           
                                                                                                             
 WORK.WANT total obs=6                                                                                       
                                                                                                             
   ID    VAL    PERCENT                                                                                      
                                                                                                             
   A      2        20    2/10                                                                                
   A      3        30                                                                                        
   A      5        50                                                                                        
                                                                                                             
   B      1        10    1/10                                                                                
   B      2        20                                                                                        
   B      7        70                                                                                        
                                                                                                             
                                                                                                             
/*         _       _   _                                                                                     
 ___  ___ | |_   _| |_(_) ___  _ __                                                                          
/ __|/ _ \| | | | | __| |/ _ \| `_ \                                                                         
\__ \ (_) | | |_| | |_| | (_) | | | |                                                                        
|___/\___/|_|\__,_|\__|_|\___/|_| |_|                                                                        
                                                                                                             
*/                                                                                                           
                                                                                                             
proc freq data=have;                                                                                         
by id;                                                                                                       
tables id*val / out=want(drop=count) list;                                                                   
weight val;                                                                                                  
run;quit;                                                                                                    
                                                                                                             
* probably doable with other procs;                                                                          
proc summary                                                                                                 
proc corresp                                                                                                 
proc report                                                                                                  
proc tabulate                                                                                                
                                                                                                             
