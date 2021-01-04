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



# Progress Report 3 (12/19/20 - ...)

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
- I need to know the specifics of how GENEVA1 was coded. Current understanding is that Torquay was digitized by Ross (available in repo). However, not sure if there is a corresponding digitiztion file for Geneva? 
    - These "additional" entries match Torquay, But not H-S

#### Summary/Todo:
Completed 3 hours.

[x] Meeting tomorrow
[x] Identify the original coding/digitalization process for Geneva

## Saturday, Dec. 19

"p." means paragraph hereafter, **not page**

### Overview

- Resolve PR comments
- Making sure that updated "Onedrive" File (Which now will be the main "working" file) is consistent with changes from previous reports
- Review some of Victor's "Tax Boundaries" in red
- Continue working through Geneva


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

- p.202 
    - Seems accurate. Though I am unsure above that 30 AV in K325
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

- Insert lines from "'New' Entries" sheet to "Main Data"
- Check accuracy entire Geneva1 
- Compare all of Hardcopy vs PDF (Geneva1)
- Begin Smoot-Hawley

## Monday, Dec. 28

### Overview

- Complete 'Todo' tasks defined on 12/23

### Relevant Notes:

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

- Continue with accuracy check
- Begin Smooth Hawley

## Tuesday, Dec. 29

### Overview

- Continue accuracy check for Geneva1

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
- **p.1410 added comment regarding values on section.
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

**(mostly) Completed Geneva**


### Beginning Smoot-Hawley

### Misc

- Page 149 missing in Geneva PDF?

### Summary/Todo:

Complted 3.5 hours


## Thursday, Dec. 31

### Overview:

- Begin Smoot-Hawley
    - Most comments are included in "Extra" category for HS


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


## Monday, Jan. 4


