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

GOES HERE. I don't know what happened to 4 and 5; maybe he counted the emails we sent back and forth between July 1 and July 5.


# Quick Progress Report

### July 12, 2020
### Zeyuan Xiong (Victor)

(Via email)

* I have just finished the manual-fill-in of the Annecy data.

* I haven't found out a way to "copy paste the progress_report_6 with the email" and keep everything in order and tidy, but instead I will summarize all the decisions we discussed and made from report_1 to report_6 in a monthly report next week. I believe this document will help to record our decisions and also help the following students working on this project. I will start this document after I finish the entry of Geneva and by then I will also be able to answer your questions related to the free list items in your comments of report_6.