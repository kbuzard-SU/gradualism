# Progress Report 1

### 2020/6/16
### Zeyuan Xiong (Victor)


1. Monday June 15th
   - I spent the day figuring our the markdown system, including both rmarkdown package and the markdown on Github. So far these two share the similar functions but seems rmarkdown is more convenient to use and the markdown syntax on the comment part in the Github is kind of confusing, many functions like greek letters and print coding result are easy to achieve within R but not on Github. I will try to find out why, but before that I may use the rmarkdown to write my report and transform it on the Github.
 
   - Another thing is that I am still a little confused about is how to send the progress report to your "issue/branch" and keep it updated while avoding messing up with the order of files in the folder. If this file is successfully uploaded then I guess it is a good start.
 
2. Tuesday June 16th
   - I am mainly going through the files that Ross uploaded to check what exactly I need to do next and how should I do it. I guess this may take several days to digest, since there are many files in the folder and the way that Ross described to digitalized the data may seem a little complicated. But thanks Ross again, he has done really amazing job and is so generous to include some explanation of the key steps. Salute!
 
   - The markdown syntax should not be hard to master given that I learned R and Latex. The repository and pull request system should be OK if  Professor you can read this file. Further functions like @ and #num on desktop will be exploitd in the following days through working and communicating.
 
   - But I am confused that this file can be transformed in HTMl in my Rstudio but not here. Maybe it is because it is the file rather than comment. I will try other methods later.


### Current work undone / questions
* According to Ross's file "main_data" <https://github.com/kbuzard/gradualism/blob/master/torquay/Main%20Data.Rmd>. The "Torquay" data has been already digitalized in the excel file "Torquay All Schedules". And I assume that the undone part should be the "Geneva" and "Annecy" data. Please let me know if I get it right.

  - Kristy's reply: I agree with your interpretation, although I think we should look at Schedule 16 from Torquay and see if it should be added.

# Progress Report 2

### 2020/6/19
### Zeyuan Xiong (Victor)

## Overview:

For the past three days I was studing Ross' s file. I think the whole assignment could be summerizing into  four steps:

1. Organizing the original PDF files (Annecy, Geneva, Torquay documents);

2. Extracting the texts in PDF files and digitalizing them in Rstudio (converting pictures into characters);
  
   + Kristy's note: We didn't digitize Annecy and Geneva. It seemed less efficient to do all that than to just enter the much smaller number of tariff lines manually.

3. Cleaning the data in R and reorganizing them so that it can be converted into EXCEL file (make it readable and nice looking);

4. Manually cleaning the data and summarizing some basic features in the EXCEL.

Thanks for Ross's codes and description and some other online resources, I am now able to deal with the first two steps, namely **PDF->R**，but the coding part in step 3 is more complicated and requires further digestion and experiment.


## Moving forward:

Hopefully I will have understood the coding in the third step by the end of next week (June 28th). To do this, given that there are available organized pdf files on Github, I will try to use them to replicate the result that Ross has already accomplished. If I succeed, the result should be similar to file "Torquay_ALL_Schedules", then I can move back to step one and start organizing the remaining pdf files (Torquay schedule 16, Annecy, Geneva).

## Some other notes:

1. There are around 30 pages left in Torquay pdf that are not coded yet (pages 185-216 of the color version of the Torquay scans). If they are relevant, then I guess schedule 16 is needed. But we can decide it after I finish the coding part.

   + Ross' s file ends at Torquay schedule_15_34.pdf, which corresponds to page 184 of the original Torquay file, the original file ends at page 216.

2. Although it is not the priority right now, I happened to find out that in the Annecy pdf file, from page 249, the files is written in French. I am not sure whether it is new information or repeated one with just a change of language, so for now I will just leave it there and look into it when doing the step 1 later.

   * Kristy's response: Page 249 in Annecy.pdf is the beginning of the French copy of the earlier English version. If you ever run into French and need to check, just let me know--it's very easy for me to do as I am proficient in French.
   
   
# Progress Report 3

### July 1, 2020
### Zeyuan Xiong (Victor)
   
Victor sent this report via email and I have added it here. He choose to send this email instead of on github because he wanted to attach some sample excel files but failed to achieve that on github.

