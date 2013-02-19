.class public Lcom/htc/painting/penmenu/menu/MenuOptions;
.super Ljava/lang/Object;
.source "MenuOptions.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/htc/painting/penmenu/menu/OptionItem;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable;"
    }
.end annotation


# instance fields
.field private mMenuId:I

.field private mMenuItem:Lcom/htc/painting/penmenu/menu/MenuItem;

.field private mOptionItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/painting/penmenu/menu/MenuItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 32
    .local p0, this:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu/menu/MenuOptions;->mOptionItems:Ljava/util/List;

    .line 33
    iput-object p1, p0, Lcom/htc/painting/penmenu/menu/MenuOptions;->mMenuItem:Lcom/htc/painting/penmenu/menu/MenuItem;

    .line 34
    return-void
.end method


# virtual methods
.method public addOptionItem(Lcom/htc/painting/penmenu/menu/OptionItem;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, this:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<TT;>;"
    .local p1, item:Lcom/htc/painting/penmenu/menu/OptionItem;,"TT;"
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/MenuOptions;->mOptionItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 5
    .parameter "another"

    .prologue
    .local p0, this:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<TT;>;"
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 74
    if-nez p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v1

    .line 77
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    .line 78
    goto :goto_0

    .line 81
    :cond_2
    instance-of v3, p1, Lcom/htc/painting/penmenu/menu/MenuOptions;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 84
    check-cast v0, Lcom/htc/painting/penmenu/menu/MenuOptions;

    .line 85
    .local v0, obj:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<+Lcom/htc/painting/penmenu/menu/OptionItem;>;"
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuId()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuId()I

    move-result v4

    if-ne v3, v4, :cond_3

    move v1, v2

    .line 86
    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuId()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/painting/penmenu/menu/MenuOptions;->getMenuId()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 89
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getMenuId()I
    .locals 1

    .prologue
    .line 21
    .local p0, this:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<TT;>;"
    iget v0, p0, Lcom/htc/painting/penmenu/menu/MenuOptions;->mMenuId:I

    return v0
.end method

.method public getMenuItem()Lcom/htc/painting/penmenu/menu/MenuItem;
    .locals 1

    .prologue
    .line 49
    .local p0, this:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<TT;>;"
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/MenuOptions;->mMenuItem:Lcom/htc/painting/penmenu/menu/MenuItem;

    return-object v0
.end method

.method public getOptionItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, this:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<TT;>;"
    iget-object v0, p0, Lcom/htc/painting/penmenu/menu/MenuOptions;->mOptionItems:Ljava/util/List;

    return-object v0
.end method

.method public getOptionItemsCopy()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/painting/penmenu/menu/MenuOptions;->mOptionItems:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public setMenuId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 29
    .local p0, this:Lcom/htc/painting/penmenu/menu/MenuOptions;,"Lcom/htc/painting/penmenu/menu/MenuOptions<TT;>;"
    iput p1, p0, Lcom/htc/painting/penmenu/menu/MenuOptions;->mMenuId:I

    .line 30
    return-void
.end method
