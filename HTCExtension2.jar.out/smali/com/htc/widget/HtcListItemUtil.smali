.class final Lcom/htc/widget/HtcListItemUtil;
.super Ljava/lang/Object;
.source "HtcListItemUtil.java"


# static fields
.field private static final M1:I = 0x0

.field private static final M2:I = 0x1

.field private static final M3:I = 0x2

.field private static final M4:I = 0x3

.field private static final M5:I = 0x4

.field private static final M6:I = 0x5

.field private static final MEASURE_TEXT:Ljava/lang/String; = "ABCDEFGHIJKLMNOPRSTUVWXYZgbdfhiklt"

.field private static Margin:[I

.field private static SeparatorHeight:I

.field private static SeparatorHeightWithButton:I

.field private static sArrayInit:Z

.field private static sContextSet:[Z

.field private static sDesiredItemHeight:[I

.field private static sExtraGap:[I

.field private static sMinListItemHeight:[I

.field private static sPrimaryTextBaseline:[I

.field private static sPrimaryTextSize:[I

.field private static sSecondaryTextBaseline:[I

.field private static sSecondaryTextSize:[I

.field private static sTextBottomGap:[I

.field private static sTextCenterGap:[I

.field private static sTextTopGap:[I

.field private static sTextView:Lcom/htc/widget/HtcFadingEdgeTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    const/4 v0, 0x6

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/widget/HtcListItemUtil;->Margin:[I

    .line 57
    sput v1, Lcom/htc/widget/HtcListItemUtil;->SeparatorHeight:I

    .line 58
    sput v1, Lcom/htc/widget/HtcListItemUtil;->SeparatorHeightWithButton:I

    .line 62
    sput-boolean v1, Lcom/htc/widget/HtcListItemUtil;->sArrayInit:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDesiredBottomGap(I)I
    .locals 2
    .parameter "itemMode"

    .prologue
    .line 250
    sget-object v0, Lcom/htc/widget/HtcListItemUtil;->sTextBottomGap:[I

    aget v0, v0, p0

    sget-object v1, Lcom/htc/widget/HtcListItemUtil;->sExtraGap:[I

    aget v1, v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method static getDesiredCenterFor7Badge(I)I
    .locals 3
    .parameter "itemMode"

    .prologue
    .line 242
    invoke-static {p0}, Lcom/htc/widget/HtcListItemUtil;->getDesiredTopGap(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f00

    sget-object v2, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextBaseline:[I

    aget v2, v2, p0

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static getDesiredCenterGap(I)I
    .locals 2
    .parameter "itemMode"

    .prologue
    .line 246
    sget-object v0, Lcom/htc/widget/HtcListItemUtil;->sTextCenterGap:[I

    aget v0, v0, p0

    sget-object v1, Lcom/htc/widget/HtcListItemUtil;->sExtraGap:[I

    aget v1, v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method static getDesiredChildrenGap()I
    .locals 1

    .prologue
    .line 271
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM2()I

    move-result v0

    return v0
.end method

.method static getDesiredListItemHeight(I)I
    .locals 1
    .parameter "itemMode"

    .prologue
    .line 226
    sget-object v0, Lcom/htc/widget/HtcListItemUtil;->sContextSet:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    .line 227
    sget-object v0, Lcom/htc/widget/HtcListItemUtil;->sDesiredItemHeight:[I

    aget v0, v0, p0

    .line 230
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static getDesiredTopGap(I)I
    .locals 2
    .parameter "itemMode"

    .prologue
    .line 234
    sget-object v0, Lcom/htc/widget/HtcListItemUtil;->sTextTopGap:[I

    aget v0, v0, p0

    sget-object v1, Lcom/htc/widget/HtcListItemUtil;->sExtraGap:[I

    aget v1, v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method static getM1()I
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/widget/HtcListItemUtil;->getMargin(I)I

    move-result v0

    return v0
.end method

.method static getM2()I
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/widget/HtcListItemUtil;->getMargin(I)I

    move-result v0

    return v0
.end method

.method static getM3()I
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/htc/widget/HtcListItemUtil;->getMargin(I)I

    move-result v0

    return v0
.end method

.method static getM4()I
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/htc/widget/HtcListItemUtil;->getMargin(I)I

    move-result v0

    return v0
.end method

.method static getM5()I
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/htc/widget/HtcListItemUtil;->getMargin(I)I

    move-result v0

    return v0
.end method

.method static getM6()I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/htc/widget/HtcListItemUtil;->getMargin(I)I

    move-result v0

    return v0
.end method

.method private static getMargin(I)I
    .locals 1
    .parameter "marginLevel"

    .prologue
    .line 208
    sget-boolean v0, Lcom/htc/widget/HtcListItemUtil;->sArrayInit:Z

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Lcom/htc/widget/HtcListItemUtil;->Margin:[I

    aget v0, v0, p0

    .line 211
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static getMinListItemHeight(I)I
    .locals 1
    .parameter "itemMode"

    .prologue
    .line 218
    sget-object v0, Lcom/htc/widget/HtcListItemUtil;->sContextSet:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    .line 219
    sget-object v0, Lcom/htc/widget/HtcListItemUtil;->sMinListItemHeight:[I

    aget v0, v0, p0

    .line 222
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static getPrimaryBaseLine(I)I
    .locals 2
    .parameter "itemMode"

    .prologue
    .line 254
    invoke-static {p0}, Lcom/htc/widget/HtcListItemUtil;->getDesiredTopGap(I)I

    move-result v0

    sget-object v1, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextBaseline:[I

    aget v1, v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method static getPrimaryTextBaseLine(I)I
    .locals 1
    .parameter "itemMode"

    .prologue
    .line 262
    sget-object v0, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextBaseline:[I

    aget v0, v0, p0

    return v0
.end method

.method static getSecondaryBaseLine(I)I
    .locals 2
    .parameter "itemMode"

    .prologue
    .line 258
    invoke-static {p0}, Lcom/htc/widget/HtcListItemUtil;->getDesiredListItemHeight(I)I

    move-result v0

    invoke-static {p0}, Lcom/htc/widget/HtcListItemUtil;->getDesiredBottomGap(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static getSecondaryTextBaseLine(I)I
    .locals 1
    .parameter "itemMode"

    .prologue
    .line 266
    sget-object v0, Lcom/htc/widget/HtcListItemUtil;->sSecondaryTextBaseline:[I

    aget v0, v0, p0

    return v0
.end method

.method static getTextHeight(Landroid/content/Context;IZ)I
    .locals 5
    .parameter "c"
    .parameter "style"
    .parameter "includeBelow"

    .prologue
    const/4 v1, 0x0

    .line 287
    sget-object v2, Lcom/htc/widget/HtcListItemUtil;->sTextView:Lcom/htc/widget/HtcFadingEdgeTextView;

    if-eqz v2, :cond_0

    .line 288
    sget-object v2, Lcom/htc/widget/HtcListItemUtil;->sTextView:Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;->setTextStyle(I)V

    .line 290
    sget-object v2, Lcom/htc/widget/HtcListItemUtil;->sTextView:Lcom/htc/widget/HtcFadingEdgeTextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFadingEdgeTextView;->setSingleLine(Z)V

    .line 291
    sget-object v2, Lcom/htc/widget/HtcListItemUtil;->sTextView:Lcom/htc/widget/HtcFadingEdgeTextView;

    const-string v3, "ABCDEFGHIJKLMNOPRSTUVWXYZgbdfhiklt"

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFadingEdgeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 293
    .local v0, out:Landroid/graphics/Rect;
    sget-object v2, Lcom/htc/widget/HtcListItemUtil;->sTextView:Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcFadingEdgeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sTextView:Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcFadingEdgeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/widget/HtcListItemUtil;->sTextView:Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-virtual {v4}, Lcom/htc/widget/HtcFadingEdgeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 297
    if-eqz p2, :cond_1

    .line 298
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 302
    .end local v0           #out:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return v1

    .line 300
    .restart local v0       #out:Landroid/graphics/Rect;
    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    goto :goto_0
.end method

.method static setContextForMargins(Landroid/content/Context;I)V
    .locals 11
    .parameter "c"
    .parameter "itemMode"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 78
    .local v2, res:Landroid/content/res/Resources;
    sget-boolean v3, Lcom/htc/widget/HtcListItemUtil;->sArrayInit:Z

    if-nez v3, :cond_0

    .line 79
    new-array v3, v6, [I

    sput-object v3, Lcom/htc/widget/HtcListItemUtil;->sMinListItemHeight:[I

    .line 80
    new-array v3, v6, [I

    sput-object v3, Lcom/htc/widget/HtcListItemUtil;->sDesiredItemHeight:[I

    .line 81
    new-array v3, v6, [I

    sput-object v3, Lcom/htc/widget/HtcListItemUtil;->sTextTopGap:[I

    .line 82
    new-array v3, v6, [I

    sput-object v3, Lcom/htc/widget/HtcListItemUtil;->sTextCenterGap:[I

    .line 83
    new-array v3, v6, [I

    sput-object v3, Lcom/htc/widget/HtcListItemUtil;->sTextBottomGap:[I

    .line 84
    new-array v3, v6, [I

    sput-object v3, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextSize:[I

    .line 85
    new-array v3, v6, [I

    sput-object v3, Lcom/htc/widget/HtcListItemUtil;->sSecondaryTextSize:[I

    .line 86
    new-array v3, v6, [I

    sput-object v3, Lcom/htc/widget/HtcListItemUtil;->sExtraGap:[I

    .line 87
    new-array v3, v6, [I

    sput-object v3, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextBaseline:[I

    .line 88
    new-array v3, v6, [I

    sput-object v3, Lcom/htc/widget/HtcListItemUtil;->sSecondaryTextBaseline:[I

    .line 89
    new-array v3, v6, [Z

    sput-object v3, Lcom/htc/widget/HtcListItemUtil;->sContextSet:[Z

    .line 91
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->Margin:[I

    const/high16 v4, 0x205

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    aput v4, v3, v7

    .line 92
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->Margin:[I

    const v4, 0x2050001

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    aput v4, v3, v10

    .line 93
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->Margin:[I

    const v4, 0x2050002

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    aput v4, v3, v8

    .line 94
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->Margin:[I

    const v4, 0x2050003

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    aput v4, v3, v9

    .line 95
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->Margin:[I

    const v4, 0x205000c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    aput v4, v3, v6

    .line 96
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->Margin:[I

    const/4 v4, 0x5

    const v5, 0x205000d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    aput v5, v3, v4

    .line 98
    sput-boolean v10, Lcom/htc/widget/HtcListItemUtil;->sArrayInit:Z

    .line 101
    :cond_0
    const/4 v0, 0x0

    .line 102
    .local v0, pfont:I
    if-nez p1, :cond_3

    .line 103
    const v3, 0x205008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 104
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextSize:[I

    aget v3, v3, p1

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sContextSet:[Z

    aput-boolean v7, v3, p1

    .line 113
    :cond_1
    :goto_0
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sContextSet:[Z

    aget-boolean v3, v3, p1

    if-eqz v3, :cond_5

    if-nez p1, :cond_5

    .line 181
    :cond_2
    :goto_1
    return-void

    .line 105
    :cond_3
    if-ne p1, v9, :cond_4

    .line 106
    const v3, 0x20500d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 107
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextSize:[I

    aget v3, v3, p1

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sContextSet:[Z

    aput-boolean v7, v3, p1

    goto :goto_0

    .line 108
    :cond_4
    if-ne p1, v8, :cond_1

    .line 109
    const v3, 0x20501f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 110
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextSize:[I

    aget v3, v3, p1

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sContextSet:[Z

    aput-boolean v7, v3, p1

    goto :goto_0

    .line 115
    :cond_5
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sContextSet:[Z

    aget-boolean v3, v3, p1

    if-eqz v3, :cond_6

    if-eq p1, v9, :cond_2

    .line 117
    :cond_6
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sContextSet:[Z

    aget-boolean v3, v3, p1

    if-eqz v3, :cond_7

    if-eq p1, v8, :cond_2

    .line 119
    :cond_7
    const/high16 v1, 0x3f80

    .line 120
    .local v1, rate:F
    if-nez p1, :cond_8

    const v3, 0x20e00af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3dcccccd

    mul-float v1, v3, v4

    .line 123
    :cond_8
    if-nez p1, :cond_a

    .line 124
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sMinListItemHeight:[I

    const v4, 0x2050012

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    aput v4, v3, p1

    .line 127
    new-instance v3, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcFadingEdgeTextView;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/htc/widget/HtcListItemUtil;->sTextView:Lcom/htc/widget/HtcFadingEdgeTextView;

    .line 128
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sTextTopGap:[I

    const v4, 0x20500fd

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    aput v4, v3, p1

    .line 129
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sTextCenterGap:[I

    const v4, 0x20500ff

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    aput v4, v3, p1

    .line 130
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sTextBottomGap:[I

    const v4, 0x20500fe

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    aput v4, v3, p1

    .line 131
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextSize:[I

    const v4, 0x205008d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    aput v4, v3, p1

    .line 132
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sSecondaryTextSize:[I

    const v4, 0x2050094

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    aput v4, v3, p1

    .line 133
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextBaseline:[I

    const v4, 0x2030038

    invoke-static {p0, v4, v7}, Lcom/htc/widget/HtcListItemUtil;->getTextHeight(Landroid/content/Context;IZ)I

    move-result v4

    aput v4, v3, p1

    .line 134
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sSecondaryTextBaseline:[I

    const v4, 0x2030042

    invoke-static {p0, v4, v7}, Lcom/htc/widget/HtcListItemUtil;->getTextHeight(Landroid/content/Context;IZ)I

    move-result v4

    aput v4, v3, p1

    .line 135
    const/4 v3, 0x0

    sput-object v3, Lcom/htc/widget/HtcListItemUtil;->sTextView:Lcom/htc/widget/HtcFadingEdgeTextView;

    .line 166
    :cond_9
    :goto_2
    if-ltz p1, :cond_2

    if-ge p1, v6, :cond_2

    .line 167
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sDesiredItemHeight:[I

    sget-object v4, Lcom/htc/widget/HtcListItemUtil;->sTextTopGap:[I

    aget v4, v4, p1

    sget-object v5, Lcom/htc/widget/HtcListItemUtil;->sTextCenterGap:[I

    aget v5, v5, p1

    add-int/2addr v4, v5

    sget-object v5, Lcom/htc/widget/HtcListItemUtil;->sTextBottomGap:[I

    aget v5, v5, p1

    add-int/2addr v4, v5

    sget-object v5, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextBaseline:[I

    aget v5, v5, p1

    add-int/2addr v4, v5

    sget-object v5, Lcom/htc/widget/HtcListItemUtil;->sSecondaryTextBaseline:[I

    aget v5, v5, p1

    add-int/2addr v4, v5

    aput v4, v3, p1

    .line 172
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sDesiredItemHeight:[I

    aget v3, v3, p1

    sget-object v4, Lcom/htc/widget/HtcListItemUtil;->sMinListItemHeight:[I

    aget v4, v4, p1

    if-ge v3, v4, :cond_c

    .line 173
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sExtraGap:[I

    sget-object v4, Lcom/htc/widget/HtcListItemUtil;->sMinListItemHeight:[I

    aget v4, v4, p1

    sget-object v5, Lcom/htc/widget/HtcListItemUtil;->sDesiredItemHeight:[I

    aget v5, v5, p1

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x3

    aput v4, v3, p1

    .line 174
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sDesiredItemHeight:[I

    sget-object v4, Lcom/htc/widget/HtcListItemUtil;->sMinListItemHeight:[I

    aget v4, v4, p1

    aput v4, v3, p1

    .line 179
    :goto_3
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sContextSet:[Z

    aput-boolean v10, v3, p1

    goto/16 :goto_1

    .line 136
    :cond_a
    if-ne p1, v9, :cond_b

    .line 137
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sMinListItemHeight:[I

    const v4, 0x20500dd

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    aput v4, v3, p1

    .line 140
    new-instance v3, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcFadingEdgeTextView;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/htc/widget/HtcListItemUtil;->sTextView:Lcom/htc/widget/HtcFadingEdgeTextView;

    .line 141
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sTextTopGap:[I

    const v4, 0x2050100

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    aput v4, v3, p1

    .line 142
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sTextCenterGap:[I

    const v4, 0x2050102

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    aput v4, v3, p1

    .line 143
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sTextBottomGap:[I

    const v4, 0x2050101

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    aput v4, v3, p1

    .line 144
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextSize:[I

    const v4, 0x20500d4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    aput v4, v3, p1

    .line 145
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sSecondaryTextSize:[I

    const v4, 0x20500d7

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    aput v4, v3, p1

    .line 146
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextBaseline:[I

    const v4, 0x203007e

    invoke-static {p0, v4, v7}, Lcom/htc/widget/HtcListItemUtil;->getTextHeight(Landroid/content/Context;IZ)I

    move-result v4

    aput v4, v3, p1

    .line 147
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sSecondaryTextBaseline:[I

    const v4, 0x2030082

    invoke-static {p0, v4, v7}, Lcom/htc/widget/HtcListItemUtil;->getTextHeight(Landroid/content/Context;IZ)I

    move-result v4

    aput v4, v3, p1

    .line 148
    const/4 v3, 0x0

    sput-object v3, Lcom/htc/widget/HtcListItemUtil;->sTextView:Lcom/htc/widget/HtcFadingEdgeTextView;

    goto/16 :goto_2

    .line 149
    :cond_b
    if-ne p1, v8, :cond_9

    .line 151
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sMinListItemHeight:[I

    const v4, 0x2050012

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    aput v4, v3, p1

    .line 154
    new-instance v3, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcFadingEdgeTextView;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/htc/widget/HtcListItemUtil;->sTextView:Lcom/htc/widget/HtcFadingEdgeTextView;

    .line 155
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sTextTopGap:[I

    const v4, 0x20500fd

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    aput v4, v3, p1

    .line 156
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sTextCenterGap:[I

    const v4, 0x20500ff

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    aput v4, v3, p1

    .line 157
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sTextBottomGap:[I

    const v4, 0x20500fe

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    aput v4, v3, p1

    .line 158
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextSize:[I

    const v4, 0x20501f1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    aput v4, v3, p1

    .line 159
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sSecondaryTextSize:[I

    const v4, 0x20501f3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    aput v4, v3, p1

    .line 160
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sPrimaryTextBaseline:[I

    const v4, 0x203009d

    invoke-static {p0, v4, v7}, Lcom/htc/widget/HtcListItemUtil;->getTextHeight(Landroid/content/Context;IZ)I

    move-result v4

    aput v4, v3, p1

    .line 161
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sSecondaryTextBaseline:[I

    const v4, 0x2030096

    invoke-static {p0, v4, v7}, Lcom/htc/widget/HtcListItemUtil;->getTextHeight(Landroid/content/Context;IZ)I

    move-result v4

    aput v4, v3, p1

    .line 162
    const/4 v3, 0x0

    sput-object v3, Lcom/htc/widget/HtcListItemUtil;->sTextView:Lcom/htc/widget/HtcFadingEdgeTextView;

    goto/16 :goto_2

    .line 176
    :cond_c
    sget-object v3, Lcom/htc/widget/HtcListItemUtil;->sExtraGap:[I

    aput v7, v3, p1

    goto/16 :goto_3
.end method

.method static setViewOpacity(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "enabled"

    .prologue
    .line 378
    if-eqz p1, :cond_0

    .line 379
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 382
    :goto_0
    return-void

    .line 381
    :cond_0
    const v0, 0x3ecccccd

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
