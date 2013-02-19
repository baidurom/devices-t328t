.class public Lcom/htc/painting/penmenu/history/HistoryQueue;
.super Ljava/lang/Object;
.source "HistoryQueue.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HistoryQueue"

.field private static sSeqNoCount:I


# instance fields
.field private mPenArray:[Lcom/htc/painting/penmenu/Pen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/htc/painting/penmenu/history/HistoryQueue;->sSeqNoCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "capacity"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-array v0, p1, [Lcom/htc/painting/penmenu/Pen;

    iput-object v0, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/htc/painting/penmenu/history/HistoryQueue;->sSeqNoCount:I

    .line 39
    return-void
.end method

.method public static getNewHistorySN()I
    .locals 2

    .prologue
    .line 68
    sget v0, Lcom/htc/painting/penmenu/history/HistoryQueue;->sSeqNoCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/htc/painting/penmenu/history/HistoryQueue;->sSeqNoCount:I

    return v0
.end method


# virtual methods
.method add(Lcom/htc/painting/penmenu/Pen;)I
    .locals 5
    .parameter "pen"

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    const-string v2, "HistoryQueue"

    const-string v3, "add - pen is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v1, -0x1

    .line 152
    :goto_0
    return v1

    .line 125
    :cond_0
    invoke-virtual {p1}, Lcom/htc/painting/penmenu/Pen;->isUsed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    invoke-virtual {p1}, Lcom/htc/painting/penmenu/Pen;->refreshHistorySeqNo()I

    .line 131
    :cond_1
    invoke-virtual {p1}, Lcom/htc/painting/penmenu/Pen;->getHistorySeqNo()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/painting/penmenu/history/HistoryQueue;->findOrder(I)I

    move-result v1

    .line 132
    .local v1, index:I
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 134
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 137
    :cond_2
    invoke-virtual {p0}, Lcom/htc/painting/penmenu/history/HistoryQueue;->size()I

    move-result v2

    iget-object v3, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    array-length v3, v3

    if-ne v2, v3, :cond_3

    .line 139
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 140
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    iget-object v3, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    .end local v0           #i:I
    :cond_3
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0       #i:I
    :goto_2
    if-le v0, v1, :cond_4

    .line 146
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    iget-object v3, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    .line 145
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 151
    :cond_4
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    aput-object p1, v2, v1

    goto :goto_0
.end method

.method findOrder(I)I
    .locals 4
    .parameter "seqNo"

    .prologue
    .line 203
    const/4 v1, -0x1

    .line 204
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 205
    iget-object v3, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    aget-object v2, v3, v0

    .line 206
    .local v2, obj:Lcom/htc/painting/penmenu/Pen;
    if-nez v2, :cond_2

    .line 208
    move v1, v0

    .line 218
    .end local v2           #obj:Lcom/htc/painting/penmenu/Pen;
    :cond_0
    :goto_1
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 221
    iget-object v3, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    array-length v1, v3

    .line 223
    :cond_1
    return v1

    .line 212
    .restart local v2       #obj:Lcom/htc/painting/penmenu/Pen;
    :cond_2
    invoke-virtual {v2}, Lcom/htc/painting/penmenu/Pen;->getHistorySeqNo()I

    move-result v3

    if-le v3, p1, :cond_3

    .line 214
    move v1, v0

    .line 215
    goto :goto_1

    .line 204
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method findPen(Lcom/htc/painting/penmenu/Pen;)I
    .locals 3
    .parameter "penToFind"

    .prologue
    .line 162
    const/4 v1, -0x1

    .line 164
    .local v1, ret:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 177
    :cond_0
    :goto_1
    return v1

    .line 170
    :cond_1
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/htc/painting/penmenu/Pen;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    move v1, v0

    .line 173
    goto :goto_1

    .line 164
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getPens()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/Pen;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v2, ret:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/Pen;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 49
    iget-object v3, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    .line 55
    :cond_0
    return-object v2

    .line 52
    :cond_1
    iget-object v3, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    aget-object v1, v3, v0

    .line 53
    .local v1, pen:Lcom/htc/painting/penmenu/Pen;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method peek(I)Lcom/htc/painting/penmenu/Pen;
    .locals 4
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 78
    iget-object v1, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    if-nez v1, :cond_0

    .line 79
    const-string v1, "HistoryQueue"

    const-string v2, "peek - mPenArray is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    return-object v0

    .line 82
    :cond_0
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    array-length v1, v1

    if-lt p1, v1, :cond_2

    .line 83
    :cond_1
    const-string v1, "HistoryQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "peek - index out of bound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method remove(I)Lcom/htc/painting/penmenu/Pen;
    .locals 6
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v3, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    if-nez v3, :cond_0

    .line 97
    const-string v3, "HistoryQueue"

    const-string v4, "remove - mPenArray is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 111
    :goto_0
    return-object v1

    .line 100
    :cond_0
    if-ltz p1, :cond_1

    iget-object v3, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    array-length v3, v3

    if-lt p1, v3, :cond_2

    .line 101
    :cond_1
    const-string v3, "HistoryQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove - index out of bound: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 102
    goto :goto_0

    .line 104
    :cond_2
    iget-object v3, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    aget-object v1, v3, p1

    .line 105
    .local v1, ret:Lcom/htc/painting/penmenu/Pen;
    const/4 v0, 0x0

    .line 107
    .local v0, i:I
    move v0, p1

    :goto_1
    iget-object v3, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 108
    iget-object v3, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    iget-object v4, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    add-int/lit8 v5, v0, 0x1

    aget-object v4, v4, v5

    aput-object v4, v3, v0

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    :cond_3
    iget-object v3, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    aput-object v2, v3, v0

    goto :goto_0
.end method

.method size()I
    .locals 2

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, count:I
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/htc/painting/penmenu/history/HistoryQueue;->mPenArray:[Lcom/htc/painting/penmenu/Pen;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 192
    :cond_0
    return v0

    .line 187
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method update(ILcom/htc/painting/penmenu/Pen;)I
    .locals 3
    .parameter "selectedIndex"
    .parameter "currentPen"

    .prologue
    const/4 v2, 0x1

    .line 235
    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu/history/HistoryQueue;->remove(I)Lcom/htc/painting/penmenu/Pen;

    .line 236
    const/4 v0, -0x1

    .line 238
    .local v0, ret:I
    invoke-virtual {p2}, Lcom/htc/painting/penmenu/Pen;->isUsed()Z

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/htc/painting/penmenu/Pen;->isFromHistory()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 240
    :cond_0
    invoke-virtual {p0, p2}, Lcom/htc/painting/penmenu/history/HistoryQueue;->add(Lcom/htc/painting/penmenu/Pen;)I

    move-result v0

    .line 243
    :cond_1
    return v0
.end method
