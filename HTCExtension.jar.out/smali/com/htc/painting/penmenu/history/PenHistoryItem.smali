.class public Lcom/htc/painting/penmenu/history/PenHistoryItem;
.super Ljava/lang/Object;
.source "PenHistoryItem.java"


# instance fields
.field public mPen:Lcom/htc/painting/penmenu/Pen;


# direct methods
.method public constructor <init>(Lcom/htc/painting/penmenu/Pen;)V
    .locals 0
    .parameter "pen"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/htc/painting/penmenu/history/PenHistoryItem;->mPen:Lcom/htc/painting/penmenu/Pen;

    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    if-ne p0, p1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v1

    .line 42
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 45
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 46
    check-cast v0, Lcom/htc/painting/penmenu/history/PenHistoryItem;

    .line 47
    .local v0, other:Lcom/htc/painting/penmenu/history/PenHistoryItem;
    iget-object v3, p0, Lcom/htc/painting/penmenu/history/PenHistoryItem;->mPen:Lcom/htc/painting/penmenu/Pen;

    if-nez v3, :cond_4

    .line 48
    iget-object v3, v0, Lcom/htc/painting/penmenu/history/PenHistoryItem;->mPen:Lcom/htc/painting/penmenu/Pen;

    if-eqz v3, :cond_0

    move v1, v2

    .line 49
    goto :goto_0

    .line 50
    :cond_4
    iget-object v3, p0, Lcom/htc/painting/penmenu/history/PenHistoryItem;->mPen:Lcom/htc/painting/penmenu/Pen;

    iget-object v4, v0, Lcom/htc/painting/penmenu/history/PenHistoryItem;->mPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v3, v4}, Lcom/htc/painting/penmenu/Pen;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 51
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 28
    const/16 v0, 0x1f

    .line 29
    .local v0, prime:I
    const/4 v1, 0x1

    .line 30
    .local v1, result:I
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistoryItem;->mPen:Lcom/htc/painting/penmenu/Pen;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 31
    return v1

    .line 30
    :cond_0
    iget-object v2, p0, Lcom/htc/painting/penmenu/history/PenHistoryItem;->mPen:Lcom/htc/painting/penmenu/Pen;

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/Pen;->hashCode()I

    move-result v2

    goto :goto_0
.end method
