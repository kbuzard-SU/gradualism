### Progress Reports for the work of Zeyuan Xiong (Victor) for Summer 2020

# Progress Report 1

#### June 16, 2020

1. Monday June 15th
   - I spent the day figuring our the markdown system, including both rmarkdown package and the markdown on Github. So far these two share the similar functions but seems rmarkdown is more convenient to use and the markdown syntax on the comment part in the Github is kind of confusing, many functions like greek letters and print coding result are easy to achieve within R but not on Github. I will try to find out why, but before that I may use the rmarkdown to write my report and transform it on the Github.
 
   - Another thing is that I am still a little confused about is how to send the progress report to your "issue/branch" and keep it updated while avoiding messing up with the order of files in the folder. If this file is successfully uploaded then I guess it is a good start.
 
2. Tuesday June 16th
   - I am mainly going through the files that Ross uploaded to check what exactly I need to do next and how should I do it. I guess this may take several days to digest, since there are many files in the folder and the way that Ross described to digitalized the data may seem a little complicated. But thanks Ross again, he has done really amazing job and is so generous to include some explanation of the key steps. Salute!
 
   - The markdown syntax should not be hard to master given that I learned R and Latex. The repository and pull request system should be OK if  Professor you can read this file. Further functions like @ and #num on desktop will be exploited in the following days through working and communicating.
 
   - But I am confused that this file can be transformed in HTML in my Rstudio but not here. Maybe it is because it is the file rather than comment. I will try other methods later.


### Current work undone / questions
* According to Ross's file "main_data" <https://github.com/kbuzard/gradualism/blob/master/torquay/Main%20Data.Rmd>: the "Torquay" data has been already digitalized in the excel file "Torquay All Schedules". And I assume that the undone part should be the "Geneva" and "Annecy" data. Please let me know if I get it right.

  - Kristy's reply: I agree with your interpretation, although I think we should look at Schedule 16 from Torquay and see if it should be added.

# Progress Report 2

#### 2020/6/19

## Overview:

For the past three days I was studying Ross' s file. I think the whole assignment could be summarizing into  four steps:

1. Organizing the original PDF files (Annecy, Geneva, Torquay documents);

2. Extracting the texts in PDF files and digitalizing them in Rstudio (converting pictures into characters);
  
   + Kristy's note: We didn't digitize Annecy and Geneva. It seemed less efficient to do all that than to just enter the much smaller number of tariff lines manually.

3. Cleaning the data in R and reorganizing them so that it can be converted into EXCEL file (make it readable and nice looking);

4. Manually cleaning the data and summarizing some basic features in the EXCEL.

Thanks for Ross's codes and description and some other online resources, I am now able to deal with the first two steps, namely **PDF->R** but the coding part in step 3 is more complicated and requires further digestion and experiment.


## Moving forward:

Hopefully I will have understood the coding in the third step by the end of next week (June 28th). To do this, given that there are available organized pdf files on Github, I will try to use them to replicate the result that Ross has already accomplished. If I succeed, the result should be similar to file "Torquay_ALL_Schedules", then I can move back to step one and start organizing the remaining pdf files (Torquay schedule 16, Annecy, Geneva).

## Some other notes:

1. There are around 30 pages left in Torquay pdf that are not coded yet (pages 185-216 of the color version of the Torquay scans). If they are relevant, then I guess schedule 16 is needed. But we can decide it after I finish the coding part.

   + Ross' s file ends at Torquay schedule_15_34.pdf, which corresponds to page 184 of the original Torquay file, the original file ends at page 216.

2. Although it is not the priority right now, I happened to find out that in the Annecy pdf file, from page 249, the files is written in French. I am not sure whether it is new information or repeated one with just a change of language, so for now I will just leave it there and look into it when doing the step 1 later.

   * Kristy's response: Page 249 in Annecy.pdf is the beginning of the French copy of the earlier English version. If you ever run into French and need to check, just let me know--it's very easy for me to do as I am proficient in French.
   
   
# Progress Report 3

#### July 1, 2020

Victor sent this report via email and I have added it here. He choose to send this email instead of on github because he wanted to attach some sample excel files but failed to achieve that on github.

