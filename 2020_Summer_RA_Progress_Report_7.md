
title: "RA_Progress_Report_7"

author: "Zeyuan_Xiong (Victor)"

date: "2020/7/21"
## Summary of fill-in work of Annecy and Geneva data

#### About the data: 

1. First of all, I believe (with 95% confidential interval) that the two file sources (name "Geneva 1" and "Annecy" in the folder) have some complementary relations: as you go through the results in the excel, you will find that if you set the Torquay data paragraphs as benchmark, there are a lot of missing sub-paragraphs in Geneva that exist in the Annecy data and vice versa, for quick check, see example of paragraph 1531 at around row 2147 in the excel file. This kind of completementary relations appear quite frequently across the whole agreements (an easy way to see more, just follow the Annecy data).

2. In general, by rough estimation, Geneva and Annecy data TOGETHER cover around 90% of the Torquay paragraphs and within this, the proportion of Geneva to Annecy is around 7:1 or even higher. This is one of the reasons that the fill-in work of Geneva takes much longer than Annecy.  

3. Considering this fact, I am doubtful about whether these two files (name "Geneva 1" and "Annecy" in the folder) are indeed ONE agreement. Another "evidence" that supports my doubt is that these two files look very similar in format and both assign year "1950" in every page, which actually contradicts with the timeline of Geneva round which is 1947. Or there may be some historical facts that I don't know about these two rounds, maybe the Annecy round was indeed to be designed as a supplement for the Geneva agreements.

4. The main reason I bring this up is that it directly influences the process of "Gradulism", the "Geneva->Annecy->Torquay" does not make sense, but the "(Geneva + Annecy -> Torquay)". You could see this big picture by special paste option in EXCEL: copy the three columns of Geneva and paste them in the Annecy column and select to pass the empty cell, then you can see it is very close to the Torquay data.

5. Given that the Geneva data takes most of the proportion, if without further explanation, the pattern I will discuss in the following sections are from Geneva only (in many cases, the Annecy data is too "dispersed" to have a pattern).

#### During filling-in:

1. If we set Torquay data as benchmark. Nearly all the paragraphs in Annecy and Geneva (note: not "sub-paragraphs") are covered in the Torquay, very few exceptions are like paragraph 1507 "Bristles, sorted, bunched, or prepared --- 3 cents per lb" is only in Geneva data but not Torquay; and  paragraph 1506 "Brooms, made of broom corn, straw, wooden fiber, or twigs --- 12.5% ad val". 

2. However the Geneva (plus Annecy as supplement) and Torquay do vary a lot in the "sub-paragraphs". The most frequent case is that there are sub-paragraphs such as "... value over 8 cents ...", "... width over 10 inches" in Torquay but not in Geneva. For quick check you may check paragraph 923, row 9 extra, paragraph 909, 910, 911a, row 1518 (for further examples, follow the extra column). I think these items should be paid more attention to. Because the classification itself, to some extent, represents a process of gradualism since the tax rate must have diverged (or converged).  In practice, I temporarily left those columns blank and wrote a note in the column "extra", but I suggest that we should fill in those column with the uniform tax rate of the "unclassified" items, because it makes not sense to put zero in them in the next stage of cleaning data. 

3. Similar cases, though very few, exist in Torquay but not Geneva, that is there are sub-classifications in Geneva but not in Torquay, in this case, I suggest we extend the Torquay rows to include them.

4. Some of the tax consist of a specific tax and an upper bound or lower or both ad valorem tax rate and vice versa. We need to decide how to deal with those taxes. You can find them in cloumn "extra". I believe similar cases also happen Torquay's file but I am not sure how Ross dealt with it, didn't see any record, maybe I miss something.

5. A good example of the above case will be paragraph 1301, check row 1746. All Torquay, Geneva, Annecy use different classification, and different lower bounds for specific tax. I used extrapolation in this part to fulfill the blank of classified sub-paragraphs by using the tax rate of unclassified sub-paragraphs (see the repeated tax rate). To be more specific, for example Geneva data has no classification of the value (not mentioned in Geneva file), then I apply the same tax rate for "singles" for both under and above 80 cents. Similar actions will be taken for other paragraphs after your approval. 

6. About the unit: cents and dollar. For now, I directly use the units shown in the pdf file. However this will raise two problems: (1) within agreements, there are products which are valued in cents and others in dollars, this may happen in one products, see paragraph 1532(a), row 2156, but this only happens in one or two products; (2) across agreements, comparing Geneva and Torquay, there could be different units used in different agreements on same product, check paragraph 1541(b), row 2230, this is more important since it creates outliers if we only look at the numbers. For this two problems, I plan to identify them manually and use a uniform unit for this situations. I don't think it is necessary to transfer all the dollars units into cents (maybe we should do that?), but for now I will first identify them and use the unit of nearest product to unify the units.

7. Some more about the unit: there all many types of irregular units such as: "cents per 2000 lb" or  "cents per lb of total sugar", it is hard to generalize them all in one coding system (reprent them all with numbers). So I suggest maybe we should just use the words instead of numbers. In practice, I keep the same unit as Torquay (except the ones in point 5).

8. There are some paragraphs are either very complicated or the descriptions are not matched in two agreements (paragraphs painted blue), I will double check them.

#### Free list items
1. First of all, the free list products cover a lot of categories from schedule 1-15, so there aren't much information we can derive from the number of the paragraph it has and thus hard to locate them.

2. Also the pattern of complimentary relation between Geneva and Annecy exists in the Free List part as well. If we combine the free list of Annecy and Geneva data together (call it GA), then most of the products in GA are also in Torquay, however there are some unique items in both of the agreements that are not in the other one. I used keyword search to identify some (the first 100 products start with 16**) unique free list products in GA (those not in Torquay) in the Torquay schedule (1-15), but I cannot find them, this may imply that they are not removed from (or to) the free list to (from) other schedules. But if this is true, where are they from and where are they now?

3. I haven't figured out this part, I will pay more attention to them in the following check.

4. And yes they are the same product as long as the paragraph numbers are the same in all the agreements.

#### About painted paragraphs

I haven't completely figured out why Ross painted those paragraphs, maybe it is the same reason that I painted some paragraphs blue, that is there are some difference in how the descriptions between two agreements are organized. I will look them up in the second round check. But in general most products look fine so I don't think this should be a big problem.
