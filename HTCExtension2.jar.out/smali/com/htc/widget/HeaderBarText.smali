.class public Lcom/htc/widget/HeaderBarText;
.super Landroid/widget/LinearLayout;
.source "HeaderBarText.java"


# instance fields
.field private paddingLeft:I

.field private paddingRight:I

.field private primaryText:Landroid/widget/TextView;

.field private secondaryLText:Landroid/widget/TextView;

.field private secondaryRText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrset"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    .line 18
    iput-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    .line 19
    iput-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    .line 22
    iput v1, p0, Lcom/htc/widget/HeaderBarText;->paddingLeft:I

    .line 23
    iput v1, p0, Lcom/htc/widget/HeaderBarText;->paddingRight:I

    .line 41
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarText;->setupEnvironment()V

    .line 42
    return-void
.end method

.method private setupEnvironment()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 47
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 49
    .local v0, resources:Landroid/content/res/Resources;
    iget v1, p0, Lcom/htc/widget/HeaderBarText;->paddingLeft:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HeaderBarText;->paddingRight:I

    if-gez v1, :cond_1

    .line 51
    :cond_0
    const v1, 0x20e009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarText;->paddingLeft:I

    .line 52
    const v1, 0x20e009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBarText;->paddingRight:I

    .line 56
    :cond_1
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarText;->setGravity(I)V

    .line 57
    invoke-virtual {p0, v5}, Lcom/htc/widget/HeaderBarText;->setOrientation(I)V

    .line 58
    iget v1, p0, Lcom/htc/widget/HeaderBarText;->paddingLeft:I

    iget v2, p0, Lcom/htc/widget/HeaderBarText;->paddingRight:I

    invoke-virtual {p0, v1, v4, v2, v4}, Lcom/htc/widget/HeaderBarText;->setPadding(IIII)V

    .line 59
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x209003d

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 66
    const v1, 0x2020044

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarText;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    .line 67
    const v1, 0x2020045

    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarText;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    .line 68
    return-void
.end method

.method private setupSecondaryRightText()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 74
    const/4 v2, 0x0

    .line 75
    .local v2, linearLayout:Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    .line 76
    .local v0, layoutParamL:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    .line 78
    .local v1, layoutParamR:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarText;->removeAllViews()V

    .line 81
    invoke-virtual {p0, v5}, Lcom/htc/widget/HeaderBarText;->setOrientation(I)V

    .line 83
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0           #layoutParamL:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 84
    .restart local v0       #layoutParamL:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #layoutParamR:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 86
    .restart local v1       #layoutParamR:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x4000

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 87
    const/high16 v3, 0x3f80

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 88
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20e009c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 90
    new-instance v2, Landroid/widget/LinearLayout;

    .end local v2           #linearLayout:Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 91
    .restart local v2       #linearLayout:Landroid/widget/LinearLayout;
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 92
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 95
    iget-object v3, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    iget-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    .line 99
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarText;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    .line 102
    iget-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 103
    iget-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 104
    iget-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 105
    iget-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xad

    if-eq v3, v4, :cond_0

    .line 110
    iget-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarText;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x203005a

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 113
    const-string v3, "HeaderBar"

    const-string v4, "header right text title_secondary_xs"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    invoke-virtual {p0, v2, v0}, Lcom/htc/widget/HeaderBarText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v3, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v1}, Lcom/htc/widget/HeaderBarText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    :cond_1
    return-void
.end method


# virtual methods
.method public getPrimaryText()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSecondaryLeftText()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSecondaryRightText()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setPrimaryText(I)V
    .locals 1
    .parameter "resource"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 207
    :cond_0
    return-void
.end method

.method public setPrimaryText(Ljava/lang/String;)V
    .locals 1
    .parameter "string"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :cond_0
    return-void
.end method

.method public setPrimaryTextCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 217
    :cond_0
    return-void
.end method

.method public setPrimaryVisibility(I)V
    .locals 1
    .parameter "visibility"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    :cond_0
    return-void
.end method

.method public setSecondaryLeftText(I)V
    .locals 1
    .parameter "resource"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 237
    :cond_0
    return-void
.end method

.method public setSecondaryLeftText(Ljava/lang/String;)V
    .locals 1
    .parameter "string"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :cond_0
    return-void
.end method

.method public setSecondaryLeftVisibility(I)V
    .locals 1
    .parameter "visibility"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    :cond_0
    return-void
.end method

.method public setSecondaryRightText(I)V
    .locals 1
    .parameter "resource"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarText;->setupSecondaryRightText()V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 259
    return-void
.end method

.method public setSecondaryRightText(Ljava/lang/String;)V
    .locals 1
    .parameter "string"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarText;->setupSecondaryRightText()V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    return-void
.end method

.method public setSecondaryRightVisibility(I)V
    .locals 1
    .parameter "visibility"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarText;->setupSecondaryRightText()V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    return-void
.end method

.method updateResource()V
    .locals 3

    .prologue
    .line 135
    const-string v0, "HeaderBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateResource():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->primaryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarText;->mContext:Landroid/content/Context;

    const v2, 0x2030052

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryLText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarText;->mContext:Landroid/content/Context;

    const v2, 0x2030057

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 146
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-eq v0, v1, :cond_2

    .line 147
    iget-object v0, p0, Lcom/htc/widget/HeaderBarText;->secondaryRText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarText;->mContext:Landroid/content/Context;

    const v2, 0x203005a

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 152
    :cond_2
    return-void
.end method
