.class public Lcom/htc/painting/penmenu/SinglePenFilter;
.super Ljava/lang/Object;
.source "SinglePenFilter.java"

# interfaces
.implements Lcom/htc/painting/penmenu/IPenSetFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/util/List;)V
    .locals 5
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
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    if-eqz p1, :cond_1

    .line 23
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 25
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/menu/PenTypeItem;

    .line 27
    .local v1, item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    invoke-virtual {v1}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->getPenType()Lcom/htc/painting/penmenu/PenType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/painting/penmenu/PenType;->isSimplePen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    invoke-virtual {v1, v3}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->setIgnored(Z)V

    .line 29
    invoke-virtual {v1, v4}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->setEnabled(Z)V

    .line 23
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v1, v4}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->setIgnored(Z)V

    .line 33
    invoke-virtual {v1, v3}, Lcom/htc/painting/penmenu/menu/PenTypeItem;->setEnabled(Z)V

    goto :goto_1

    .line 40
    .end local v0           #i:I
    .end local v1           #item:Lcom/htc/painting/penmenu/menu/PenTypeItem;
    :cond_1
    return-void
.end method
