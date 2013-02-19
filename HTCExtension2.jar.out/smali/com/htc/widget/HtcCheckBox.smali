.class public Lcom/htc/widget/HtcCheckBox;
.super Lcom/htc/widget/HtcCompoundButton;
.source "HtcCheckBox.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "backgroundMode"

    .prologue
    const/4 v0, 0x1

    .line 17
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/htc/widget/HtcCompoundButton;-><init>(Landroid/content/Context;IZZ)V

    .line 18
    iput p2, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundMode:I

    .line 19
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcCheckBox;->init(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcCheckBox;->init(Landroid/content/Context;)V

    .line 30
    return-void
.end method


# virtual methods
.method init(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const v3, 0x2080021

    const v4, 0x208001e

    const v5, 0x208001d

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 47
    iput-boolean v1, p0, Lcom/htc/widget/HtcCompoundButton;->mIsContentMultiplyRequired:Z

    .line 48
    iput-boolean v1, p0, Lcom/htc/widget/HtcCompoundButton;->mHasOnState:Z

    .line 49
    iget v0, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundMode:I

    if-nez v0, :cond_0

    .line 50
    const v1, 0x208001f

    const v2, 0x2080020

    const v6, 0x208015c

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/widget/HtcCheckBox;->setButtonDrawableResources(IIIIII)V

    .line 62
    :goto_0
    iput-boolean v7, p0, Lcom/htc/widget/HtcCompoundButton;->mIsPartialSelect:Z

    .line 63
    return-void

    .line 52
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundMode:I

    if-ne v0, v1, :cond_1

    .line 53
    const v1, 0x2080007

    const v2, 0x2080008

    const v6, 0x208015c

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/widget/HtcCheckBox;->setButtonDrawableResources(IIIIII)V

    goto :goto_0

    .line 55
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 56
    const v1, 0x208012e

    const v2, 0x208012f

    const v3, 0x2080141

    const v4, 0x2080138

    const v5, 0x2080137

    move-object v0, p0

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/htc/widget/HtcCheckBox;->setButtonDrawableResources(IIIIII)V

    goto :goto_0

    .line 59
    :cond_2
    const v1, 0x2080139

    const v2, 0x208013a

    const v3, 0x2080141

    const v4, 0x2080138

    const v5, 0x2080137

    move-object v0, p0

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/htc/widget/HtcCheckBox;->setButtonDrawableResources(IIIIII)V

    goto :goto_0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/htc/widget/HtcCompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 39
    invoke-virtual {p0}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/HtcCheckBox;->mContext:Landroid/content/Context;

    const v2, 0x1040497

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/HtcCheckBox;->mContext:Landroid/content/Context;

    const v2, 0x1040498

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setButtonDrawableResources(IIIII)V
    .locals 2
    .parameter "backgroundOuter"
    .parameter "backgroundPress"
    .parameter "background"
    .parameter "contentRest"
    .parameter "contentOn"

    .prologue
    .line 77
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This function is not supported. Please use setButtonDrawableResources(int backgroundOuter, int backgroundPress, int background, int contentRest, int contentOn, int partialSelect)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setButtonDrawableResources(IIIIII)V
    .locals 3
    .parameter "backgroundOuter"
    .parameter "backgroundPress"
    .parameter "background"
    .parameter "contentRest"
    .parameter "contentOn"
    .parameter "partialSelect"

    .prologue
    .line 93
    if-nez p6, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mPartialSelection:Landroid/graphics/drawable/Drawable;

    .line 94
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mPartialSelection:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mPartialSelection:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 96
    iget-object v0, p0, Lcom/htc/widget/HtcCompoundButton;->mPartialSelection:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/HtcCompoundButton;->mMultiplyColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 98
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/htc/widget/HtcCheckBox;->setButtonDrawablesInner(IIIII)V

    .line 99
    return-void

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcCheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setButtonDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "backgroundOuter"
    .parameter "backgroundPress"
    .parameter "background"
    .parameter "contentRest"
    .parameter "contentOn"

    .prologue
    .line 87
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setButtonDrawables(Drawable backgroundOuter, Drawable backgroundPress, Drawable background, Drawable contentRest, Drawable contentOn, Drawable partialSelect)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPartialSelection(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mIsPartialSelect:Z

    if-eq v0, p1, :cond_0

    .line 67
    iput-boolean p1, p0, Lcom/htc/widget/HtcCompoundButton;->mIsPartialSelect:Z

    .line 68
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 70
    :cond_0
    return-void
.end method
