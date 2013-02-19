.class Lcom/htc/app/FilePickerCore$MoreExpanedObject$FolderFileComparator;
.super Ljava/lang/Object;
.source "FilePickerCore.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerCore$MoreExpanedObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderFileComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/app/FolderItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final SORT_BY_DATE:I

.field private final SORT_BY_NAME:I

.field private final SORT_ORDER_ASCENDING:I

.field private final SORT_ORDER_DESCENDING:I

.field final synthetic this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1726
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$FolderFileComparator;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1727
    iput v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$FolderFileComparator;->SORT_BY_NAME:I

    .line 1728
    iput v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$FolderFileComparator;->SORT_BY_DATE:I

    .line 1729
    iput v0, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$FolderFileComparator;->SORT_ORDER_ASCENDING:I

    .line 1730
    iput v1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$FolderFileComparator;->SORT_ORDER_DESCENDING:I

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/app/FolderItemInfo;Lcom/htc/app/FolderItemInfo;)I
    .locals 12
    .parameter "item1"
    .parameter "item2"

    .prologue
    .line 1738
    invoke-virtual {p1}, Lcom/htc/app/FolderItemInfo;->isFolder()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v3, 0x1

    .line 1739
    .local v3, item1IsFolder:I
    :goto_0
    invoke-virtual {p2}, Lcom/htc/app/FolderItemInfo;->isFolder()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v7, 0x1

    .line 1740
    .local v7, item2IsFolder:I
    :goto_1
    sub-int v0, v3, v7

    .line 1742
    .local v0, folderWeight:I
    iget-object v10, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$FolderFileComparator;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v10, v10, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSortType:I
    invoke-static {v10}, Lcom/htc/app/FilePickerCore;->access$3700(Lcom/htc/app/FilePickerCore;)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 1781
    :cond_0
    if-ge v3, v7, :cond_c

    .line 1782
    const/4 v9, 0x1

    .line 1787
    :cond_1
    :goto_2
    return v9

    .line 1738
    .end local v0           #folderWeight:I
    .end local v3           #item1IsFolder:I
    .end local v7           #item2IsFolder:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1739
    .restart local v3       #item1IsFolder:I
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 1744
    .restart local v0       #folderWeight:I
    .restart local v7       #item2IsFolder:I
    :pswitch_0
    invoke-virtual {p1}, Lcom/htc/app/FolderItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1745
    .local v4, item1Name:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/htc/app/FolderItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 1746
    .local v8, item2Name:Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    .line 1748
    .local v9, result:I
    if-eqz v0, :cond_4

    .line 1749
    add-int v10, v9, v0

    if-gez v10, :cond_7

    const/4 v9, -0x1

    .line 1751
    :cond_4
    :goto_3
    iget-object v10, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$FolderFileComparator;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v10, v10, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSortOrder:I
    invoke-static {v10}, Lcom/htc/app/FilePickerCore;->access$3600(Lcom/htc/app/FilePickerCore;)I

    move-result v10

    if-nez v10, :cond_8

    .line 1753
    mul-int/lit8 v9, v9, 0x1

    .line 1757
    :cond_5
    :goto_4
    if-eq v3, v7, :cond_1

    .line 1761
    .end local v4           #item1Name:Ljava/lang/String;
    .end local v8           #item2Name:Ljava/lang/String;
    .end local v9           #result:I
    :pswitch_1
    invoke-virtual {p1}, Lcom/htc/app/FolderItemInfo;->lastModified()J

    move-result-wide v1

    .line 1762
    .local v1, item1Date:J
    invoke-virtual {p2}, Lcom/htc/app/FolderItemInfo;->lastModified()J

    move-result-wide v5

    .line 1764
    .local v5, item2Date:J
    cmp-long v10, v1, v5

    if-gez v10, :cond_9

    .line 1765
    const/4 v9, -0x1

    .line 1771
    .restart local v9       #result:I
    :goto_5
    iget-object v10, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$FolderFileComparator;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v10, v10, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSortOrder:I
    invoke-static {v10}, Lcom/htc/app/FilePickerCore;->access$3600(Lcom/htc/app/FilePickerCore;)I

    move-result v10

    if-nez v10, :cond_b

    .line 1772
    mul-int/lit8 v9, v9, 0x1

    .line 1776
    :cond_6
    :goto_6
    if-ne v3, v7, :cond_0

    goto :goto_2

    .line 1749
    .end local v1           #item1Date:J
    .end local v5           #item2Date:J
    .restart local v4       #item1Name:Ljava/lang/String;
    .restart local v8       #item2Name:Ljava/lang/String;
    :cond_7
    const/4 v9, 0x1

    goto :goto_3

    .line 1754
    :cond_8
    iget-object v10, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$FolderFileComparator;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v10, v10, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSortOrder:I
    invoke-static {v10}, Lcom/htc/app/FilePickerCore;->access$3600(Lcom/htc/app/FilePickerCore;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 1755
    mul-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 1766
    .end local v4           #item1Name:Ljava/lang/String;
    .end local v8           #item2Name:Ljava/lang/String;
    .end local v9           #result:I
    .restart local v1       #item1Date:J
    .restart local v5       #item2Date:J
    :cond_9
    cmp-long v10, v1, v5

    if-lez v10, :cond_a

    .line 1767
    const/4 v9, 0x1

    .restart local v9       #result:I
    goto :goto_5

    .line 1769
    .end local v9           #result:I
    :cond_a
    const/4 v9, 0x0

    .restart local v9       #result:I
    goto :goto_5

    .line 1773
    :cond_b
    iget-object v10, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$FolderFileComparator;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v10, v10, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSortOrder:I
    invoke-static {v10}, Lcom/htc/app/FilePickerCore;->access$3600(Lcom/htc/app/FilePickerCore;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 1774
    mul-int/lit8 v9, v9, -0x1

    goto :goto_6

    .line 1783
    .end local v1           #item1Date:J
    .end local v5           #item2Date:J
    .end local v9           #result:I
    :cond_c
    if-le v3, v7, :cond_d

    .line 1784
    const/4 v9, -0x1

    goto :goto_2

    .line 1787
    :cond_d
    const/4 v9, 0x0

    goto :goto_2

    .line 1742
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1726
    check-cast p1, Lcom/htc/app/FolderItemInfo;

    .end local p1
    check-cast p2, Lcom/htc/app/FolderItemInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/app/FilePickerCore$MoreExpanedObject$FolderFileComparator;->compare(Lcom/htc/app/FolderItemInfo;Lcom/htc/app/FolderItemInfo;)I

    move-result v0

    return v0
.end method
