.class public Lcom/htc/widget/HtcCloseButton;
.super Lcom/htc/widget/HtcCompoundButton;
.source "HtcCloseButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcCloseButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "backgroundMode"

    .prologue
    .line 14
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/htc/widget/HtcCompoundButton;-><init>(Landroid/content/Context;IZZ)V

    .line 15
    invoke-direct {p0}, Lcom/htc/widget/HtcCloseButton;->init()V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcCloseButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-direct {p0}, Lcom/htc/widget/HtcCloseButton;->init()V

    .line 25
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const v4, 0x208015e

    const v5, 0x208015d

    const v3, 0x2080021

    const/4 v1, 0x1

    .line 28
    iput-boolean v1, p0, Lcom/htc/widget/HtcCompoundButton;->mIsContentMultiplyRequired:Z

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mHasOnState:Z

    .line 30
    iget v0, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundMode:I

    if-nez v0, :cond_0

    .line 31
    const v1, 0x208001f

    const v2, 0x2080020

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcCloseButton;->setButtonDrawableResources(IIIII)V

    .line 43
    :goto_0
    return-void

    .line 33
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundMode:I

    if-ne v0, v1, :cond_1

    .line 34
    const v1, 0x2080007

    const v2, 0x2080008

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcCloseButton;->setButtonDrawableResources(IIIII)V

    goto :goto_0

    .line 36
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 37
    const v1, 0x208012e

    const v2, 0x208012f

    const v3, 0x2080136

    const v4, 0x2080131

    const v5, 0x2080130

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcCloseButton;->setButtonDrawableResources(IIIII)V

    goto :goto_0

    .line 40
    :cond_2
    const v1, 0x2080139

    const v2, 0x208013a

    const v3, 0x2080141

    const v4, 0x208013d

    const v5, 0x208013c

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcCloseButton;->setButtonDrawableResources(IIIII)V

    goto :goto_0
.end method
