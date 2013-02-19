.class public Lcom/htc/widget/HtcDeleteButton;
.super Lcom/htc/widget/HtcCompoundButton;
.source "HtcDeleteButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcDeleteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "backgroundMode"

    .prologue
    .line 15
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/htc/widget/HtcCompoundButton;-><init>(Landroid/content/Context;IZZ)V

    .line 17
    invoke-virtual {p0}, Lcom/htc/widget/HtcDeleteButton;->init()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcDeleteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
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
    invoke-virtual {p0}, Lcom/htc/widget/HtcDeleteButton;->init()V

    .line 28
    return-void
.end method


# virtual methods
.method init()V
    .locals 6

    .prologue
    const v4, 0x2080162

    const v5, 0x2080161

    const v3, 0x2080021

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 31
    iget v0, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundMode:I

    if-nez v0, :cond_0

    .line 32
    iput-boolean v1, p0, Lcom/htc/widget/HtcCompoundButton;->mIsContentMultiplyRequired:Z

    .line 33
    iput-boolean v2, p0, Lcom/htc/widget/HtcCompoundButton;->mHasOnState:Z

    .line 34
    const v1, 0x208001f

    const v2, 0x2080020

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcDeleteButton;->setButtonDrawableResources(IIIII)V

    .line 52
    :goto_0
    return-void

    .line 36
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundMode:I

    if-ne v0, v2, :cond_1

    .line 37
    iput-boolean v1, p0, Lcom/htc/widget/HtcCompoundButton;->mIsContentMultiplyRequired:Z

    .line 38
    iput-boolean v2, p0, Lcom/htc/widget/HtcCompoundButton;->mHasOnState:Z

    .line 39
    const v1, 0x2080007

    const v2, 0x2080008

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcDeleteButton;->setButtonDrawableResources(IIIII)V

    goto :goto_0

    .line 41
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcCompoundButton;->mBackgroundMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 42
    iput-boolean v2, p0, Lcom/htc/widget/HtcCompoundButton;->mIsContentMultiplyRequired:Z

    .line 43
    iput-boolean v2, p0, Lcom/htc/widget/HtcCompoundButton;->mHasOnState:Z

    .line 44
    const v1, 0x208012e

    const v2, 0x208012f

    const v3, 0x2080136

    const v4, 0x2080131

    const v5, 0x2080130

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcDeleteButton;->setButtonDrawableResources(IIIII)V

    goto :goto_0

    .line 47
    :cond_2
    iput-boolean v2, p0, Lcom/htc/widget/HtcCompoundButton;->mIsContentMultiplyRequired:Z

    .line 48
    iput-boolean v2, p0, Lcom/htc/widget/HtcCompoundButton;->mHasOnState:Z

    .line 49
    const v1, 0x2080139

    const v2, 0x208013a

    const v3, 0x2080141

    const v4, 0x208013d

    const v5, 0x208013c

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcDeleteButton;->setButtonDrawableResources(IIIII)V

    goto :goto_0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/htc/widget/HtcCompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 61
    invoke-virtual {p0}, Lcom/htc/widget/HtcDeleteButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/HtcDeleteButton;->mContext:Landroid/content/Context;

    const v2, 0x1040497

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/HtcDeleteButton;->mContext:Landroid/content/Context;

    const v2, 0x1040498

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
