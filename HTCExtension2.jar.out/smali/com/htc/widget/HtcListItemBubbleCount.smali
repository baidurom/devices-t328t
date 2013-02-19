.class public Lcom/htc/widget/HtcListItemBubbleCount;
.super Landroid/widget/TextView;
.source "HtcListItemBubbleCount.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemControl;


# instance fields
.field private mBubbleSize:I

.field private mContext:Landroid/content/Context;

.field private mUseSetBubbleCount:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mContext:Landroid/content/Context;

    .line 20
    iput v1, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mBubbleSize:I

    .line 21
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mUseSetBubbleCount:Z

    .line 54
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemBubbleCount;->init(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mContext:Landroid/content/Context;

    .line 20
    iput v1, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mBubbleSize:I

    .line 21
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mUseSetBubbleCount:Z

    .line 59
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemBubbleCount;->init(Landroid/content/Context;)V

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemBubbleCount;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mContext:Landroid/content/Context;

    .line 20
    iput v1, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mBubbleSize:I

    .line 21
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mUseSetBubbleCount:Z

    .line 65
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemBubbleCount;->init(Landroid/content/Context;)V

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemBubbleCount;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcListItemBubbleCount;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mUseSetBubbleCount:Z

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 27
    const-string v1, "0"

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemBubbleCount;->setText(Ljava/lang/CharSequence;)V

    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, rId:I
    const-string v1, "common_notification_on"

    const v2, 0x208003d

    invoke-static {p1, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemBubbleCount;->setBackgroundResource(I)V

    .line 33
    const v1, 0x203005f

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemBubbleCount;->setTextStyle(I)V

    .line 34
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemBubbleCount;->setGravity(I)V

    .line 35
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemBubbleCount;->setVisibility(I)V

    .line 38
    iput-object p1, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mContext:Landroid/content/Context;

    .line 39
    iget-object v1, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20500e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mBubbleSize:I

    .line 42
    new-instance v1, Lcom/htc/widget/HtcListItemBubbleCount$1;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcListItemBubbleCount$1;-><init>(Lcom/htc/widget/HtcListItemBubbleCount;)V

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemBubbleCount;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 50
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    sget-object v2, Lcom/htc/R$styleable;->HtcListItemBubbleCount:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 72
    .local v0, bubbleText:Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 74
    .local v1, text:Ljava/lang/CharSequence;
    invoke-direct {p0, v1}, Lcom/htc/widget/HtcListItemBubbleCount;->setBubbleCount(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method

.method private setBubbleCount(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 116
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemBubbleCount;->setBubbleCount(Ljava/lang/String;)V

    .line 117
    return-void

    .line 116
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 96
    iget-object v1, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 101
    :goto_0
    return-object v0

    .line 99
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mBubbleSize:I

    iget v2, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mBubbleSize:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 100
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public setBubbleCount(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mUseSetBubbleCount:Z

    .line 122
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListItemBubbleCount;->setText(Ljava/lang/CharSequence;)V

    .line 123
    if-eqz p1, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemBubbleCount;->setVisibility(I)V

    .line 137
    :goto_0
    iput-boolean v2, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mUseSetBubbleCount:Z

    .line 138
    return-void

    .line 126
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 127
    const v0, 0x203005f

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemBubbleCount;->setTextStyle(I)V

    .line 135
    :goto_1
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListItemBubbleCount;->setVisibility(I)V

    goto :goto_0

    .line 131
    :cond_2
    const v0, 0x203005e

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemBubbleCount;->setTextStyle(I)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemBubbleCount;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 149
    invoke-static {p0, p1}, Lcom/htc/widget/HtcListItemUtil;->setViewOpacity(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    const/4 v1, 0x0

    .line 83
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 84
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 86
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mBubbleSize:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 87
    iget v0, p0, Lcom/htc/widget/HtcListItemBubbleCount;->mBubbleSize:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 88
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 109
    return-void
.end method

.method setTextStyle(I)V
    .locals 9
    .parameter "defStyle"

    .prologue
    const/4 v8, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemBubbleCount;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 154
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0, v1, p1}, Lcom/htc/widget/HtcListItemBubbleCount;->setTextAppearance(Landroid/content/Context;I)V

    .line 155
    sget-object v6, Lcom/android/internal/R$styleable;->TextView:[I

    invoke-virtual {v1, p1, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 159
    .local v0, appearance:Landroid/content/res/TypedArray;
    const/16 v6, 0x24

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 160
    .local v5, shadowColor:I
    const/16 v6, 0x25

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 161
    .local v2, dx:F
    const/16 v6, 0x26

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 162
    .local v3, dy:F
    const/16 v6, 0x27

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 164
    .local v4, r:F
    if-eqz v5, :cond_0

    .line 165
    invoke-virtual {p0, v4, v2, v3, v5}, Lcom/htc/widget/HtcListItemBubbleCount;->setShadowLayer(FFFI)V

    .line 167
    :cond_0
    return-void
.end method
