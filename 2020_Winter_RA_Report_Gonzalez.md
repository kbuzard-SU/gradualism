---
title: Winter 2020-2021 RA Documentation
author: Matthew Gonzalez
date: 12/1/2020
---


# Progress Report 1 (12/1/2020)

1. Tuesday, Dec. 1st.
    - My goal today is to develop a system for managing contributions to GitHub via Git. This report should indicate my level of success...
    - In terms of the actual project, I have received a hard copy of of the Geneva47 (Thanks Victor!):
        - My next step will be to work through the "Schedules_1-15_units_changed_HS" file in the G:drive.
        - Here, I expect to compare entries between the hardcopy Geneva47 and the data in the file to verify previous work.
        - Finally, Victor mentioned to pay specific attention to the highlighted sections. I will keep this in mind. 
    - I expect my progress this week to be fairly slow, but will be much more available in the weeks to come.


# Progress Report 2 (12/8/2020)


- If GitHub can handle this, I'm wondering if there is a benefit to putting the .tsv file under version control? 
- I think the way I use the term "grouping" might be unclear in my report. I'm happy to explain this further.
- Comments that I cross off have been resolved are ~~crossed out~~.
- I have not yet added "Missing entries" to the file. I'd like to confirm with Victor that they are actually missing.. 


## Tuesday, Dec. 8th

### Overview:

- I am beginning to compare the Geneva47 hard copy to "Schedules_1-15_units_changed_HS.xlsx"
- I have saved a copy of the .xlsx locally to remain cautious in my early stages of work.

### Relevant Notes:

#### Related to Highlighted Sections 
  - Consider C32: "Ammonium silicofluoride". This is currently highlight in the .xlsx, but the ad-val. tax is not recorded. I'm wondering if the question is whether or not this should be grouped with C33: "Other chemical elements, chemical salts and compounds..."
    - Similar question on C33: "Harlem Oil"
    - For now, I'm going to record the AV tax.
