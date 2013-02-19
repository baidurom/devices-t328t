.class public Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;
.super Ljava/lang/Object;
.source "HighlightConfig15.java"

# interfaces
.implements Lcom/htc/painting/penmenu/highlight/IHighlightConfig15;


# instance fields
.field private mCurColor:I

.field private mCurState:I

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration$IHightlightConfigListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedColors:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->mSupportedColors:[I

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->mListeners:Ljava/util/List;

    .line 18
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->mCurState:I

    return-void
.end method

.method private notifyOptionChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "modifierKey"

    .prologue
    .line 99
    iget-object v2, p0, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration$IHightlightConfigListener;

    .line 100
    .local v1, list:Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration$IHightlightConfigListener;
    invoke-interface {v1, p1, p0, p2}, Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration$IHightlightConfigListener;->onHighlightOptionsChanged(Ljava/lang/String;Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    .end local v1           #list:Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration$IHightlightConfigListener;
    :cond_0
    return-void
.end method

.method private notifyStateChange(Ljava/lang/String;)V
    .locals 3
    .parameter "modifierKey"

    .prologue
    .line 105
    iget-object v2, p0, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration$IHightlightConfigListener;

    .line 106
    .local v1, list:Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration$IHightlightConfigListener;
    iget v2, p0, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->mCurState:I

    invoke-interface {v1, v2, p0, p1}, Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration$IHightlightConfigListener;->onHighlightStateChanged(ILcom/htc/painting/penmenu/highlight/IHighlightConfiguration;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    .end local v1           #list:Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration$IHightlightConfigListener;
    :cond_0
    return-void
.end method

.method private supported(I)Z
    .locals 5
    .parameter "color"

    .prologue
    .line 152
    iget-object v4, p0, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->mSupportedColors:[I

    if-eqz v4, :cond_1

    .line 153
    iget-object v0, p0, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->mSupportedColors:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, v0, v2

    .line 154
    .local v1, candidate:I
    if-ne p1, v1, :cond_0

    .line 155
    const/4 v4, 0x1

    .line 159
    .end local v0           #arr$:[I
    .end local v1           #candidate:I
    .end local v2           #i$:I
    .end local v3           #len$:I
    :goto_1
    return v4

    .line 153
    .restart local v0       #arr$:[I
    .restart local v1       #candidate:I
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    .end local v0           #arr$:[I
    .end local v1           #candidate:I
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addHighlightConfigListener(Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration$IHightlightConfigListener;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->mCurColor:I

    return v0
.end method

.method public getConfigOption(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 69
    const-string v0, "supported_color_option"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->getSupportedColors()[I

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 71
    :cond_0
    const-string v0, "color_option"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->getColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConfigState()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->mCurState:I

    return v0
.end method

.method public getSupportedColors()[I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->mSupportedColors:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public removeHighlightConfigListener(Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration$IHightlightConfigListener;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public setColor(ILjava/lang/String;)V
    .locals 3
    .parameter "color"
    .parameter "modifierKey"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->supported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You can\'t set a color that is not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_0
    iget v1, p0, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->mCurColor:I

    if-eq v1, p1, :cond_2

    const/4 v0, 0x1

    .line 137
    .local v0, colorChanged:Z
    :goto_0
    iput p1, p0, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->mCurColor:I

    .line 139
    if-eqz v0, :cond_1

    .line 140
    const-string v1, "color_option"

    invoke-direct {p0, v1, p2}, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->notifyOptionChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_1
    return-void

    .line 136
    .end local v0           #colorChanged:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setConfigOption(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "val"
    .parameter "modifierKey"

    .prologue
    .line 49
    const-string v0, "supported_color_option"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    instance-of v0, p2, [I

    if-eqz v0, :cond_0

    .line 51
    check-cast p2, [I

    .end local p2
    check-cast p2, [I

    invoke-virtual {p0, p2, p3}, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->setSupportedColors([ILjava/lang/String;)V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 53
    .restart local p2
    :cond_1
    const-string v0, "color_option"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 55
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->setColor(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setConfigState(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "modifierKey"

    .prologue
    .line 28
    iget v1, p0, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->mCurState:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 29
    .local v0, stateChanged:Z
    :goto_0
    iput p1, p0, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->mCurState:I

    .line 30
    if-eqz v0, :cond_0

    .line 31
    invoke-direct {p0, p2}, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->notifyStateChange(Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void

    .line 28
    .end local v0           #stateChanged:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSupportedColors([ILjava/lang/String;)V
    .locals 1
    .parameter "colors"
    .parameter "modifierKey"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->mSupportedColors:[I

    .line 116
    const-string v0, "supported_color_option"

    invoke-direct {p0, v0, p2}, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;->notifyOptionChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method
