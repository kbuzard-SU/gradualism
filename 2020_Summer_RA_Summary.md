# Summary

## Software involved: 
Adobe Pro (version 20.012.20043);

Rstudio (version 1.3.1073); 

Excel (VBA) (16.0.13029 .20344).

notes: most of the process can be achieved on the basic version of the software. However one specific tool that involved is that you need upgrade the adobe to pro version to use to crop tool to crop the original pdf files.

## Explanation of existing files.

* <font size=4>The digitization (so far) only covers the regular schedules (from schedule 1 to schedule 16). Among them schedule 1 to schedule 15 of Geneva (1947), Annecy and Torquay data have been coded in EXCEL file ***"Schedules_1-15_units_changed"***. For completeness, I maintain all the possible types of units that appear in the original pdf file. But as one can tell, some of the units are refering very close meanings, and if further simplification is needed, one can use EXCEL VBA or R to replace the certain units that you want. </font>

* <font size=4>For schedule 16, the free list has not been included in the above file. The main reason is that the tax rate are all zero and the relation between different rounds files is not clear now. Therefore all the the free list paragraphs are stored in another seperate file: ***"paragraphs"***, also an example list of Torquay free list is stored in file ***"Torquay_free_list"***. For now we put the duty rate of free list items in the specific tax rate column (namely, take the tax type as specific and tax rate as zero).</font>

* <font size=4>There are several paragraphs that are not very matched with the Geneva(Annecy) description, those files are listed in file ***"paragraphs"*** and painted with color in the ***"Schedules_1-15_units_changeds"***. Some of paragraphs are involved with a change of the unit across(within) rounds and they are all listed (they have been changed already, but if you want to trace them, they are listed in the file).</font>

* <font size=4>I created a seperated folder called ***"UNTC_814"*** in the G:/drive, the 814 is the registration number of all the GATT files. The folder includes all the rounds files from the source of UN treaty collections. And follow the volume number, more related information can be found on the website. And other information related to the change of policy could be found in other volumes under the GATT project in UNTC.The link for the website is <https://treaties.un.org/pages/AdvanceSearch.aspx?tab=UNTS&clang=_en>, select search for "treaty" and search on registration number 814.</font>

## The relationship between Annecy and Geneva (1947)

* One can tell from the pattern presented in the EXCEL file that there must be some complimentary relationship between the two rounds. The Annecy round serves more like a complimentary agreements on the Geneva 1947 round. Although further evidence has not been found to support the hypothesis, it seems more logical to treat the two rounds together as one deal when comparing with the Torquay round data.

* One thing about the data source is that most of the treay files can be found in the UNTC website but there is a question mark on the first two rounds (Geneva47 and Annecy). Those two files are both registered on year 1950 which conflicts with the original year that those two files are signed. Therefore whether the Annecy round serves as a complmentary agreements or independent agreement remains to be investigated. 

* We are still in the middle of the investigation of this issue and we are cooperating with a librarian Winn W Wasson. And for convenience if you found something new or need help on the resource, you could contact me: <zxiong07@syr.edu>.
 

## Column "Extra"

* The column "**Extra**" captures the difference of between Torquay rounds and Annecy, Geneva. Most of the contents of the Extra are the followings:
1. change of subparagraphs;
2. special clarification;
3. different description;
4. bounds of tax rate.

## Change of subparagraphs

* Typical changes in the subparagraphs involve differentiation by percentage, value or size. For example for paragraph 370, in Geneva47 file, there is not specification of the value of the engine, but in Torquay file, there are two (three) subparagraphs setting different tax rate on engines of different value. Similar cases for other standards like size and percentage.  

* The subparagraphs situations are documented under the column **"Extra"** too, and the mainly unsolved problem is that sometimes the paragraphs converge in the next round and sometime it diverge in the next round (Geneva -> Annecy -> Torquay). One potential solution is to extend the lines that diverge and put the uniform tax rate for all the branches.

