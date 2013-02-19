.class public Lcom/htc/painting/penmenu/SimplePenFilter;
.super Ljava/lang/Object;
.source "SimplePenFilter.java"

# interfaces
.implements Lcom/htc/painting/penmenu/IPenSetFilter;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SimplePenFilter"

.field private static ignoredPenNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.htc.pen.FountainPen"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/painting/penmenu/SimplePenFilter;->ignoredPenNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/menu/PenTypeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, penTypeList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/penmenu/menu/PenTypeItem;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 27
    if-eqz p1, :cond_4

    .line 28
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 30
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/penmenu/menu/PenTypeItem;

    .line 32
    .local v3, item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getPenType()Lcom/htc/painting/penmenu/PenType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/painting/penmenu/PenType;->isSimplePen()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getPenType()Lcom/htc/painting/penmenu/PenType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/painting/penmenu/PenType;->isEraser()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 33
    :cond_0
    invoke-virtual {v3, v8}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->setEnabled(Z)V

    .line 39
    :goto_1
    sget-object v0, Lcom/htc/painting/penmenu/SimplePenFilter;->ignoredPenNames:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2
    if-ge v2, v4, :cond_3

    aget-object v5, v0, v2

    .line 41
    .local v5, removedPen:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getPenType()Lcom/htc/painting/penmenu/PenType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/painting/penmenu/PenType;->getUniqueName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 45
    invoke-virtual {v3, v8}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->setIgnored(Z)V

    .line 39
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 36
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #removedPen:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, v7}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->setEnabled(Z)V

    goto :goto_1

    .line 48
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #removedPen:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, v7}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->setIgnored(Z)V

    goto :goto_3

    .line 28
    .end local v5           #removedPen:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #i$:I
    .end local v3           #item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    .end local v4           #len$:I
    :cond_4
    return-void
.end method