* I have first (half) digitized the Part I in the remaining pages of Torquay data (185-205). The pdf has been transferred in to tidy and readable EXCEl file (or csv). The next step will be manually making the description more concise and fit them in the categories that Ross created. (Also in this part most of the goods are "Free" so I will treat them as tax=0.) After that I can add it to the existing Torquay files. I think I can finish this part by early next week.

  + Kristy's response: It's hard for me to see if there are any problems with these files, as they are an intermediate stage that Ross did not show me. Make sure you read through his notes for details about decisions we made on sub-paragraphs (there was an issue at one point about us needing to assign some numbers or letters to the various sub-parts of some lines because they were just all listed together but we would need them to have separate names. It doesn't look like this has been done in any consistent way in "Torquay All Schedules.xlsx" so maybe that is something that still needs to be done.
   
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

Also from Victor on July 4: I will integrate schedule 16 and IRC part with Ross's schedule 1-15 soon

* Response from Kristy (July 5): Before you integrate the IRC lines, I think we should create a dummy variable that says that these are using a different coding system. Or we could create one variable that takes on different values depending on what coding system is used for each year (it is going to change as we move forward in time). Or maybe you have some suggestion that would be better. I will look through the Irwin book when I get home and see if there is anything in there about the coding changes over time. I suspect they used the IRC numbers for products that had not been covered in the Smoot Hawley bill and therefore had no code there. But, again, this would be good to know to make sure that we're not making any false assumptions.

# Progress Report 6

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

4. For the containers, I also learned about the trade history in Australia, it says that the trade of beef, other food and also certain chemicals increases in significantly larger volumes after the development of technology. I will pay more attention to those products when taking comparisons with other agreements. Maybe there are more changes of products in later rounds like Kennedy round and Tokyo round.

5. I just compared the schedule_16 (Free list) in Annecy and Torquay, I notice that around half of the products which are in the Torquay free list are not in the Annecy. Geneva (file Geneva1) round covers similar amounts of Free list products as Torquay, but there are several covered in Torquay but not Geneva and vice versa. So several products on the Free list had been removed from Geneva to Torquay, I will manually fill them in. 

   + Kristy's response: Yes, manually filling these in is the right thing to do.

      - Will you also check to make sure that tariff lines are not being moved from Schedules 1-15 into the Free List when they become free? If this is something that happens, we will have to think about what to do about it--we only want each good listed in one place (I think).

6. Given the situation in point 5, if I encounter paragraphs in other schedules that are covered in one of the agreements but not in others, I will manually put in the products. But so far I don't think we need to create a dummy variable on this because it will be straight forward if the columns in other rounds are empty. 

   + Kristy's response: I agree. We scanned in Torquay because it seemed to be the most comprehensive list that used the Smoot Hawley line numbers, but it wouldn't surprise me if there are a few things in the earlier rounds that are not included in Torquay.

      - What is most important is to be careful of the lines that change between rounds. I believe Ross had left a bunch of lines that were highlighted--these were ones that he was still trying to figure out exactly what the correct relationship was between rounds so that we could record those tariff line changes in the way that made the most sense for creating time series.

7. I have just started the filling in of Annecy data.

# Quick Progress Report

#### July 12, 2020

(Via email)

* I have just finished the manual-fill-in of the Annecy data.

* I haven't found out a way to "copy paste the progress_report_6 with the email" and keep everything in order and tidy, but instead I will summarize all the decisions we discussed and made from report_1 to report_6 in a monthly report next week. I believe this document will help to record our decisions and also help the following students working on this project. I will start this document after I finish the entry of Geneva and by then I will also be able to answer your questions related to the free list items in your comments of report_6.


# Quick Progress Report

#### July 19, 2020

(Via email)

+ The fill-in work of Geneva data took much more time than I expected.

+ In general I have just finished the fill-in work of both Geneva and Annecy (except for the free list part which as we discussed need to be further checked). Still some paragraphs need to be double checked because they use different description as in Torquay and also a general go-through will be good given that the words are intensive and that mistyping could happen.

+ I will write a more formal report about the problems and my solutions to them next week while conducting the double check. So there will be two separate reports next week: this one and also the summary of previous reports.

# Progress Report 7

#### July 19, 2020

(deleting the separate file and integrating it here)

## Summary of fill-in work of Annecy and Geneva data

#### About the data: 

1. First of all, I believe (with 95% confidential interval) that the two file sources (name "Geneva 1" and "Annecy" in the folder) have some complementary relations: as you go through the results in the excel, you will find that if you set the Torquay data paragraphs as benchmark, there are a lot of missing sub-paragraphs in Geneva that exist in the Annecy data and vice versa, for quick check, see example of paragraph 1531 at around row 2147 in the excel file. This kind of complementary relations appear quite frequently across the whole agreements (an easy way to see more, just follow the Annecy data).

   + Kristy's comments: The notes at the end of the United States' schedule in "Annecy.pdf" (p. 63 by document's numbering, p.67 of PDF) say:
"1. The provisions of this supplemental schedule are subject to the pertinent notes appearing at the end of Schedule XX (original), as authenticated at Geneva on
October 30, 1947 2. Products provided for in this supplement and also in Part I of Schedule XX (original), as rectified by the First Protocol of Rectifications signed at Havana on March 24, 1948 and the Second Protocol of Rectifications signed at Geneva on September 14, 1948, shall be subject to the more favorable treatment provided for in Part I of either the original or this supplement to the said Schedule XX."

      - There's also a paragraph at the top of "Geneva I main treaty.pdf" that says:
"Agreements relating to the General Agreement, including, among others, rectifications, modifications, amendments, and protocols of accession, are dated March 24,1948, September 14,1948, August 13, 1949, October 10, 1949, and later." There are footnotes for all of them as to the location.

      - I think this leaves open the possibility that the schedules we've been using for Geneva were updated with later amendments, although since there are references for where to find these subsequent agreements, perhaps not.
In "Clashing Over Commerce," Doug Irwin writes (p. 506):
"Negotiations at Annecy, France, in 1949 allowed the accession of eleven countries as new contracting parties to the GATT. The original twenty-three countries did not exchange new tariff concessions with one another, but they did negotiate with the new participants."

         - Table 10.2 on page 507 reports that 6 percent of the U.S.'s dutiable imports were subject to tariff reduction in Annecy, whereas 12 percent were subject to reduction in Torquay (this is not in terms of tariff lines as far as I know, but probably in terms of volume or value). The reference for this table is Evans, John W, The Kennedy Round in American Trade Policy, Cambridge, Harvard University Press, 1971, 12, 281-282.
There's also a very interesting Table 10.1 that breaks down the proportion of dutiable imports (by 1939 value) that were subject to reduced rates in Geneva I by schedule. It says the source is "U.S. Tariff Commission, Operation of the Trade Agreements Program, June 1934-April 1948, part 3. Trade-Agreements Concessions Granted by the United States, Report No. 160, Washington, D.C.: GPO, 1948, 37.
These at least give us some sources (along with the UN Treaty Website that is referenced in a note in "Annecy source.pdf") to look for alternate lists of the Geneva I schedule.

2. In general, by rough estimation, Geneva and Annecy data TOGETHER cover around 90% of the Torquay paragraphs and within this, the proportion of Geneva to Annecy is around 7:1 or even higher. This is one of the reasons that the fill-in work of Geneva takes much longer than Annecy.  

3. Considering this fact, I am doubtful about whether these two files (name "Geneva 1" and "Annecy" in the folder) are indeed ONE agreement. Another "evidence" that supports my doubt is that these two files look very similar in format and both assign year "1950" in every page, which actually contradicts with the timeline of Geneva round which is 1947. Or there may be some historical facts that I don't know about these two rounds, maybe the Annecy round was indeed to be designed as a supplement for the Geneva agreements.

4. The main reason I bring this up is that it directly influences the process of "Gradualism", the "Geneva->Annecy->Torquay" does not make sense, but the "(Geneva + Annecy -> Torquay)". You could see this big picture by special paste option in EXCEL: copy the three columns of Geneva and paste them in the Annecy column and select to pass the empty cell, then you can see it is very close to the Torquay data.

5. Given that the Geneva data takes most of the proportion, if without further explanation, the pattern I will discuss in the following sections are from Geneva only (in many cases, the Annecy data is too "dispersed" to have a pattern).

#### During filling-in:

1. If we set Torquay data as benchmark. Nearly all the paragraphs in Annecy and Geneva (note: not "sub-paragraphs") are covered in the Torquay, very few exceptions are like paragraph 1507 "Bristles, sorted, bunched, or prepared --- 3 cents per lb" is only in Geneva data but not Torquay; and  paragraph 1506 "Brooms, made of broom corn, straw, wooden fiber, or twigs --- 12.5% ad val". 

2. However the Geneva (plus Annecy as supplement) and Torquay do vary a lot in the "sub-paragraphs". The most frequent case is that there are sub-paragraphs such as "... value over 8 cents ...", "... width over 10 inches" in Torquay but not in Geneva. For quick check you may check paragraph 923, row 9 extra, paragraph 909, 910, 911a, row 1518 (for further examples, follow the extra column). I think these items should be paid more attention to. Because the classification itself, to some extent, represents a process of gradualism since the tax rate must have diverged (or converged).  In practice, I temporarily left those columns blank and wrote a note in the column "extra", but I suggest that we should fill in those column with the uniform tax rate of the "unclassified" items, because it makes not sense to put zero in them in the next stage of cleaning data. 

3. Similar cases, though very few, exist in Torquay but not Geneva, that is there are sub-classifications in Geneva but not in Torquay, in this case, I suggest we extend the Torquay rows to include them.

4. Some of the tax consist of a specific tax and an upper bound or lower or both ad valorem tax rate and vice versa. We need to decide how to deal with those taxes. You can find them in column "extra". I believe similar cases also happen Torquay's file but I am not sure how Ross dealt with it, didn't see any record, maybe I miss something.

5. A good example of the above case will be paragraph 1301, check row 1746. All Torquay, Geneva, Annecy use different classification, and different lower bounds for specific tax. I used extrapolation in this part to fulfill the blank of classified sub-paragraphs by using the tax rate of unclassified sub-paragraphs (see the repeated tax rate). To be more specific, for example Geneva data has no classification of the value (not mentioned in Geneva file), then I apply the same tax rate for "singles" for both under and above 80 cents. Similar actions will be taken for other paragraphs after your approval. 

6. About the unit: cents and dollar. For now, I directly use the units shown in the pdf file. However this will raise two problems: (1) within agreements, there are products which are valued in cents and others in dollars, this may happen in one products, see paragraph 1532(a), row 2156, but this only happens in one or two products; (2) across agreements, comparing Geneva and Torquay, there could be different units used in different agreements on same product, check paragraph 1541(b), row 2230, this is more important since it creates outliers if we only look at the numbers. For this two problems, I plan to identify them manually and use a uniform unit for this situations. I don't think it is necessary to transfer all the dollars units into cents (maybe we should do that?), but for now I will first identify them and use the unit of nearest product to unify the units.

7. Some more about the unit: there all many types of irregular units such as: "cents per 2000 lb" or  "cents per lb of total sugar", it is hard to generalize them all in one coding system (represent them all with numbers). So I suggest maybe we should just use the words instead of numbers. In practice, I keep the same unit as Torquay (except the ones in point 5).

8. There are some paragraphs are either very complicated or the descriptions are not matched in two agreements (paragraphs painted blue), I will double check them.

#### Free list items
1. First of all, the free list products cover a lot of categories from schedule 1-15, so there aren't much information we can derive from the number of the paragraph it has and thus hard to locate them.

2. Also the pattern of complimentary relation between Geneva and Annecy exists in the Free List part as well. If we combine the free list of Annecy and Geneva data together (call it GA), then most of the products in GA are also in Torquay, however there are some unique items in both of the agreements that are not in the other one. I used keyword search to identify some (the first 100 products start with 16**) unique free list products in GA (those not in Torquay) in the Torquay schedule (1-15), but I cannot find them, this may imply that they are not removed from (or to) the free list to (from) other schedules. But if this is true, where are they from and where are they now?

3. I haven't figured out this part, I will pay more attention to them in the following check.

4. And yes they are the same product as long as the paragraph numbers are the same in all the agreements.

#### About painted paragraphs

I haven't completely figured out why Ross painted those paragraphs, maybe it is the same reason that I painted some paragraphs blue, that is there are some difference in how the descriptions between two agreements are organized. I will look them up in the second round check. But in general most products look fine so I don't think this should be a big problem.

(From Kristy, via email on July 25): We agreed that "Tariff Act of 1930 cleaner.pdf" is the right document from which to digitize the Smoot Hawley tariffs.

# Quick Progress Report

#### July 28, 2020

(via email)

I just got the book from the library and I will check it this week to see if there are any clues in it.

Meanwhile, attached are the pdf version of OTAP (1934-1948) part I-V in case you are also interested. I have just read through Part III. In most of the tables, it says the tables are from the import stats of year 1939. I don't think they are from the nominal tariff of the 1937 Geneva negotiation tariff rate. My intuition is that they used the real world import data of year 1939 to compare with the import data before the Geneva round and derive these stats (most of them are ratios). The report is more like a evaluation of the trade agreements (concession) impact.

And the ad valorem tax rate we discussed last time is calculated based on the sub-sample of the whole deal, which covers 80% of the dutiable imports of 1939. They also pointed out that there are some "phase out" periods that some tariffs were not reduced instantly which also makes me believe that they are using the applied tariff. I will keep reading other parts to see if there are any other new information.

+ Kristy's response: Would you put these files in the gradualism folder on the G: drive so they'll be easy to find in the future? I put the first part in there yesterday (I think).

   - There has to be something other than the 1939 import data to be able to calculate all the percentages in the table I was looking at yesterday. I may be that they took 1939 tariff revenue data and then 1948 tariff revenue data. That would line up with what Doug Irwin told me, which is that all the data he knew of was calculated from applied rates. But it also seems like if they're reporting on what we call Geneva I (at that time, it was just the GATT to them since none of the future rounds had happened), they should make some mention of the tariff schedules and where they could be found. But maybe not...

   - When you say "the sub sample of the whole deal", do you mean they just made the calculations for the tariffs that were in ad valorem terms and ignored the specific tariffs?
   
+ Victor's response (July 29 email): The otap Part I- Part V have been uploaded to the G:drive folder gradualism.



I have summarized some of the paragraphs that I had difficulty coding with, paragraphs with tax rates bounds (all the Torquay data have no bounds), and also listed out the free list items that appear in different agreements.

# Quick Progress Report

#### July 31, 2020

As for the units, I have coded them all with numbers, there are around 50 numbers for units, which is more than I expected and also I believe at least half of them appear just several times and are special designed for certain products. However I do believe we can simplify them a little bit, some of the units have similar meanings like "cents per dozen" and "cents per dozen pairs". Also it may also make the coding system easier if we transform all the dollars into cents.

As for the books and reports, I still haven't found out anything related to the new source of the data for year of 1948, and am still trying to figure out the method of estimation. I will keep looking into it during the weekend and may have something new next week.

+ Kristy's response: I'm working through the "special paragraphs" list to try to understand what is going on in all of these cases. I'll prepare some notes on them for the next time we meet.

   - I think it would be most efficient for us to talk through the issue with the units when we meet again too.

   - And after playing around with the free list items for a while, I think it makes more sense to wait to deal with them until we understand whether "Geneva 1.pdf" is really Geneva or part of Annecy. So that should be the top priority. If there's anything you want me to look at in that regard, let me know.

+ Victor's response (Aug 3): While searching for clues of the original copies of the Geneva round, I am more worried that they might not be released. I found this from the OTAP Part III table 1 introduction (picture attached). I searched this website of US department of commerce, but it seems to be a very new website, most of the data are new (from the 1990s), maybe you know something? I also searched other sources but haven't found anything yet. I will keep looking and maybe will find something new when we meet.

   - Kristy's response: Since the GATT is an international agreement, if you couldn't find any earlier version of it on the U.N. website, maybe there are other international websites that would have it. Or maybe we can find the hard copy and get it digitized like we did with Torquay (this involves searching the Interlibrary Loan databases, and we could also look back at the Torquay book and see if there are clues there for how to find this earlier version of the treaty).
   
      + Victor's response: I have tried several other websites like WTO, New York University Law Library and others. I will keep trying tonight, maybe I will find something new by tomorrow.
      
      + I am attaching some documents from the UN website that I believe partially explain the relationship of the files we got (Geneva 1 and Annecy). I will explain that later in details, thanks!
      

# Quick Progress Report

#### August 20, 2020

Very sorry for the late update of report, the reason of the delay is that I didn't make any significant progress on the Smooth-Hawley file digitization. I tried some methods, but none of them can significantly reduce the manual effort to put them in the existing excel file. And due the way the paragraphs are organized, this file, as I estimated, will take much longer time than the Geneva and Annecy to put in manually. I am sorry I didn't come up with a better solution. But I will keep looking for alternatives from time to time, maybe I will find something new.
 
For the Geneva 1956. I do find a file on the UN website. The front page is different from the one we had in our folder (it has cover and "UN series"), but the content remains the same as we expected. One thing to be noticed is that on page 20 (the pdf file page), the page of "Schedule XX United State of America", the footnote shows (all) the volumes that contain the US schedules, among them vol.61 and vol.63 are Geneva 1947 and Annecy 1949, also other rounds are included. And all those volumes are under the registration number 814 (GATT).
 
I will keep in touch with the librarian and dig in more about the relationship between the Annecy and Geneva rounds.
 
For the digitization of Geneva 1956, compared to the Smooth-Hawley however, looks easier. Approximately, as I estimated, around 30 hours work will finish it. One thing to be noticed, in its general note is that the three columns are corresponding to three effective date of the duty, between each of them there is a one year period. I believe itself represents a kind of gradualism because in general the tax rate decreases every year. For now I think if we are going to code it, we could just preserve the all three columns.
 
I will finish a summary report this week (half done already), to briefly summarized the decisions we have made to help the successor to see a bigger picture. And given that I asked a one week off in early July, I will keep allocating time on this project for the rest of the August to make up for it. So please if there is anything you would want me to do, just let me know, for example begin to manually put in the first few schedules of Geneva 56 or extra. And again thanks so much for offering this opportunity, I really learned a lot from it.