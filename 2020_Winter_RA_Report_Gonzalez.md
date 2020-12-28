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


## Tuesday, Dec. 8th.

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
  - [x]  Check out other Schedules to get a better feel (Torquay)
    
## Tuesday, Dec. 9.

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

Complete .5 hours.
- [x] Add notes to G:drive file. 
- [ ] Discuss notes/get feedback 


## Tuesday, Dec. 15

### Relevant Notes:

- Still a little confused on the placement of AV in rows 386 and 388. I think that if I understand this, I can resolve a lot of other similar questions above. 



