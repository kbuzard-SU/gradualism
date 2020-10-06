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

3. Cleaning the data in R and reorganizing them so that it can be converted into EXCEL file (make it readable and nice looking);

4. Manually cleaning the data and summarizing some basic features in the EXCEL.

Thanks for Ross's codes and description and some other online resources, I am now able to deal with the first two steps, namely **PDF->R**，but the coding part in step 3 is more complicated and requires further digestion and experiment.


## Moving forward:

Hopefully I will have understood the coding in the third step by the end of next week (June 28th). To do this, given that there are available organized pdf files on Github, I will try to use them to replicate the result that Ross has already accomplished. If I succeed, the result should be similar to file "Torquay_ALL_Schedules", then I can move back to step one and start organizing the remaining pdf files (Torquay schedule 16, Annecy, Geneva).

## Some other notes:

1. There are around 30 pages left in Torquay pdf that are not coded yet. If they are relevant, then I guess schedule 16 is needed. But we can decide it after I finish the coding part.

2. Although it is not the priority right now, I happened to find out that in the Annecy pdf file, from page 413, the files is written in French. I am not sure whether it is new information or repeated one with just a change of language, so for now I will just leave it there and look into it when doing the step 1 later.
