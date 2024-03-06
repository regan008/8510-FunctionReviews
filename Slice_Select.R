#Let's talk about slice(), shall we?
My name is Alex Billinis, your colleague, in the midst of trying to 
explain to yall about the slice function. Please be indulgent.

First of all, let us make sure that we have the necessary information.
library(tidyverse)
Slice will allow you to index rows by their integer locations.
I get that makes zero sense, so let us walk through examples
So I imported a csv file, cotton.csv. This is in itself an interesting process.events()
cotton <- read_csv("cotton1.csv")
#I have imported the above file to use to show us the slice() function.
so, now lets try some examples.
cotton %>% slice(1:2)
#This gives us the first two rows. 
#FirmName     Bales Port   Year
<chr>        <dbl> <chr> <dbl>
 # 1 Ralli & Co.    300 NO     1860
#2 Fachiri & Co   250 NO     1859
cotton %>% group_by(FirmName) %>% slice_max(Bales)
#This shows you the highest Bales by Firm, using the slice_max()
If you want random sample, 
cotton %>% slice_head(n=2)
Here is another example, for the minimum amount
cotton %>% group_by(FirmName) %>% slice_min(Bales)
#Why Slice? Well, it is a great way to work with large datasets 
#and to select certain types of information. We can quickly extract
#key financial and other information. Imagine if this set
#were super large, slice is your friend in such a case.
By the way, slice is similar, yet different, from other commands
such as "select," let us try it shall we?
select(cotton, Bales)
#this shows us just Bales
select(cotton, FirmName, Port)
this shows us what Firms operated in which port, also relevant.
#Bottom line, slice and select are great ways in which a
#digital historian can quickly and efficiently navigate a
#dataset. When the datasets are thousands of rows and columns, 
#using slice and select can quickly get you to the bottom line
#you need to be successful. Between select and slice, I have to 
#say that I found select to be somewhat easier in that there were
#fewer steps, slice is more precise and in my albeit limited
#experience, requires using the Pipe.
#thanks for listening.