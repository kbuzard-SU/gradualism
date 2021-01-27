# Development of Descriptions

## January 27, 2021

In this file, I will describe the original structure of descriptions for GATT tariff items and will explain the need for developing these descriptions to capture changes across negotiation rounds. Finally, I will discuss the specific instances where I developed descriptions to capture these changes. . 

### Original Description Structure and Changes

The data collection process of this project is based heavily on the GATT Torquay round, such that the original "Description" column of our "Main Data" sheet comes directly from the description of products in Torquay. The process of this is outlined in [Ross's work](https://github.com/kbuzard-SU/gradualism/blob/master/torquay/Coding%20Torquay.Rmd). However, the actual descriptions of items varies across rounds. 

An example, p.219:

- The original description from Torquay:

![Screen Shot 2021-01-27 at 10.49.26 AM](/Users/matthew/Library/Application Support/typora-user-images/Screen Shot 2021-01-27 at 10.49.26 AM.png)

- The description from Smoot-Hawley: 

![Screen Shot 2021-01-27 at 10.51.12 AM](/Users/matthew/Library/Application Support/typora-user-images/Screen Shot 2021-01-27 at 10.51.12 AM.png)



**S-H p.219 Simplified:** 

Crown, cylinder, and sheet glass, by whatever process made, and for whatever process used: 

- Not over 150 square inches: **1.875**

- Over 150 but not over 384: **2.0625**

- Over 384 but not over 720: **2.4375**

- Over 720 but not over 864: **2.625**

- Over 864 but under 1200: **3**

- Over 1200 but not over 2400: **3.375**
- Oer 2400: **3.75**



Given these differences descriptions, it is necessary to add new lines and edit the existing Torquay description entries to be consistent with S-H, then, we must adjust Torquay rates for these added lines. Specifically, we

- Not over 150 square inches: **.8**

- Over 150 but not over 384: **.8**

- Over 384 but not over 720: **1**

- Over 720 but not over 864: **1**

- Over 864 but under 1200: **1.3**

- Over 1200 but not over 2400: **1.3**
- Over 2400: **1.6**

Here we see that that these tax boundaries on our item description "converge" in Torquay (I.e. Not over 150 and Over 150 but under 384 actually reflect "Under 384"). This is the main idea of how I've developed problematic paragraphs. I should note that differences can occur between our original Torquay description and any other rounds (Not just S-H), though the method of updating the desriptions remains largely the same.



### Paragraphs that Required Updating:

p.219: (as above)

p.304: See [GitHub #61](https://github.com/kbuzard-SU/gradualism/issues/61)

p.345: S-H originally has 2 entries for saddlery and then for riding bridle hardware. These entries "converge" in Geneva1 (Where the description groups both saddlery and riding bridle hardware together) . To capture the initial difference in the S-H description, I added lines.

p.358: Changed descriptions for differences in S-H vs Torquay (similar to p.219 case)

p.701: Changed descriptions for entries based on cattle weights to accommodate changes in tax boundary from S-H to Geneva1

p.719.4: See [GitHub #61](https://github.com/kbuzard-SU/gradualism/issues/61)

**p.721.d**

p.901.a: Added row and changed description because initially S-H describes rates for over/under 90. Then Geneva1 describes rates for over/under 60

p.901.b: Same comment as 901.a

p.904.a: Added row and changed description of boundary because S-H first describes rates for over/under 90, but Geneva bases rates on over/under 80 

p.1012: Split into two entries to account for changing in grouping across schedules

p.1105.a.b: Split a mungo and wool rags into two entries, though these are later grouped in Geneva1

p.1107: S-H originally has tax boundaries, and does not differentiate between Angora/Rabbit and other. To deal with this, I added lines for tax boundaries, and noted that these entries "converge" later on 

p.1108-1109:  See [GitHub #61](https://github.com/kbuzard-SU/gradualism/issues/61)

p. 1110: Changed description slightly. S-H, wholly cut/uncut is separated from partly cut. This converges in Geneva1

p.1111: Deleted row from torquay description. 3 rows that specify value remain. These entries are originally from S-H. Yet, they converge in Geneva1 ("regardless of value") is stated, so uniform tax is applied thereafter

p.1117.a: Changed descriptions here, Note items converge in Geneva1, then again in Torquay and thereafter

p.1119: TBD

p.1306: Edited description from Geneva1 (Where jacquard and not jacquard grouped together). I do this because these two entries were separated in S-H

p.1307: Same note as p.1306

p.1529.c: Changed description of "whether or not containing elastic fabric" in first entry to accomodate the difference in S-H. Then noted that these items converge (are grouped together) in Geneva1