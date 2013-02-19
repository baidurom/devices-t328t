.class public Lcom/htc/widget/HtcRadioButton;
.super Lcom/htc/widget/HtcCompoundButton;
.source "HtcRadioButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "backgroundMode"

    .prologue
    const/4 v0, 0x1

    .line 19
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/htc/widget/HtcCompoundButton;-><init>(Landroid/content/Context;IZZ)V

    .line 21
    invoke-direct {p0}, Lcom/htc/widget/HtcRadioButton;->init()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-direct {p0}, Lcom/htc/widget/HtcRadioButton;->init()V

    .line 28
    return-void
.end method

.method private init()V
    .locals 7

    .prologue
    const v6, 0x2080141

    const v4, 0x2080140

    const v5, 0x208013f

    const v3, 0x2080021

    const/4 v1, 0x1

    .line 45
    iput-boolean v1, p0, Lcom/htc/widget/HtcCompoundButton;->mIsContentMultiplyRequired:Z

    .line 46
    iput-boolean v1, p0, Lcom/htc/widget/HtcCompoundButton;->mHasOnState:Z

    .line 47
    iget v0, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundMode:I

    if-nez v0, :cond_0

    .line 48
    const v1, 0x208001f

    const v2, 0x2080020

    const v4, 0x2080193

    const v5, 0x2080192

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcRadioButton;->setButtonDrawableResources(IIIII)V

    .line 60
    :goto_0
    return-void

    .line 50
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundMode:I

    if-ne v0, v1, :cond_1

    .line 51
    const v1, 0x2080007

    const v2, 0x2080008

    const v4, 0x2080193

    const v5, 0x2080192

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcRadioButton;->setButtonDrawableResources(IIIII)V

    goto :goto_0

    .line 53
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 54
    const v1, 0x208012e

    const v2, 0x208012f

    move-object v0, p0

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcRadioButton;->setButtonDrawableResources(IIIII)V

    goto :goto_0

    .line 57
    :cond_2
    const v1, 0x2080139

    const v2, 0x208013a

    move-object v0, p0

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcRadioButton;->setButtonDrawableResources(IIIII)V

    goto :goto_0
.end method


# virtual methods
.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/htc/widget/HtcCompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 37
    invoke-virtual {p0}, Lcom/htc/widget/HtcRadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/HtcRadioButton;->mContext:Landroid/content/Context;

    const v2, 0x1040499

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/HtcRadioButton;->mContext:Landroid/content/Context;

    const v2, 0x104049a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/htc/widget/HtcRadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-super {p0}, Lcom/htc/widget/HtcCompoundButton;->toggle()V

    .line 74
    :cond_0
    return-void
.end method