- C77: "Chemicals, Drugs, medicinal ..." is highlighted, Not sure if this is a question related to grouping? 
- C83-C85: There is a provision that states that these duties may be reduced if they are subject to federal tax also..create subsections for these entries?
- Unsure about C116-C122. It seems that This info should just be included (I'll add in info for now)
- ~~C106-107: Seems like a duplicates (In Geneva at least)~~  
- C114-116: seem tricky.. I should look at torquay
- Adding AV tax for C129
- C201 Missing?
- C202: AV Tax of 10-20? Also, ~~there is no duty structure based on value/weight in hardcopy~~
    - ~~Where does C203 come from?~~
- Again, not seeing value/weight duty structure in 210-211, If it is the case that these two entries are only relevant in later schedules, then it should be the case that their tax structure is the same.
- C253: We have two options for gas black, but Geneva only has one tariff category. Should we group each by assigning the same duty for both categories in Geneva?  (Similiar to C106?)
- C259: (Recurring value/weight issue)
    - I'm noticing that this occurs with multiline duty rate: e.g. (3cents/ lb., but not more or less than 15c nor more than30c AV)
- C281: Currently can not find Potassium hydroxide in hard copy. Though it appears on specific Geneva
- C321-C334: Need to ask.. Many more options in the .xlsx than in the hard copy. Not sure if they align.



#### Entries Missing from .xlsx?

- Sodium Alginate missing? (Schedule xx p.2)
- Laundry Sour? (Schedule xx p.2)
- Aluminum salts and compounds not specially provided for. (Schedule xx p.2) This seems justified if it is being grouped with C34 (Mentioned above).
- Peanut Oil? (Schedule xx p.10)

  
### Summary/Todo:
Completed 3.5 Hours.
  - [x] Touch base with Victor
  - [x] Check out other Schedules to get a better feel (Torquay)
    
## Tuesday, Dec. 9

### Overview:

I reached out to Victor, who will get back to me towards the end of the week. 

**Todo** from yesterday: 
> Check out other Schedules to get a better feel (Torquay)

This question comes from some confusion regarding .xlsx entries C321-C334, (Floor and wall tiles -Geneva47 Section xx p.16)
What is the [Torquay](https://github.com/kbuzard/gradualism/blob/master/tariff_schedules/torquay%20(color).pdf) Equivalent? (Torquay section xx p.24)
- Torquay expands the tile section from 4 specified rates of duty to 15:


|Schedule|Valued <40, tiles over 5/8 |Valued <40, tiles other| valued > 50, tiles over 5/8| valued >40: other|
|---------|------|---|---|--|
| Geneva47 |5+av(15-70)|10 +av(30-70)| 15 av|30 av

---
Tiles/moasaic etc..
|Schedule|Valued <40, tiles over 5/8- and under 7.14 |Valued <40, tiles over 5/8 between 7.14-33.3|Valued <40 tiles over 5/8 over 33.3| valued > 40, tiles under 5/8 under 14.28| valued > 40, tiles under 5/8  14.28-33|valued >40, tiles under 5/8 33<|valued <40: other: under 14.28|valued < 40:other: between 14.28-20|valued <40, over 20|
|---------|------|---|---|--|---|---|---|---|-----|
| Torquay |70 av|5|15 av|70 av|10|30 av|35 av| 5|25 av|

---
Floor and wall tiles wholly or in part cement...
|Schedule|Valued <40,and under 14.28 |Valued <40,and 14.28-20|Valued <40, over 20 | valued > 40, tiles over 5/8| valued > 40, other|Floor and wall (Cement)
|---------|------|---|---|--|---|---|---|---|
| Torquay |28 av|4 |20 av|15 av|30 av|24 av|



So my question here is related to how this data is grouped for Geneva in the .xlsx:

- For instance, a Geneva AV of 70 (.xlsx C321) is unclear to me 

I will keep this question in mind for my discussion with Victor. 

### Relevant Notes:

- I355: A tranformation from $1/ton to 100 cents/ton. Seems like a small detail, but inconsistent with I353 (Not transformed)
    - Again at I359 
- Adding I380 specific tax and units
- C380-C384: 
    - Missing "If not decorated/if decorated" (Schedule XX, p.19)
    - Again a question of grouping (Geneva does not specify for valuations over $14)
    - Based on Torquay AV for C382 and C383, maybe "decorated" = "Valued over 14" and "not decorated" = "Valued under 14"
        - I don't love this idea...
- Why not group C385-C386?
- C387: Fixed data placement. 
    - ~~The unit is per dozen? Though in the sheet it is listed as "dollars each"~~
    - ~~Not sure where I388-J389 come from~~

### Summary/Todo:

Completed 2 hours.

I found a few sections that I need cleared up. 


## Monday, Dec. 14 

Victor provided me with some helpful information related to some of my questions above:

- There is an unsolved issue with coding of "Tax Intervals": For now I will mark these instances in the: "Extra" column, as suggested by Victor.
- It seems that the majority of my "Relevant Notes" sections can be placed in either the "Extra" Col, or as comments in .xls file. 
- I was previous working in a local copy of the .xls sheet to be cautious of errors while getting a feel for the project. I'll shift my work to the actually sheet now. 

### Summary/Todo:

Completed .5 hours.
- [x] Add notes to G:drive file. 
- [x] Discuss notes/get feedback 


## Tuesday, Dec. 15

### Relevant Notes:

- Still a little confused on the placement of AV in rows 386 and 388. I think that if I understand this, I can resolve a lot of other similar questions above. 
- C389 and C393: Missing AV and Specific? (p.20 Geneva)
- C396-C408: Probably need to discuss this section. Though I have added some notes in the "Extra" col
    - Missing Row Entry: Plates of the diameters specified above, cups, saucers... which is valued at more than the mac value specified above" 
    - This might be captured in C408
- C414-C419: I left some comments in "Extra"... This section is somewhat confusing
- C442: Missing AV
- C449: Update description
- C457: Missing "Not exceeding one hundred and fifty square inches, 63/64 per lb"
- H464: "Shall be subject to a less rate of duty than"_ Should be 30 AV? Listed as 20

#### Summary/Todo:
Completed 2 hours.

- Submitted pull request to master
- Up to page 27, but I feel that my efficiency is improving. 



# Progress Report 3 (12/19/20 - 1/5/2021)

## Thursday, Dec. 17

### Overview
- Addressed Pull Request Comments
- Documented Changes
- Compared PDF to hard copy

### Relevant Notes: 

#### Based on [Github Discussion](https://github.com/kbuzard/gradualism/pull/52):

- Added AV for for Ammonium Silicofluoride and Harlem Oil (K32, K33)
- Added:
    - Changes to C116-C122:
        - I-J117:  Cellulose Acetate... Added Specific (Note that I'm adding in row of "Other" C117 because "Forms wholly or in chief value of acrylic resins" (C116) is not mentioned in Geneva)
        - I-J119: Adding Specific (Note that hardcopy indicates "Of which proxylin is the component material of chief value" I mentioned this under "extra")
        - 120: Added Specific (Not that hardcopy indicates " Transparent sheets over 0.003 but not over 0.032 inch thick". Added to "extra")
        - K118,K121 (Added AV)
- Multiple discussions in progress (1:46 PM)

#### Comparing PDF and Hardcopy for Inconsistencies:
Before progressing further, I will compare the GENEVA1 on GitHub and the Hardcopy. In response to this [suggestion.](https://github.com/kbuzard/gradualism/pull/52#discussion_r545213)

- Currently up to paragraph 75. No differences between PDF and hardcopy. 
- ~~I need to know the specifics of how GENEVA1 was coded. Current understanding is that Torquay was digitized by Ross (available in repo). However, not sure if there is a corresponding digitiztion file for Geneva?~~ 
    - These "additional" entries match Torquay, But not H-S

#### Summary/Todo:
Completed 3 hours.

- [x] Meeting tomorrow
- [x] Identify the original coding/digitalization process for Geneva

## Saturday, Dec. 19

"p." means paragraph hereafter, **not page**

### Overview

- Resolve PR comments
- Making sure that updated "Onedrive" File (Which now will be the main "working" file) is consistent with changes from previous reports
- Review some of Victor's "Tax Boundaries" in red
- Continue working through Geneva
    - Begin reviewing Victor's list of paragraphs (explained below)



### Relevant Notes:

- Entries regarding Paragraph (p.) 31.a.1 - 31.b.2 from Dec. 17 are added to Onedrive Spreadsheet. 
- p. 210 onedrive comment to Victor 
- p. 211 Suggested duties added to "Extra_Geneva": H389, H393. 
    - Geneva only specifies duties for values of $2
- Entries should be shifted (J386,J388 to col K)
- Inserted suggested entries K397:  p. 212. 
    - Since Geneva does not have specified duties for "other" my thought here is to first consider C396 and C397. The lower valuation recieves the lower AV, opposite for the higher. Both receive same specific tax. Based on Torquay entry of the same row. 
- Must come back to p. 212. My notes/thoughts are currently entered in green.

### For Victor (List of Paragraphs)


The following work relates to paragraphs in Geneva1 that Victor requested I look through.
Specifically, the list includes:

Geneva1: paragraph 202, 212, 218(f) 353, 355, 368, 719.4, 1301, 1529, 1530, 368

#### Comments
- p.202  Seems accurate. Though I am unsure above that 30 AV in K325
    - (Not sure if this is calculated) 
- p.212 is tricky... Some related notes are provided above. 
    - I'll come back
- p.218(f)
    - I agree with the entries here, entered a note in "Extra" that was provided in Geneva. Probably small.
- p.353 Left some thoughts notes here
    - I have to check again here
- p.355 
    - I have to check again here

#### Summary/Todo:

Completed 4 hours.

- Resolve Missing entries with Victor
- Continue Dec. 19. Work for Victor
    - Must check for accuracy
- Go over C116-C122 (From Dec. 17)


## Sunday, Dec. 20

### Overview

Today's work is related to Victor's list of paragraphs

### Relevant Notes
- Pages out of order in Geneva1 PDF: page 86 is placed after page 54

### For Victor (List of Paragraphs)

- p.368. I've left a comment on this section. This should be discussed with Victor
- p.719.4 Break 719.4 into separate entries for herring and mackerel?
    - A question regarding Alewives is also included
- p.1301
    - Comments/entries are documented in file. This section is tricky and I should discuss this with Victor to ensure accuracy.
    - **Based heavily on Tax boundaries in earlier parts of p.1301**
        - Should double check here


#### Summary/Todo:

Completed 2 hours

## Monday AM, Dec. 21

### Overview 

The following work is related to Victor's paragraphs and developing a sheet for new entries in the excel file.
Specifically, this "New Entries" sheet is for paragraphs/descriptions specified in both the hard copy and PDF version of Geneva1, but were not represented in the original "Main Data"
sheet of the excel document:
  - For example: Schedule 1. p. 54: "Peanut Oil" Was added to "New entries" as there was no row originally specified in the "Main Data" sheet
    - Rows in "New entries sheet" are discussed between Victor and myself before being integrated into main data. 
    - Once these rows are discussed/documents, these entries are copied from the "New entries" sheet and into "Main Data"
- Continue paragraphs for Victor
- Create list of "New" Entries
    - Enter entries in Shared file

### For Victor (Cont...)

- p.1529(a) H2094 Considering Adding new entry for silk (AV of 65). Noted in shared file.
    - Added some suggested AV's here, but again, will come back
- p.1530 Added some comments. This section should be discussed 
- Created a sheet within shared file for new entries


#### Summary/Todo:

Completed 2 hours 

**Submitted Hours Up to This Point** 

- Need to compare certain section between Geneva/Torquay.
- Check for accuracy


## Tuesday, Dec. 22

### Overview
 - Review past work

### Relevant Notes:

- Placement of specific tax in J397?
- For p. 353, "which are not wiring apparatus..." It seems that in Torquay some of these sections are group in with the category they are excluded from in Geneva (Will explain during meeting)
- Added av and specific in 827

#### Summary/Todo:

Completed 2 hours

- C396 Change
- 1530.e doublecheck


## Wednesday, Dec. 23

### Overview

- Meet with Victor

### Summary/Todo:

Completed 2 hours

The following is a list of items to be completed in the coming days:

- Insert lines from "'New' Entries" sheet to "Main Data"
- Begin checking accuracy of entire Geneva1. (Ensure that the Victor's manual entries for each row in Geneva1 are consistent with the hard copy and PDF version of Geneva1) 
- Compare all of Hardcopy vs PDF (Geneva1). (Compare each line of the Geneva Hard copy and PDF to identify inconsistencies) This is similar to the above, but here I am looking for differences in the texts, while in the above I am checking for errors
- Begin Smoot-Hawley

## Monday, Dec. 28

### Overview

- Today, I intend to complete the 'Todo' tasks defined on 12/23

### Relevant Notes:

Rows were inserted from the "New Entries" sheet into "Main Data". 

- Siennas? p.73 (In Geneva1 col in doc, but not specified in Hardcopy or pdf)
- Added specific for Talc: (Schedule 2, p.209)
- p. 214.. Discuss
- Added specific p. 218.e 
- 228.b, Added av for photographic lenses.
- 230.a Added av
- p.308, add boundary for specific? (referenced in comments)
- p.338 (new product)
- p.339 (new product)
- p.345 (new product: Saddlery)
- p.356 Added AV
- p.357 Added Multiple
- p.359 Geneva doesn't specify under for surgical needles,.
- p.372 added av (Braiding nspf)
    - Added Textile machinery AV's
- p.373: Agricultural hand tool section?
- p.376 Missing entries .. (new products)


### Summary/Todo:

Completed 5 hours

The following items are to be completed in the coming days:
- Continue with accuracy check of Geneva1 (Here I am looking for errors in the coding of this schedule)
- Begin Smooth Hawley

## Tuesday, Dec. 29

### Overview

Today's work continues the accuracy check for Geneva1 (Here I am looking for errors in the coding of this schedule)

### Relevant Notes:

- p.381 moved entries to proper cols
    - added AV and specific rates. (Written in Green) Added new line entry for bronze tubes
- p.381 **Come back to this section: Check over some values that I proposed.**
- p.394 Corrected Units (originally 0. Changed to 1)
- p.397 is fixed
- p.405 Plywood: Western Redcedar
- p.412 Added new entries and added AV
- p.503 Units, "Cents per lb of total sugar". Do we want to make this its own unit category?
- p.505 Added av for lactose
- p.704 added line in new entry
- p.707 (fixed entries)
- p.711 Added new entry 
- p.713 Added multiple new entries
- p.717.a added multiple entries
- p.730 added new entries
- p.742 added new entry
- p.748 added new entry: plums
- p.753 added new entry Hyacinth bulbs
- p.754 added AV
- p.755 added specific (coconuts)
- p.760 added new entry walnuts shelled
- p.761 added multiple new entries
- p.762 added multiple new entries
- p.764-765 added specific
- p.771 Fixed specific and added entry 
- p.776 added ginger root to new entries
- p.803 added champagne to new entries
- p.904.b added AV 
- p.917 added new entry (gloves and mittens)
- p.1014 added AV 
- p.1018 fixed AV
- p.1021 added new entry
- p.1101 added mult entries 
- p.1105.a.b added new entry
- p.1141.b added mult new entries for gloves and mittens
- p.1117.a added new entry
- p.1205 **Come back to this section ***
- p.1206 added new entry
- p.1302 added av
- p.1306 added new entry
- p.1309 added av and fixed av 
- p.1405 added new entry
- p.1407 added rates

### Misc. 

- Geneva1 PDF is missing certain pages. (page 85-86)

### Summary/Todo:

Completed 7 Hours

## Wednesday, Dec. 30

### Relevant Notes:
- p.1410 added comment regarding values on section.
- p.1413 added to new entries
- p.1506 added brooms to new entries
- p.1507 added bristles to new entries
- p.1513 added new entry 
- p.1514 added new entry
    - ***COME BACK TO THIS SECTION*** 
- p.1516 added new entry
- p.1519.a added new entry
- p.1523 Col J highlighted for row I'm discussing: "But not less than 15 cents per lb"? should this have a line? 
- p.1523 added new entry for nets and nettigns
- p.1526.a fixed entries 
- p.1529.b added to new entries
- p.1531 added AV
- p.1532.a added rates/fixed entries
- p.1537.b added av
- p.1541.a other category in Geneva 
    - ***Come back here***
- p.1541.b added new entries
- p.1551 fixed entry
- p.1556 added av
- p,1558 added to new entries

#### (mostly) Completed the accuracy check for Geneva1:

At this point, I have checked entire Geneva1 schedule for errors in coding, and for potential "New entries" to be added. 
There are paragraphs that Victor and I will come back to after I code Smoot-Hawley. This is because we assume that Smoot-Hawley might give us some insight/inspiration as to how some difficult sections can be dealt with. There are also paragraphs that I am interested in returning to after S-H. These are 
captured by bold **"Come back here"** notes.


### Misc

- Page 149 missing in Geneva PDF?

### Summary/Todo:

Completed 3.5 hours


#### Beginning Smoot-Hawley

Having completed checking over Geneva1, I will begin manually coding S-H tomorrow, Starting at schedule 3, where Victor left off. 



## Thursday, Dec. 31

### Overview:

- Today I will begin coding Smoot-Hawley schedule 3
    - I include comment related to the codign in the "Extra" category for HS


### Relevant Notes:

- p.302.n (Check previous work.. unsure if it should be a single rate across the paragraph. )
- p.302.r There are some paragraphs in HS that are not included in later schedules?
- p.355 **COME BACK HERE**
    - Many more sub-paragraphs in geneva, torquay etc.
    - I ended up just grouping things that looked similar, this is subject to change
- p.357 check "Other category"
- p.358 more tax intervals?
- p.362 more tax intervals/sub-paragraphs?

### MISC

Sanity Checks for later:
- Checking if duties reduced across schedules
- Checking if units align


### Summary/Todo

Completed 4 hours


## Friday, Jan. 1 

### Overview: 

- Smoot-Hawley

### Relevant Notes:

- p.368 Tricky **Come back here!**
- p.372 Seems that many entries would fit in the "other" category in HS. Maybe most of these non specified categories can be given AV 27.5
- p.397 Tricky **COME BACK**, it seems that there are only two rates listed in HS, though the grouping with descriptions is difficult

### Summary/Todo

Completed 3.5 hours



## Saturday, Jan. 2

### Overview

My comments/questions are documented in the working file. I occasionally comment regarding trickier sections in this report.     

- Smoot-Hawley, schedule7


### Relevant Notes

- p.710 Not sure about tax intervals
- p.717 HS Groups halibut, salmon, mackerel and swordfish together with a specific 0.02/lb, then "Other" fish are assigned 0.01/lb. This is difficult to group given our current description structure (717.a halibut is grouped in what I would consider the "Other" category) 
- p.742 **Come back here** 
- p.769 **Come back** 


### Summary/Todo:

Completed 4 hours

- Completed Schedule 7. 
- Around 850 rows remaining in HS. Goal is to complete these by Monday evening


## Sunday, Jan. 3

### Overview

- Smoot-Hawley, schedule 8
- p.904. Difficult to categorize tax rates. My issues are documented in the spreadsheet.
- **POTENTIAL DIFFERENCE BETWEEN PDF AND HARDCOPY p.911.a** 
- p.1108,1109,1119: difficult paragraphs


Question/Thought: HS does not use tax intervals and does not specify rates based on value. As such, there are many instances with a single tax rate across entire paragraphs: **p.804 as an example**

### Summary/Todo:

Completed 3 hours

**HOURS SUBMITTED UP TO THIS POINT** 


# Progress report 4 (1/4/2021 - ...)

## Monday, Jan. 4

### Overview

I submitted a PR for this file to be merged with master. Prof. Buzard suggested that I improve clarity on certain sections. As such, I spent time revising the PR. I was assigned [Issue #56](https://github.com/kbuzard-SU/gradualism/issues/56)
related to some problems with Geneva1. My thoughts are recorded on Github. The following notes outline thoughts on the Github issues. Then, in the "Relevant notes" section, I record comments related to my work in manually coding Smoot-Hawley.  

#### Github Issues (#56-57)
- Before going continuing with issue #56, it is important to understand potential copyright restrictions ([Issue #57](https://github.com/kbuzard-SU/gradualism/issues/57))
    - While waiting for this, I can reexamine the Geneva1 hard copy vs PDF and develop a specific list of differences. **My biggest concern here is the potential difference in 911.a** 

### Relevant notes (S-H):

- p.1301 Tough section. Should discuss with Victor. **Come back**
- p.1404-1406 are difficult **Come back**
- p.1503 is highlighted in the excel document, with comments related to entries that are available in S-H but not listed in the descriptions column of our working Excel sheet. This is not the first occurrence

### Summary/Todo:

Completed 6 hours

Wednesday, 1/6/2021, I will meet with Victor and Professor Buzard to discuss current work/issues. The items to be completed before this meeting are:

- S-H coding
- Develop agenda for S-H meeting with Victor
- Another careful analysis of Geneva1 hard copy vs. PDF


## Tuesday, Jan. 5

### Overview

I will complete my first pass of manually coding S-H. There are a variety of difficulties related to matching entries to descriptions, and identifying which tax rates are appropriate to certain entries. I have included particularly difficult sections
in this report, (See 1/4/2021 and 1/3/2021), but I have made more specific comments in the "H-S Extra" col of the working excel sheet.
After completing S-H, I will develop a list of topics that I'd like to cover in tomorrow's meeting.

The "Relevant notes" section will include comments on work related to coding S-H


### Relevant notes (S-H)

- I have commented in the actual workbook in the "Extra" column with thoughts and questions
- Sections that are highlighted in light green are sections that I would like to come back to after discussing some issues with Victor
- The text of certain entries are colored light green. These are entries that I was particularly unsure about, and would like to come back to as well.

I have now completed a first pass of manually coding S-H. As mentioned above, there are sections that should be revisited. (See notes from early this week as an example of problematic sections)
I will outlines my next steps in the following "Summary/Todo:" section 


### Summary/Todo:

Completed 5 hours

Before tomorrow's meeting, I will address the folling in tomorrow's notes:

- I need to outline the specific issues I'm having with S-H
- There are certain entries leftover from Geneva1: "New entries" sheet that should be integrated with "Main data"
    - I was waiting for Victor to first integrate his "New entries" found when coding Geneva56.
- Progress with [Issue 56](https://github.com/kbuzard-SU/gradualism/issues/56)



## Wednesday, Jan. 6

### Overview

I will spend some time today preparing a specific outline of my progress and questions for tonights meeting with Prof. Buzard and Victor.
The "Todo" items from 1/5/2021 will be discussed in the following sections.

The following items will be addressed:

- Integrating Geneva1 "New entries" into main data. (This process is outlined in December 21: Overview)
- Difficulties in coding S-H
- Issue 56: (Addressing issues with Geneva 1.pdf)

####  Integrating "New entries" into main data.

I have been hesitant to copy over some of the data from the "New entries" sheet before discussing with Victor. I expect, however, that I should have the green
light to go ahead and integrate these new entries by tonight. This process should not be particularly time consuming. Also, I 
should note that some of these "New entries" have already been added to the sheet by Victor. This should make the process even easier.

#### Issue 56:

It is important to address some key difference between the hard copy version of Geneva 1, and the PDF version. In this section I will discuss these differences:

- Geneva 1 Page 85-86 comes after page 54 in the PDF. 
    - Page number is 54, 85, 86, then 55
    - These pages must be moved to their accurate positions
- Page 149 is not missing in Geneva PDF (The note in progress report 3 is incorrect)
- ~~page 53, hard copy is hard to read, double check~~ 
- ERROR p.764 carrot: $0.03/lb in hard copy $0.05/lb in PDF. 
    - French version confirms $0.03/lb is accurate

#### Difficulties with S-H

The issues I discuss here are described in detail in comments in the actual excel file. 

- Description of certain paragraphs is missing from the working Excel document, though are available in S-H. 
    - I assume that we will need to add these to our spreadsheet
- Issues with matching descriptions p.304 
    - EXAMPLE: p.329
- The way paragraphs changed over time can be confusing: 
    - EXAMPLE: p.353. (Some machines were added as time progressed?)
- Some specified rates based on value don't match up with the rates in Geneva1 
    - EXAMPLE: p.358 
- Question: What to do with entries that are not specified in S-H. Example: 1530.b.5



Some problematic paragraphs with notes for discussion:
(These are just examples to talk about)

p.353
    - All of the foregoing are given the same AV
p.368
    - Difficult to group because many paragraphs included in the Excel sheet but not in S-H
p.719.4
    - Difficulty with "Allewives" section
p.1301
    - One of the more difficult paragraphs, problematic areas are highlighted 
p.1529
    - Everything is provided with the same AV?


### Summary/Todo:

Completed 4 hours

Following the meeting with Victor and Prof. Buzard, the notes of Issue 56 and the "New Entries" sections from above are resolved.

Regarding S-H:

- In general, the largest issue with coding S-H is that S-H has either too few descriptions for items in certain paragraphs
than our current Excel file, or too many.
- Victor and are are working to develop a specific framework to address this:
    - For instances with too few entries in S-H, we will most likely be applying a S-H tax rate that captured 
    will capture an entire section 
        - This above note is unclear, I will illustrate this in the coming days with an example
    - For instances with too many entries, we will mostly likely be adding entries

More details will be provided in the coming days


## Thursday, Jan. 7

### Overview

Today I will copying entries from the "New Entries" sheet into "Main Data". Then, I will be documenting processes for coding problematic sections in S-H


### Integrating "New Entries"
- p.1413 "New Entry" already included in the original file but wasn't highlighted in blue. I'm choosing to highlight here.

Process is complete.

### S-H 
Now I will begin documenting a process for 

p. 302.b: Added Specific

p. 302.e: Since S-H provides only a tax rate for a general category of items, only single tax rate is specified
p. 304: Concrete reenforcement bar;... over 1.5 but not over 2.5: filled in this section. Rates match those of Steel blooms, ingots etc...
    - Bars and billets is also filled in similarly. Note here that the description indicates, for example "valued over 1.5 but not over 2.5: not over 30 lbs" and "valued over 1.5 bu not over 2.5: Over 30 lbs". Because S-H does not provide separate rates based on these evaluations, I have coded them with the same rate.
    - **AN ISSUE**: (This is documented in The file under "H-S Extra", and was previously mentioned in a comment) HS states: Over 2.5 but not over 3.5. Then has an additional entry for over 3.5 but under 5. These two entries are taxed differently. Not sure if I should add a new entry?
p.308: I have entered the same rate as I did for description in E636. This is because S-H does not specify different rates for values under $1.75 vs [$1.75,$3]
p.316: Added AV
p.318: Cylindrical Wires: two entries here are taxed at the same rate as S-H does not specify based on value.
    - This is continued in descriptions below
p.321: S-H did not original break this section into multiple entries. Both are taxed at same rate
p.327: Although "Castings of malleable iron, nspf:  heel and other plates for boots and shoots etc..." is not specified, I believe that is should fit under general category of "castings of malleable iron"

p.333 Missing from Excel. "Common horse, mule, or ox shoes etc..."
    - Should we make new entry list? Or wait
p.334 Steel shavings, also missing from Excel file. 




p.328: Corrected section 

### Summary/Todo:

Completed 4 hours

I will continue working on improving S-H in the coming days.

## Friday, Jan. 8

### Overview

I uploaded a correctly ordered copy of Geneva 1.pdf to the G:drive folder. This is documented in #56.
Today, I will continue working with Victor on improving the coding of S-H.

### S-H 

I created a "New_-S-H" Column that will help document paragraphs/items that are described in S-H, but are currently missing as rows in the Excel file.
This process is similiar to the "New__Genva1" process described in previous notes.

The following notes relate to a "second pass" of S-H

- p.304: added new rows for specifications based on value that were original not in our excel sheet
- p.333: adding this missing paragraph to "New entries" ("NE" hereafter)
- p.334: added "steel shavings" to NE

- p.339: should an entry be added to NE? 

- p.340: crosscut and circular saws are coded with the same AV, regardless of specified value
- p.343: How should we enter the "Other" Entries for S-H?
  - In this example I was able to just enter an AV because the description mentioned "And all other needles". But I believe that this is sometimes an issue. I'll explain more when I come across a more problematic example.
- p.344: Adding a entry to NE

### Summary/Todo:

Completed 3.5 hours


## Saturday, Jan. 9

### Overview

Today I will continue working with S-H in the manner described above


### S-H 

- p.345: I realized that in Geneva1 NE, I had proposed adding to new entries, "If not plated with gold or silver" and "Plated with gold or silver" 
  I found that these items were actually already captured by the Excel file, so I am removing them from NE.
- p.345: S-H originally separated harness hardware (Adding to NE) 
  - I have added this line and explained some thoughts to Victor in an Excel comment
- p.346: entered rate in for NE that victor added
- p.347: entered rate in for NE that victor added
- p.350: Uniform tax rate as no further specification is provided
- **p.353: This paragraph is an instance where items were invented at a later point. This will be discussed with Victor** 
- p.354: No specification for "other". I will code here based on tax rate specified for items over $6
- p.355: I've added some rates (and comments) In the excel sheet to discuss with Victor

### Summary/Todo:

Completed 2 hours


## Monday, Jan 11

### Overview

- Prof. Buzard contacted Victor and me via email to propose change in deadline for this section (Data development and some analysis in R). The new deadline is (mostly likely) Jan 25. I am following this email thread.
  I will spend today working with S-H in the same manner as described above.

### S-H 

p.358: More intervals in S-H than in current excel sheet. This section converges to only two intervals in Torquay.
p.358: Because there is no specification based on value for safety razor frames and handles, each tax interval is coded with a uniform tax rate (10 cents each and 30 AV)
    - This is somewhat similar to p. 304. Using p.304 as a precedent, I will added the addition intervals to NE
    - I will not yet integrate this into "Main Data". I'd like to mention to Victor first.
p.359: Somewhat interesting example. Our Excel sheet lists two entries. (Surgical needles, including hypodermic needles) and (other instruments, forceps, hypodermic syringes etc..), Both specify "Except articles in chief value of glass". Now 
consider S-H. S-H groups Hypodermic needles, forceps and hypodermic syringes together, instead of splitting them. AND also specifies a rate for these articles if they are composed in chief value of glass.
    - As a result, I expect to create new entries for articles specifying chief value of glass (based on our current excel sheet structure)
    and adding to NE. See excel sheet for example. 
    - A similar method applied to "dental equipment" in the same paragraph
p.360: I had marked with "No further specifications", but the coding I initially used was appropriate.
p.362: Added the addition sub-paragraphs mentioned in S-H
    - **A thought: S-H specifies rates for various lengths. Annecy then specifies a reduction in AV duty for length "over 7 inches long"... Whats going on for items less than 7 inches long?**
p.364: Bicycle bells are not specified in S-H. Coding them with general rate specified in S-H
p.365: Shotguns, rifles and combination shotguns/rifles are grouped together in S-H 
    - Corrected rate to 55 AV: Other parts of rifles, parts of combination shotguns and rifles, and fittings for rifle stocks or barrels, finished or unfinished
p.366: Added interval to NE that was not captured in original sheet or Geneva56
p.367: Long paragraph to add. (Not adding just yet) I want to see if any entries in p.367 were later captured in p. 368
p.368.a.1.2_6 S-H does not specify "other", so coding based on valuation (over $10). See excel sheet.
p.368.1.2_8 fixed entries to reflect taxation on each additional jewel. S-H does not apply further specifications based on items
p.368.a.1.2_9 Though pigeon timers are not specified, this, I think that the tax rate I coded makes sense
p.368.a.1.2_11 Similar to p.368.a.1.2_9 
p.368.a.1.2_12 Providing the same duty as additional jewels (see p.368.1.2_6)
**p.368.c_13 and .c_14: Unsure here. I have coded with the same rate.** 
p.368.c_17 **Having a lot of difficulty figuring out what to tax this as**.
p.368.c_19 removed highlight. Confident that this is correct
p.368: It appears that some Geneva1 entries belong in torquay. This is brought to Victor's attention
p.372: Cream separators: We may need new entries here for different valuations.
    - **ALSO, There are additional items that seem to be added (or invented) after S-H. These is an example to be discussed with Victor**
    - Parts of Sewing machines is difficult to tax here. Code with same rate as "Other?"

p.377: Stopping here

### Summary/Todo:

Completed 4 hours


## Tuesday, Jan. 12

### Overview

Today I will be continuing working to improve the S-H file as described above.

### S-H 

Based on conversation with Victor in comments of Excel, check over Torquay p.368.c_16...  
p.380: added entry to NE
p.382.a: and p.382.b added entries to NE
p.383.a,b: added entries to NE
p.386: p.387

p.389: The "Other" entry is difficult here. I haven't come up with a method of coding this at the moment 

   - **Discuss with Victor** 

p.394: Fixed entry for Zinc 
p.395: Added new entry to NE

p.397: Tricky, many additional entries in the rounds that come after S-H. These can potentially be coded with a uniform tax rate (45 av) but I want to be sure

   - **Discuss with Victor**

p.405: Confirmed my original entries
p.410: Added to NE
p.411: Added AV for "Other"
p.412: I think my entries make sense here

   - **Discuss** 

p.504: Added to NE
p.601: Added entry to NE

p.701: Stopping here


### Summary/Todo:

Completed 3.5 hours


## Wedneday, Jan. 13

Today I will continue working to improve the S-H file as described above.


### S-H

p.701 and 702: Added items to NE
p.706 and 710: **Tax intervals? I'd like to go over these** 
p.710: Many more descriptions of Cheese in Excel than in S-H
p.717.b: Not sure how to group "swordfish"
p.717.c: Added two new entries for "Other". **Not sure how necessary these entries are**

p.719.4: **This section should be discussed*. There are some comments in the "Extra" col for S-H. My concern is related to grouping. S-H has "Weighing with their contents not more than 15 pounds each" whereas the Torquay dezscription in excel mentions: "Herring in immediate containers containing each not over 10 pounds of herring" **

- I believe that this paragraph (and 719.xx in general) needs to be developed (i.e. paragraph numbers need to be changed, ordering, description etc..)** 

p.731.a: Added row to NE
p.720.d not sure if we should add an entry for "other"
p.727: added rows to NE
p.730: **I may have added a duplicate from Geneva. I'll look into it.** 

- added rows to NE

p.736: Added rows to NE. Cleaned up entries 
p.741: Added rows to NE


### Summary/Todo:

Completed 4 hours

## Thursday, Jan. 14

Today I will be continuing working to improve the S-H file as described above.

### S-H 

p.743, 744,747,748 749: Added rows to NE

**p.753: Hyancinth bulbs and tulip bulbs: We may want to look at this description again and make changes**
p.756: Added rows to NE
p.759: Added rows to NE
p.760: Added rows to NE
p.761: Added rows to NE
p.762: Added rows to NE
p.763: Added rows to NE
p.764: Added rows to NE
p.766: Added rows to NE
p.770: **Onion sets is a difficult entry to code.** 
p.771: Added rows to NE 
p.774,775,776: Added rows to NE
p.779: Added rows to NE
p.781: Added rows to NE

### Summary/Todo:

Completed 3 hours

## Friday, Jan. 15

### Overview

Today I will be continuing working to improve the S-H file as described above.

### S-H

p.901: Similar to bicycle example on GitHub discussion. **COME BACK**
p.901.c: Added to NE
p.904: Similar to p.901 **COME BACK**
p.909: Difficult to code "Other" here
p.911: Added to NE
p.912: Added to NE
p.914: Added to NE
p.915: Added to NE 
p.921, 923: added to NE

p.923: An interesting example where S-H offers a general description that diverges into sub-paragraphs later on.. **Come back**
p.1003, 1007: Added to NE
p.1012: This is an example of S-H having more entries than in Geneva. Added to NE but want to **COME BACK**  
p.1014: Cleaned up this section's entries
p.1016: Cleaned up entries
p.1021: Added NE and cleaned up entries
p.1023: Entry for "Jute" is coded based on the assumption that jute is a vegetable fiber.
p.1101.b: added comment. Description is slightly different in S-H. I believe this belongs in 1101.a
p.1102.a added comment regarding "provision"

p.1107, 1108, 1109: Added entries to NE. **THESE SHOULD BE REVIEWED** 
p.1110: Added to entries to NE
p.1111: Added entries to NE
p.1117.a **Review** 

### Summary/Todo:

Completed 4 hours

- I will be meeting with Victor at 2pm on Monday to discuss some of the "left over" paragraphs that I am still unsure about. I will complete the "second pass" of S-H before then.


## Saturday, Jan. 16

### Overview

My goal is to complete the second pass of S-H by Monday
Today, I'd like to reach p.1523

### S-H

p.1205: **ISSUES ARE DISCUSSED IN COMMENT SECTION** 
p.1206: Added to NE
p.1301: Although tricky, seems to be largely resolved. **DISCUSS THIS**
p.1306: Added to NE, though may need to add another entry? **DISCUSS** 
p.1404: Difficult but I believe that this section is largely resolved
p.1405: Provided section is confusing
p.1405: I'll need to come back here 
p.1406: Some additional entries may be needed  **DISCUSS LAST THREE SECTIONS**
    - Last part of 1406 is difficult to group, especially with Dillon entries
p.1410: Some entries may still need to be added. **COME BACK**

p.1503: Added to NE. Fixed some entries
    - Can't find entry for handbag
p.1504.b: Somewhat complicated. Need to check over this **COME BACK**
p.1506: **MAY NEED TO ADD MORE ENTRIES**?
p.1511: **HAVEN'T ADDED THIS PARAGRAPH YET**
p.1513: Tricky. **REVIEW**
p.1517: Might add entries...waiting on some entries from DILLON
p.1526: Similar to Sewing machine GitHub discussion. **COME BACK** 

p.1552: ENDING HERE

### Summary/Todo:

Completed 5 hours


## Monday, Jan. 18

### Overview

Today I will complete my second pass of S-H and develop notes to discuss with Victor, regarding some remaining difficulties in coding:

### S-H Notes for discussion

In this section, I will compile a list of notes for a discussion with Victor based on my experiences coding this section.

#### Todo:

- I still have to "integrate" entries from the NE sheet into "Main Data"
- I should review Victor's work on schedules 1-2

#### An overview of items to be addressed:

- After integrating items from NE to Main data, we will need to check over all the "new entries"in main data across rounds for accuracy
  - Say, for instance, a Dillon row was added that also existed in S-H, We will have to be sure that the entry is coded in both schedules
- Tax intervals: 
  - I have done my best in areas where there seemed to be a tax interval, however, I would appreciate if these can be reviewed. These sections are always commented in "extra" in red
- Paragraph redesign:
  - Similar to sewing machine example from GitHub. 
  - Also, consider Hyacinth/Tulip bulb example.  

#### Issues/list of items for review: 

The following paragraphs were mentioned in the above sections (Under "S-H") as being problematic. Some just need to be reviewed, while others are tagged with additional comments/suggestions **in bold**


p.362 
p.368
p.372
p.389
p.397
p.412

p.706 **TAX INTERVALS** 
p.717 **How necessary are certain entries** 
p.719 **We might need to redevelop these paragraphs?** 
p.770
p.901,p.904, p.1523 Similar issue to "Sewing machine" example provided on GitHub
p.909 **Issues with coding "other"**

p.923
p.1012
p.1107-1109
p.1117
p.1205
p.1301
p.1306
p.1403-1406
p.1410
p.1504
p.1506
p.1511
p.1513


### Meeting with Victor

- Keywords for "not specified" etc..
  - I will use NS to indicate "Not specified" and NSV for "Not specified based on value". I should develop a key here.
- Potential for a folder in Onedrive  for "how we've coded"?


#### Summary/Todo: 

- Changing Units
- **Clean columns/notes extra**
- code remaining blank enteries (S-H)
- **Change color and font**
- Check that all items are represented in S-H


Completed 3 hours


## Tuesday, Jan. 19

### Overview

I started today by fixing some entries with Victor on our Main Data sheet. I want to go over p.308. I'm confused by what seems to be a tax boundary here. This will be addressed after I hear back from Victor
Otherwise, Today I will be integrating entries from NE to Main data.

I also went through schedules 1 and 2, which were previously coded by Victor, to improve accuracy and add any additional entries (if necessary)

### Misc Notes (I will mention these in an upcoming report):

- Dealing with Geneva47 paragraph 308: Sheets of iron or steel, common or black, of whatever dimensions, and skelp iron or steel; all the foregoing valued per pound: Over 1.75 cents but not over 3 cents, and in thickness: Under 0.038 but not under 0.022 inch
- p.68`

### Summary/Todo:

Tomorrow, I will develop a report identifying remaining issues in S-H and Geneva. This report will be developed as a seperate .md file

### Wednesday, Jan. 20

Completed 8 hours

### Thursday, Jan 21

Completed 8 hours

### Friday, Jan 22

Completed 4 hours

### Saturday, Jan 23:

Completed 2 hours



## Monday, Jan 25: 

### Overview: 

Today, I addressed the problematic paragraphs in [issue #61](https://github.com/kbuzard-SU/gradualism/issues/61)
At this point, these seem to be largely resolved. I will return to these and review my answers tomorrow. 


Completed 3 hours










