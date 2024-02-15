item_df<-data.frame(
  itemCode=c(1001,1002,1003,1004,1005),
  itemCategory = c("Electronics","Desktop Supplies", "Office Supplies", "USB","CD Drive"),
  itemPrice=c(700,300,350,400,800)
)
subset_price<-subset(item_df,itemPrice>=350)
print("items with price greater than or equal to 350:")
print(subset_price)
subset_category<-subset(item_df,itemCategory%in%c("Office Supplies","Desktop Supplies"))
print("Items with category'Office Supplies' or 'Desktop Supplies':")
print(subset_category)

item_details<-data.frame(
  itemCode=c(1001,1002,1003,1004,1005),
  itemQtyunHand = c(10,20,15,25,12),
  itemReorderLvl=c(5,10,7,4,6)
)
merged_df<-merge(item_df,item_details,by="itemCode")
print("Merged data frame:")
print(merged_df)