* One example could be paragraph 1301, in which I used extrapolation in this part to fulfill the blank of classified sub-paragraphs by using the tax rate of unclassified sub-paragraphs (see the repeated tax rate). To be more specific, for example Geneva data has no differentiation of the value (not mentioned in Geneva file), then I apply the same tax rate for "singles" for both under and above 80 cents. This paragraph 1301 example gives a view of what the columns will be like if we use extrapolation. However currently for other paragraphs, I leave them unchanged as the original documents and just put notes in the **"Extra"** column.

* Another potential solution will include putting in dummy variables

## Special clarification

* Some products have special properties that needs to be specifically specified, and usually these properties remain the same across different rounds. For example 304, in the original file, it specifies some additional condition or detailed rules to followed when deal with the tax rate, so we documented them in the "EXTRA".

## Different description

* In general, most paragraphs match well between the rounds. Those paragraphs that not matched are either painted with color or listed in the file ***"paragraph"*** . These paragraphs are involved of different description. Those paragraphs need to be double checked after we are clear about the relation between Geneva and Annecy rounds. Usually it contains the following cases:

(i). missing products in different rounds, especially the subparagraphs;
(ii). different way of description for the same product;
(iii). different way of the organization of the subparagraphs (this happens to those very long can complicated items).

In general, those paragraphs have been manually filled in and checked, but I am not sure whether they are perfectly accurate. So as always,a third eye could be very helpful. 

## Bounds of tax rate

* The pattern of bounds of tax rate only appear in Geneva data and Annecy data but **NOT** in Torquay. The form of the bounds depends on the product: upper bound, lower bound, both, specific and ad valorem. It may relate to the change of policy (the ground rules of agreements) between the rounds, but further evidence is still needed. In practice, I put the clarification in the "**Extra**" column.

* Potential solutions include putting in dummy variables that indicate the bounds or take a simple average of the bound values. 

* One efficient way to do the check is to search by words in specific columns in the EXCEL file by "ctrl+F", and pay attention to how the subparagraphs are organized, especially when threre is a change in the classification of the subparagraphs. 



## Free list products
 
* The free list products are all from the Smoot-Hawley paragraph system, however There are products that are moved out(in) the list across rounds and the real relationship between the rounds is still under investigation. If we take the Annecy and Geneva rounds (1947) together and compare them with the Torquay round, we can see that most of the products in the free list are overlapped (actually also the same pattern in other schedules).

* However it is an interesting question to ask where are those products that were moved out of the free list, are they still free? The question will be clear after we knoe more about the relation between the first few rounds.

## Cuba agreements and IRC products (Internal Revenue Code)

* The Cuba preferential agreements can be found at the end of the regular schedules; and the IRC products are listed after the free list products. For IRC We are not sure on why a different coding system is involved here, but we have confirmed that these products are not mentioned in the previous regular schedule so it may be just a way to include products that are not in H-S 1930 act in this round of agreements. 

* The existing files have **NOT** covered the part of Cuba preferential trade agreements and also the IRC code products.

* But it should be prominently noted, that we are not going to get a good time series on these from the first four rounds if they aren't in the first two rounds. They make some weird references to Smoot Hawley, so I think this will need to be explored at some point

* Notice that in the later rounds, the IRC coded product still exist, but in few amounts.
 
## File type

* After run the R code contributed by Ross Jestrab (see codes details in Ross's report "Coding-Torquay"), we first manually reorganize the txt result (R code output). The default setting of the file should be the TSV file, namely to set TAB as default seperated values during the manual reorganization process. The TSV file is more convenient to process under EXCEL and Rstudio environment for further operation.

## Random notes on future work

* Geneva 1956: there are three columns of tax rate in the Geneva 1956 file, ***Geneva_56_UNTC***, there is a one year period between each of them to be effective. More specific details can be found on page 142 of the original file. One potential solution is to create three seperate columns, or to simplify, take the average or middle value of the three. 


* About late rounds: in a recent Trade Talks episode about the rise of containerization, they talked about how there were many goods that just weren't traded before containers because it was too expensive. This won't take effect until at least the mid to late 1960s so shouldn't affect the work we're doing now, but it's an interesting "detail" to be aware of.

* For Smoot-Hawley: **to be filled in.**




 


