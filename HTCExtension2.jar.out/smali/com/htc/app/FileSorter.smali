.class Lcom/htc/app/FileSorter;
.super Ljava/lang/Object;
.source "FileSorter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/app/ItemInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final SORT_BY_DATE:I = 0x1

.field static final SORT_BY_NAME:I = 0x0

.field static final SORT_BY_TYPE:I = 0x2

.field static final SORT_ORDER_ASCENDING:I = 0x0

.field static final SORT_ORDER_DESCENDING:I = 0x1


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mSortBy:I

.field private mSortOrder:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/FileSorter;->DEBUG:Z

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FileSorter;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/app/ItemInfo;Lcom/htc/app/ItemInfo;)I
    .locals 9
    .parameter "item1"
    .parameter "item2"

    .prologue
    const/4 v8, 0x1

    .line 53
    iget v7, p0, Lcom/htc/app/FileSorter;->mSortBy:I

    packed-switch v7, :pswitch_data_0

    .line 86
    const/4 v6, 0x0

    :cond_0
    :goto_0
    return v6

    .line 55
    :pswitch_0
    invoke-virtual {p1}, Lcom/htc/app/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, item1Name:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/htc/app/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, item2Name:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    .line 60
    .local v6, result:I
    iget v7, p0, Lcom/htc/app/FileSorter;->mSortOrder:I

    if-eqz v7, :cond_0

    .line 62
    iget v7, p0, Lcom/htc/app/FileSorter;->mSortOrder:I

    if-ne v7, v8, :cond_0

    .line 63
    mul-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 68
    .end local v2           #item1Name:Ljava/lang/String;
    .end local v5           #item2Name:Ljava/lang/String;
    .end local v6           #result:I
    :pswitch_1
    invoke-virtual {p1}, Lcom/htc/app/ItemInfo;->lastModified()J

    move-result-wide v0

    .line 69
    .local v0, item1Date:J
    invoke-virtual {p2}, Lcom/htc/app/ItemInfo;->lastModified()J

    move-result-wide v3

    .line 71
    .local v3, item2Date:J
    cmp-long v7, v0, v3

    if-gez v7, :cond_1

    .line 72
    const/4 v6, -0x1

    .line 78
    .restart local v6       #result:I
    :goto_1
    iget v7, p0, Lcom/htc/app/FileSorter;->mSortOrder:I

    if-eqz v7, :cond_0

    .line 80
    iget v7, p0, Lcom/htc/app/FileSorter;->mSortOrder:I

    if-ne v7, v8, :cond_0

    .line 81
    mul-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 73
    .end local v6           #result:I
    :cond_1
    cmp-long v7, v0, v3

    if-lez v7, :cond_2

    .line 74
    const/4 v6, 0x1

    .restart local v6       #result:I
    goto :goto_1

    .line 76
    .end local v6           #result:I
    :cond_2
    const/4 v6, 0x0

    .restart local v6       #result:I
    goto :goto_1

    .line 53
    nop

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
    .line 12
    check-cast p1, Lcom/htc/app/ItemInfo;

    .end local p1
    check-cast p2, Lcom/htc/app/ItemInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/app/FileSorter;->compare(Lcom/htc/app/ItemInfo;Lcom/htc/app/ItemInfo;)I

    move-result v0

    return v0
.end method

.method public setSortBy(I)V
    .locals 0
    .parameter "sortby"

    .prologue
    .line 104
    iput p1, p0, Lcom/htc/app/FileSorter;->mSortBy:I

    .line 105
    return-void
.end method

.method public setSortOrder(I)V
    .locals 0
    .parameter "order"

    .prologue
    .line 95
    iput p1, p0, Lcom/htc/app/FileSorter;->mSortOrder:I

    .line 96
    return-void
.end method

.method public sort(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, oldList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/ItemInfo;>;"
    const/4 v1, 0x0

    new-array v0, v1, [Lcom/htc/app/ItemInfo;

    .line 41
    .local v0, array:[Lcom/htc/app/ItemInfo;
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0           #array:[Lcom/htc/app/ItemInfo;
    check-cast v0, [Lcom/htc/app/ItemInfo;

    .line 42
    .restart local v0       #array:[Lcom/htc/app/ItemInfo;
    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 43
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