* I have first (half) digitized the Part I in the remaining pages of Torquay data (185-205). The pdf has been transferred in to tidy and readable EXCEl file (or csv). The next step will be manually making the description more concise and fit them in the categories that Ross created. (Also in this part most of the goods are "Free" so I will treat them as tax=0.) After that I can add it to the existing Torquay files. I think I can finish this part by early next week.

  + Kristy's response: It's hard for me to see if there are any problems with these files, as they are an intermediate stage that Ross did not show me. Make sure you read through his notes for details about decisions we made on sub-paragraphs (there was an issue at one point about us needing to assign some numbers or letters to the various sub-parts of some lines because they were just all listed together but we would need them to have separate names. It doesn't look like this has been done in any consistent way in "Torquay All Schedules.xlxs" so maybe that is something that still needs to be done.
   
      - Victor's response: Given that all of the goods in this part are "tax-free", I fill in all the products under "Torquay extra" as free, and fill in zero for the specific tax options.
      
         - Kristy's further query: Are the majority of the lines in the Torquay round--if they only have one component--ad valorem or specific? We will have to make some hard decisions about how to deal with the lines with more than one component, and we can make some of the work easier by entering these free lines under whichever of ad valorem or specific is the more frequent. 
      
      - Victor's response: Also another thing need to be noticed is that in schedule16 the products cover a lot of categories (chemical, textile, food and so on). I think they are included in this schedule rather than the previous schedules is that they are all "Free".

         - Kristy's further query: Will you look in the Smoot Hawley document to make sure that these are the numbers from the original classification system? I don't see why they wouldn't be, but it would be good for us to know that for sure. 

   + I also don't understand why there are so many blank lines in the excel documents. Probably they are just spaces in the pdfs, but this should be checked to make sure nothing was missed.

      - Victor's response: The reason for the "many blanks" is that in order to keep the content tidy, I try to mimic the format in the original pdf file (that each goods is a separate row, although sharing the same tax volume). I have rearrange them in the files.
      
      - Victor's further response: Just to clarify, I think Ross used tsv file instead of csv file, so my file is also stored as tsv file. I used "readr" package and "read_tsv" function


* I haven't finished Part II (206-216) because the title says it is the Preferential Tariff specifically to Cuba so I am not sure whether we should include them in our general agreements. Please let me know if you think they should be included and I will code them right away.
  
  + Kristy's response: Leave the tariffs that are especially for Cuba out. Those aren't important for our purposes--that is a special political situation and we are looking at the more general situation.
  
A query from Kristy: Can you save your work as a .csv and then send it to me AS A .CSV so that when I open it in Excel it will look the way you mean it to? We don't want to save anything in Excel--just use excel to more easily edit the files.

* Victor's response: Yes, I have csv copy in my own drive, it is just excel is easier to read and to show to others. However in order to make the csv file that I attached the same as the excel file, you may need to manually set the font and cell format in excel. And sometimes it is easier to make changes on excel and we can always save the file as tsv (csv) files.

Further from Victor on July 4: See the second sheet in the attached excel file "part I table" for excel version and p2 of tsv version. They should look basically the same as Ross's file in general.

Also from Victor on July 4: I will integrate schedule 16 and IRC part with Ross's schdule 1-15 soon

* Response from Kristy (July 5): Before you integrate the IRC lines, I think we should create a dummy variable that says that these are using a different coding system. Or we could create one variable that takes on different values depending on what coding system is used for each year (it is going to change as we move forward in time). Or maybe you have some suggestion that would be better. I will look through the Irwin book when I get home and see if there is anything in there about the coding changes over time. I suspect they used the IRC numbers for products that had not been covered in the Smoot Hawley bill and therefore had no code there. But, again, this would be good to know to make sure that we're not making any false assumptions.

# Progress Report 6

#### Zeyuan Xiong (Victor)
#### 2020/7/8

### Questions

Before the report, I have an important question, I am not sure whether I headed the wrong way. So when we talk about "Geneva" data, we are talking about "Geneva round 1947" right? Not "Geneva round 1956". So in the pdf file "Geneva 1", on page 2 in adobe reader, it says it was registered in "May 1950", which is the same year as in file "Annecy" page 2 "May 1950", and in the following pages both write as 1950. But the real time line should be "Geneva 1947" and "Annecy 1949". This is confusing, but I do find out that at least in the schedule 16 "Free list", the contents are different.

+ Kristy's response: Yes, you should be focusing for now on Geneva I (1947). You can check with Ross's work to make sure--he entered the Geneva I and Annecy tariffs for some of the tariff lines before continuing to fill in the rest of Torquay. We thought it was important to understand the broader structure the file would need to take on before filling in all the details.

If the Geneva in our previous conversation refers to file "Geneva 56", then the agreements is slightly different from the Torquay data, starting from page 218(220), there are three columns of taxes and I don't know which one I should take for our assignment. Could you help to clarify this to me. Meanwhile I will first start with the Annecy data.

+ Kristy's response: This is why we started out focusing on Geneva I, Annecy and Torquay--they are the simplest. At some point the tariff codes change away from the Smoot-Hawley line numbers, and that will make things more complicated. There is also more to learn about the multiple schedules.


### Overview

1. Based on the "Torquay All Schedule",  I think the number of ad valorem taxes and specific taxes are generally fifty fifty. Some products only have ad valorem, some only have specific. I don't see an obvious pattern, it should depend on the products.

   + Kristy's response: Okay, then add in the free items as ad valorem. We will probably try to convert to ad valorem whenever we need to make comparisons.

2. Yes, I just check the original 1930 Tariff act file, the 1601-1814 are included in the section called "Free list" (schedule 16). I believe not all the products are included (but most included), for example PAR 1814 "worm gut" is not included in the Torquay round. And some paragraphs use different description, but in general, the two parts match.

3. I think for now I will not integrate the IRC part in the existing schedules, because there are only three pages of them and the products included are not many. There are no IRC products in Annecy, a few covered in Geneva (less than Torquay), which is kind of weird based on the time line.

   + I think this is okay for now, but it should be prominently noted. We are not going to get a good time series on these from the first four rounds if they aren't in the first two rounds. They make some weird references to Smoot Hawley, so I think this will need to be explored at some point.

4. For the containers, I also learned about the trade history in Australia, it says that the trade of beef, other food and also certain chemicals increases in significantly larger volumns after the development of technology. I will pay more attention to those products when taking comparisons with other agreements. Maybe there are more changes of products in later rounds like Kenedy round and Tokyo round.

5. I just compared the schedule_16 (Free list) in Annecy and Torquay, I notice that around half of the products which are in the Torquay free list are not in the Annecy. Geneva (file Geneva1) round covers similar amounts of Free list products as Torquay, but there are several covered in Torquay but not Geneva and vice versa. So several products on the Free list had been removed from Geneva to Torquay, I will manually fill them in. 

   + Kristy's response: Yes, manually filling these in is the right thing to do.

      - Will you also check to make sure that tariff lines are not being moved from Schedules 1-15 into the Free List when they become free? If this is something that happens, we will have to think about what to do about it--we only want each good listed in one place (I think).

6. Given the situation in point 5, if I encounter paragraphs in other schedules that are covered in one of the agreements but not in others, I will manually put in the products. But so far I don't think we need to create a dummy variable on this because it will be straight forward if the columns in other rounds are empty. 

   + Kristy's response: I agree. We scanned in Torquay because it seemed to be the most comprehensive list that used the Smoot Hawley line numbers, but it wouldn't surprise me if there are a few things in the earlier rounds that are not included in Torquay.

      - What is most important is to be careful of the lines that change between rounds. I believe Ross had left a bunch of lines that were highlighted--these were ones that he was still trying to figure out exactly what the correct relationship was between rounds so that we could record those tariff line changes in the way that made the most sense for creating time series.

7. I have just started the filling in of Annecy data.

# Quick Progress Report

### July 12, 2020
### Zeyuan Xiong (Victor)

(Via email)

* I have just finished the manual-fill-in of the Annecy data.

* I haven't found out a way to "copy paste the progress_report_6 with the email" and keep everything in order and tidy, but instead I will summarize all the decisions we discussed and made from report_1 to report_6 in a monthly report next week. I believe this document will help to record our decisions and also help the following students working on this project. I will start this document after I finish the entry of Geneva and by then I will also be able to answer your questions related to the free list items in your comments of report_6.


# Quick Progress Report

### July 19, 2020
### Zeyuan Xiong (Victor)

(Via email)

+ The fill-in work of Geneva data took much more time than I expected.

+ In general I have just finished the fill-in work of both Geneva and Annecy (except for the free list part which as we discussed need to be further checked). Still some paragraphs need to be double checked because they use different description as in Torquay and also a general go-through will be good given that the words are intensive and that mistyping could happen.

+ I will write a more formal report about the problems and my solutions to them next week while conducting the double check. So there will be two separate reports next week: this one and also the summary of previous reports.

