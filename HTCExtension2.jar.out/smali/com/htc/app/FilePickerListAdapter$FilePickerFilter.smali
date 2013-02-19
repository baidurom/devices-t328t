.class Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;
.super Landroid/widget/Filter;
.source "FilePickerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilePickerFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerListAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/app/FilePickerListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/app/FilePickerListAdapter;Lcom/htc/app/FilePickerListAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 521
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;-><init>(Lcom/htc/app/FilePickerListAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 13
    .parameter "prefix"

    .prologue
    .line 531
    new-instance v7, Landroid/widget/Filter$FilterResults;

    invoke-direct {v7}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 532
    .local v7, results:Landroid/widget/Filter$FilterResults;
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;
    invoke-static {v11}, Lcom/htc/app/FilePickerListAdapter;->access$400(Lcom/htc/app/FilePickerListAdapter;)Ljava/util/List;

    move-result-object v11

    if-nez v11, :cond_0

    .line 533
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mAdapterItems:[Lcom/htc/app/ItemInfo;
    invoke-static {v11}, Lcom/htc/app/FilePickerListAdapter;->access$500(Lcom/htc/app/FilePickerListAdapter;)[Lcom/htc/app/ItemInfo;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 534
    .local v6, resultList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v11}, Lcom/htc/app/FilePickerListAdapter;->access$600(Lcom/htc/app/FilePickerListAdapter;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 535
    :try_start_0
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #setter for: Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;
    invoke-static {v11, v6}, Lcom/htc/app/FilePickerListAdapter;->access$402(Lcom/htc/app/FilePickerListAdapter;Ljava/util/List;)Ljava/util/List;

    .line 536
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    .end local v6           #resultList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "GarbageMessage_LongVacation"

    if-ne p1, v11, :cond_2

    .line 542
    :cond_1
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v11}, Lcom/htc/app/FilePickerListAdapter;->access$600(Lcom/htc/app/FilePickerListAdapter;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 543
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;
    invoke-static {v11}, Lcom/htc/app/FilePickerListAdapter;->access$400(Lcom/htc/app/FilePickerListAdapter;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 544
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v11, v3}, Lcom/htc/app/FilePickerListAdapter;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v7, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 545
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    iput v11, v7, Landroid/widget/Filter$FilterResults;->count:I

    .line 546
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 583
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    :goto_0
    return-object v7

    .line 536
    .restart local v6       #resultList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    :catchall_0
    move-exception v11

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 546
    .end local v6           #resultList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    :catchall_1
    move-exception v11

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v11

    .line 549
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 552
    .local v5, prefixString:Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mOriginalValues:Ljava/util/List;
    invoke-static {v11}, Lcom/htc/app/FilePickerListAdapter;->access$400(Lcom/htc/app/FilePickerListAdapter;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 553
    .local v10, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 556
    .local v0, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 558
    .local v4, newValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 559
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/app/ItemInfo;

    .line 560
    .local v8, value:Lcom/htc/app/ItemInfo;
    invoke-virtual {v8}, Lcom/htc/app/ItemInfo;->isFolder()Z

    move-result v2

    .line 562
    .local v2, isFolder:Z
    if-eqz v2, :cond_4

    .line 563
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 565
    :cond_4
    invoke-virtual {v8}, Lcom/htc/app/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 566
    .local v9, valueText:Ljava/lang/String;
    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 567
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 574
    .end local v2           #isFolder:Z
    .end local v8           #value:Lcom/htc/app/ItemInfo;
    .end local v9           #valueText:Ljava/lang/String;
    :cond_5
    iget-object v11, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v11, v4}, Lcom/htc/app/FilePickerListAdapter;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v7, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 575
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    iput v11, v7, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 597
    const-string v0, "GarbageMessage_LongVacation"

    if-eq p1, v0, :cond_0

    .line 598
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    #setter for: Lcom/htc/app/FilePickerListAdapter;->mSearchResultList:Ljava/util/List;
    invoke-static {v1, v0}, Lcom/htc/app/FilePickerListAdapter;->access$702(Lcom/htc/app/FilePickerListAdapter;Ljava/util/List;)Ljava/util/List;

    .line 599
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$FilePickerFilter;->this$0:Lcom/htc/app/FilePickerListAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerListAdapter;->NotifyListChanged(I)V

    .line 601
    :cond_0
    return-void
.end method
