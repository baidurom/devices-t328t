.class public Lcom/htc/widget/HtcListItemSeparator;
.super Landroid/widget/FrameLayout;
.source "HtcListItemSeparator.java"


# static fields
.field private static HEIGHT_AUTOMOTIVE_DARK:I = 0x0

.field private static HEIGHT_WITHOUT_ACTIONBUTTON:I = 0x0

.field private static HEIGHT_WITHOUT_TEXT:I = 0x0

.field private static HEIGHT_WITH_ACTIONBUTTON:I = 0x0

.field private static HEIGHT_WITH_TOGGLEBUTTON:I = 0x0

.field public static final ICON_LEFT:I = 0x0

.field private static final ICON_MAX_NUM:I = 0x2

.field public static final ICON_RIGHT:I = 0x1

.field private static M1:I = 0x0

.field private static M2:I = 0x0

.field private static M4:I = 0x0

.field private static M5:I = 0x0

.field private static M6:I = 0x0

.field private static M7:I = 0x0

.field public static final MODE_AUTOMOTIVE_DARK:I = 0x4

.field public static final MODE_AUTOMOTIVE_WHITE:I = 0x2

.field public static final MODE_DARK_STYLE:I = 0x1

.field public static final MODE_WHITE_STYLE:I = 0x0

.field public static final TEXT_LEFT:I = 0x0

.field private static final TEXT_MAX_NUM:I = 0x3

.field public static final TEXT_MIDDLE:I = 0x1

.field public static final TEXT_RIGHT:I = 0x2

.field private static final WIDTH_DIVIDER:I = 0x2

.field private static WIDTH_ICONBUTTON:I = 0x0

.field private static WIDTH_IMAGEBUTTON:I = 0x0

.field private static final WIDTH_TOGGLEBUTTON:I = 0x7a


# instance fields
.field private mButtonFound:Z

.field private mContext:Landroid/content/Context;

.field private mCustomTextStyle:[I

.field private mDivider:Landroid/widget/ImageView;

.field private mIconButton:Lcom/htc/widget/HtcIconButton;

.field private mImageButton:Lcom/htc/widget/HtcImageButton;

.field private mImageView:[Landroid/widget/ImageView;

.field private mIsIconButton:Z

.field private mIsImageButton:Z

.field private mIsToggleButton:Z

.field private mMode:I

.field private mTextView:[Landroid/widget/TextView;

.field private mToggleButton:Lcom/htc/widget/HtcToggleButton;

.field private mUseSectionDivider:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x7a

    const/4 v1, 0x7

    .line 62
    const/16 v0, 0x40

    sput v0, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_WITH_TOGGLEBUTTON:I

    .line 63
    const/16 v0, 0x28

    sput v0, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_WITH_ACTIONBUTTON:I

    .line 64
    const/16 v0, 0x24

    sput v0, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_WITHOUT_ACTIONBUTTON:I

    .line 65
    const/4 v0, 0x2

    sput v0, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_WITHOUT_TEXT:I

    .line 67
    const/4 v0, 0x0

    sput v0, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_AUTOMOTIVE_DARK:I

    .line 71
    const/16 v0, 0x16

    sput v0, Lcom/htc/widget/HtcListItemSeparator;->M1:I

    .line 72
    const/16 v0, 0x10

    sput v0, Lcom/htc/widget/HtcListItemSeparator;->M2:I

    .line 73
    const/16 v0, 0x9

    sput v0, Lcom/htc/widget/HtcListItemSeparator;->M4:I

    .line 74
    sput v1, Lcom/htc/widget/HtcListItemSeparator;->M5:I

    .line 75
    const/4 v0, 0x4

    sput v0, Lcom/htc/widget/HtcListItemSeparator;->M6:I

    .line 76
    sput v1, Lcom/htc/widget/HtcListItemSeparator;->M7:I

    .line 81
    sput v2, Lcom/htc/widget/HtcListItemSeparator;->WIDTH_ICONBUTTON:I

    .line 82
    sput v2, Lcom/htc/widget/HtcListItemSeparator;->WIDTH_IMAGEBUTTON:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mButtonFound:Z

    .line 39
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsIconButton:Z

    .line 40
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsToggleButton:Z

    .line 42
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsImageButton:Z

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mUseSectionDivider:Z

    .line 58
    iput v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mCustomTextStyle:[I

    .line 193
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemSeparator;->init(Landroid/content/Context;)V

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mButtonFound:Z

    .line 39
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsIconButton:Z

    .line 40
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsToggleButton:Z

    .line 42
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsImageButton:Z

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mUseSectionDivider:Z

    .line 58
    iput v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mCustomTextStyle:[I

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemSeparator;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 202
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mButtonFound:Z

    .line 39
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsIconButton:Z

    .line 40
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsToggleButton:Z

    .line 42
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsImageButton:Z

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mUseSectionDivider:Z

    .line 58
    iput v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mCustomTextStyle:[I

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemSeparator;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 204
    return-void
.end method

.method private changeTextColor(I)V
    .locals 6
    .parameter "style"

    .prologue
    .line 746
    const v1, 0x206004c

    .line 747
    .local v1, colorId:I
    if-nez p1, :cond_2

    .line 749
    const v1, 0x206004c

    .line 757
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    .local v0, arr$:[Landroid/widget/TextView;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 758
    .local v4, text:Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 759
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 757
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 750
    .end local v0           #arr$:[Landroid/widget/TextView;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #text:Landroid/widget/TextView;
    :cond_2
    const/4 v5, 0x1

    if-ne p1, v5, :cond_3

    .line 752
    const v1, 0x2060050

    goto :goto_0

    .line 753
    :cond_3
    const/4 v5, 0x4

    if-ne p1, v5, :cond_0

    .line 755
    const v1, 0x206004f

    goto :goto_0

    .line 760
    .restart local v0       #arr$:[Landroid/widget/TextView;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_4
    return-void
.end method

.method private findButton()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 211
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getChildCount()I

    move-result v0

    .line 213
    .local v0, count:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 214
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemSeparator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 215
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/htc/widget/HtcIconButton;

    if-eqz v3, :cond_1

    .line 216
    check-cast v2, Lcom/htc/widget/HtcIconButton;

    .end local v2           #v:Landroid/view/View;
    iput-object v2, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    .line 217
    iput-boolean v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mButtonFound:Z

    .line 218
    iput-boolean v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsIconButton:Z

    .line 219
    iput-boolean v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsToggleButton:Z

    .line 220
    iput-boolean v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mUseSectionDivider:Z

    .line 243
    :cond_0
    :goto_1
    return-void

    .line 222
    .restart local v2       #v:Landroid/view/View;
    :cond_1
    instance-of v3, v2, Lcom/htc/widget/HtcToggleButton;

    if-eqz v3, :cond_2

    .line 223
    check-cast v2, Lcom/htc/widget/HtcToggleButton;

    .end local v2           #v:Landroid/view/View;
    iput-object v2, p0, Lcom/htc/widget/HtcListItemSeparator;->mToggleButton:Lcom/htc/widget/HtcToggleButton;

    .line 224
    iget-object v3, p0, Lcom/htc/widget/HtcListItemSeparator;->mToggleButton:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcToggleButton;->setFocusable(Z)V

    .line 225
    iput-boolean v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mButtonFound:Z

    .line 226
    iput-boolean v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsIconButton:Z

    .line 227
    iput-boolean v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsToggleButton:Z

    .line 228
    iput-boolean v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mUseSectionDivider:Z

    goto :goto_1

    .line 232
    .restart local v2       #v:Landroid/view/View;
    :cond_2
    instance-of v3, v2, Lcom/htc/widget/HtcImageButton;

    if-eqz v3, :cond_3

    .line 233
    check-cast v2, Lcom/htc/widget/HtcImageButton;

    .end local v2           #v:Landroid/view/View;
    iput-object v2, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageButton:Lcom/htc/widget/HtcImageButton;

    .line 234
    iput-boolean v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mButtonFound:Z

    .line 235
    iput-boolean v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsIconButton:Z

    .line 236
    iput-boolean v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsToggleButton:Z

    .line 237
    iput-boolean v5, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsImageButton:Z

    .line 238
    iput-boolean v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mUseSectionDivider:Z

    goto :goto_1

    .line 213
    .restart local v2       #v:Landroid/view/View;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private getImageView(I)Landroid/widget/ImageView;
    .locals 4
    .parameter "whichIcon"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p1

    .line 611
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemSeparator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 613
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mUseSectionDivider:Z

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private getTextView(I)Landroid/widget/TextView;
    .locals 5
    .parameter "whichText"

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 571
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p1

    .line 573
    if-nez p1, :cond_0

    .line 574
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 575
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemSeparator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 579
    iput-boolean v3, p0, Lcom/htc/widget/HtcListItemSeparator;->mUseSectionDivider:Z

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemSeparator;->initSize(Landroid/content/Context;)V

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    .line 91
    iput-object p1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    .line 94
    iget v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundStyle(I)V

    .line 95
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 98
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemSeparator;->initSize(Landroid/content/Context;)V

    .line 99
    new-array v4, v9, [Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    .line 100
    new-array v4, v7, [Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    .line 101
    iput-object p1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    .line 104
    sget-object v4, Lcom/htc/R$styleable;->HtcListItemSeparator:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, a:Landroid/content/res/TypedArray;
    new-array v3, v9, [Ljava/lang/String;

    .line 110
    .local v3, texts:[Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 111
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 112
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 114
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 115
    aget-object v4, v3, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 116
    invoke-direct {p0, v1}, Lcom/htc/widget/HtcListItemSeparator;->getTextView(I)Landroid/widget/TextView;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_1
    new-array v2, v7, [I

    .line 120
    .local v2, iconIds:[I
    invoke-virtual {v0, v9, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v2, v6

    .line 121
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v2, v8

    .line 123
    const/4 v1, 0x0

    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_3

    .line 124
    aget v4, v2, v1

    if-eqz v4, :cond_2

    .line 125
    invoke-direct {p0, v1}, Lcom/htc/widget/HtcListItemSeparator;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v4

    aget v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 126
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    sget-object v4, Lcom/htc/R$styleable;->HtcListItemTextComponentMode:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    .line 131
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    iget v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundStyle(I)V

    .line 136
    return-void
.end method

.method private initSize(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const v2, 0x2050109

    .line 159
    if-nez p1, :cond_0

    .line 189
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 163
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x2050012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_WITH_TOGGLEBUTTON:I

    .line 166
    const v1, 0x2050108

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_WITH_ACTIONBUTTON:I

    .line 169
    const v1, 0x2050107

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_WITHOUT_ACTIONBUTTON:I

    .line 172
    const v1, 0x2050106

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_WITHOUT_TEXT:I

    .line 175
    const v1, 0x205010a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_AUTOMOTIVE_DARK:I

    .line 177
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/widget/HtcListItemSeparator;->WIDTH_ICONBUTTON:I

    .line 179
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/widget/HtcListItemSeparator;->WIDTH_IMAGEBUTTON:I

    .line 183
    const/high16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/widget/HtcListItemSeparator;->M1:I

    .line 184
    const v1, 0x2050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/widget/HtcListItemSeparator;->M2:I

    .line 185
    const v1, 0x2050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/widget/HtcListItemSeparator;->M4:I

    .line 186
    const v1, 0x205000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/widget/HtcListItemSeparator;->M5:I

    .line 187
    const v1, 0x205000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/widget/HtcListItemSeparator;->M6:I

    .line 188
    sget v1, Lcom/htc/widget/HtcListItemSeparator;->M5:I

    sput v1, Lcom/htc/widget/HtcListItemSeparator;->M7:I

    goto :goto_0
.end method

.method private isVisible(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    .line 737
    if-nez p1, :cond_1

    .line 741
    :cond_0
    :goto_0
    return v0

    .line 739
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 740
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private removeButton()V
    .locals 4

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getChildCount()I

    move-result v0

    .line 785
    .local v0, count:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 786
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemSeparator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 787
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/htc/widget/HtcIconButton;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/htc/widget/HtcToggleButton;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/htc/widget/HtcImageButton;

    if-eqz v3, :cond_1

    .line 788
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListItemSeparator;->removeView(Landroid/view/View;)V

    .line 785
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 791
    .end local v2           #v:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private setBackgroundImage(I)V
    .locals 2
    .parameter "mode"

    .prologue
    const v1, 0x208011e

    .line 668
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mUseSectionDivider:Z

    if-eqz v0, :cond_1

    .line 669
    const v0, 0x2080042

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundResource(I)V

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    if-nez p1, :cond_2

    .line 673
    const v0, 0x2080099

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundResource(I)V

    goto :goto_0

    .line 674
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 675
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundResource(I)V

    goto :goto_0

    .line 677
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 678
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setDivider(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const v4, 0x2080036

    .line 143
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    .line 145
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemSeparator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    :cond_0
    if-nez p1, :cond_2

    .line 148
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    const v1, 0x2080037

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 155
    :cond_1
    :goto_0
    return-void

    .line 149
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 150
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 152
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setTextAppearance(I)V
    .locals 7
    .parameter "style"

    .prologue
    const v6, 0x2030048

    const v5, 0x2030006

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 689
    if-nez p1, :cond_5

    .line 690
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 691
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    const v2, 0x203004d

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 692
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 693
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    const v2, 0x203004d

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 702
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v6}, Lcom/htc/widget/HtcIconButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 732
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemSeparator;->changeTextColor(I)V

    .line 734
    return-void

    .line 695
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 696
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 697
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 698
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 699
    :cond_4
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 705
    :cond_5
    if-ne p1, v3, :cond_a

    .line 706
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 707
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    const v2, 0x203000b

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 708
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 709
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    const v2, 0x203000b

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 718
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_1

    .line 719
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v5}, Lcom/htc/widget/HtcIconButton;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 711
    :cond_7
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 712
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 713
    :cond_8
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 714
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 715
    :cond_9
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 716
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_2

    .line 722
    :cond_a
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 724
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    const v2, 0x2030086

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 725
    :cond_b
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 726
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    const v2, 0x2030086

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 727
    :cond_c
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 728
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    const v2, 0x2030086

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 729
    :cond_d
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_1

    .line 730
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    const v2, 0x2030086

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcIconButton;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_1
.end method

.method private setupCustomTextStyle()V
    .locals 4

    .prologue
    .line 774
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 775
    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mCustomTextStyle:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 776
    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/widget/HtcListItemSeparator;->mCustomTextStyle:[I

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 774
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 780
    :cond_1
    return-void
.end method


# virtual methods
.method public getIcon(I)Landroid/widget/ImageView;
    .locals 1
    .parameter "whichIcon"

    .prologue
    .line 624
    packed-switch p1, :pswitch_data_0

    .line 630
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 627
    :pswitch_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    goto :goto_0

    .line 624
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 361
    const/4 v5, 0x0

    .line 362
    .local v5, width:I
    const/4 v0, 0x0

    .line 363
    .local v0, height:I
    const/4 v4, 0x0

    .line 364
    .local v4, tmpright:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v3

    .line 365
    .local v3, tmpleft:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v2

    .line 367
    .local v2, rightedge:I
    move v1, v3

    .line 370
    .local v1, rightBoundary:I
    iget-boolean v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mButtonFound:Z

    if-eqz v6, :cond_0

    .line 371
    iget-boolean v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsIconButton:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v6}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_4

    .line 373
    sget v5, Lcom/htc/widget/HtcListItemSeparator;->WIDTH_ICONBUTTON:I

    .line 374
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v6}, Lcom/htc/widget/HtcIconButton;->getMeasuredHeight()I

    move-result v0

    .line 375
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v8, v0

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v0

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/htc/widget/HtcIconButton;->layout(IIII)V

    .line 381
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v6

    sub-int v3, v6, v5

    .line 382
    const/4 v5, 0x2

    .line 383
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    .line 384
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    sub-int v7, v3, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v8, v0

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v0

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v6, v7, v8, v3, v9}, Landroid/widget/ImageView;->layout(IIII)V

    .line 389
    sub-int/2addr v3, v5

    .line 390
    move v2, v3

    .line 392
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    :goto_0
    move v1, v3

    .line 436
    :cond_0
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_7

    .line 437
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    .line 438
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    .line 439
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    sget v7, Lcom/htc/widget/HtcListItemSeparator;->M5:I

    sub-int v7, v3, v7

    sub-int/2addr v7, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v8, v0

    div-int/lit8 v8, v8, 0x2

    sget v9, Lcom/htc/widget/HtcListItemSeparator;->M5:I

    sub-int v9, v3, v9

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v0

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/ImageView;->layout(IIII)V

    .line 445
    sub-int v6, v3, v5

    sget v7, Lcom/htc/widget/HtcListItemSeparator;->M5:I

    sub-int/2addr v6, v7

    sget v7, Lcom/htc/widget/HtcListItemSeparator;->M7:I

    sub-int v3, v6, v7

    .line 446
    move v1, v3

    .line 447
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    .line 448
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    .line 449
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 450
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    sub-int v7, v3, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v8, v0

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v0

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v6, v7, v8, v3, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 455
    sub-int v1, v3, v5

    .line 470
    :cond_1
    :goto_1
    sget v6, Lcom/htc/widget/HtcListItemSeparator;->M2:I

    sub-int/2addr v1, v6

    .line 472
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_9

    .line 473
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    .line 474
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    .line 475
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    sget v7, Lcom/htc/widget/HtcListItemSeparator;->M5:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v8, v0

    div-int/lit8 v8, v8, 0x2

    sget v9, Lcom/htc/widget/HtcListItemSeparator;->M5:I

    add-int/2addr v9, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v0

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/ImageView;->layout(IIII)V

    .line 481
    sget v6, Lcom/htc/widget/HtcListItemSeparator;->M5:I

    add-int/2addr v6, v5

    sget v7, Lcom/htc/widget/HtcListItemSeparator;->M7:I

    add-int v4, v6, v7

    .line 482
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_2

    .line 483
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    .line 484
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 486
    add-int v6, v4, v5

    if-gt v6, v1, :cond_8

    .line 487
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    add-int v8, v4, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v0

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v6, v4, v7, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 531
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_3

    .line 532
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    .line 533
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 534
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    sub-int v7, v2, v5

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v8, v0

    div-int/lit8 v8, v8, 0x2

    add-int v9, v2, v5

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v0

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->layout(IIII)V

    .line 540
    :cond_3
    return-void

    .line 393
    :cond_4
    iget-boolean v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsToggleButton:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mToggleButton:Lcom/htc/widget/HtcToggleButton;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mToggleButton:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v6}, Lcom/htc/widget/HtcToggleButton;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_5

    .line 395
    const/16 v5, 0x7a

    .line 396
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mToggleButton:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v6}, Lcom/htc/widget/HtcToggleButton;->getMeasuredHeight()I

    move-result v0

    .line 397
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mToggleButton:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v8, v0

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v0

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/htc/widget/HtcToggleButton;->layout(IIII)V

    .line 403
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v6

    sub-int v3, v6, v5

    .line 404
    move v2, v3

    .line 406
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 407
    :cond_5
    iget-boolean v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsImageButton:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageButton:Lcom/htc/widget/HtcImageButton;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v6}, Lcom/htc/widget/HtcImageButton;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_6

    .line 409
    sget v5, Lcom/htc/widget/HtcListItemSeparator;->WIDTH_IMAGEBUTTON:I

    .line 410
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {v6}, Lcom/htc/widget/HtcImageButton;->getMeasuredHeight()I

    move-result v0

    .line 411
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageButton:Lcom/htc/widget/HtcImageButton;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v8, v0

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v0

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/htc/widget/HtcImageButton;->layout(IIII)V

    .line 417
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v6

    sub-int v3, v6, v5

    .line 418
    const/4 v5, 0x2

    .line 419
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    .line 420
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    sub-int v7, v3, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v8, v0

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v0

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v6, v7, v8, v3, v9}, Landroid/widget/ImageView;->layout(IIII)V

    .line 425
    sub-int/2addr v3, v5

    .line 426
    move v2, v3

    .line 428
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 430
    :cond_6
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 458
    :cond_7
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    .line 459
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    .line 460
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 461
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    sub-int v7, v3, v5

    sget v8, Lcom/htc/widget/HtcListItemSeparator;->M2:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v8, v0

    div-int/lit8 v8, v8, 0x2

    sget v9, Lcom/htc/widget/HtcListItemSeparator;->M2:I

    sub-int v9, v3, v9

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v0

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->layout(IIII)V

    .line 466
    sub-int v6, v3, v5

    sget v7, Lcom/htc/widget/HtcListItemSeparator;->M2:I

    sub-int v1, v6, v7

    goto/16 :goto_1

    .line 493
    :cond_8
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v0

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v6, v4, v7, v1, v8}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_2

    .line 501
    :cond_9
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_2

    .line 502
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    .line 503
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 505
    iget v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_a

    .line 506
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    sget v7, Lcom/htc/widget/HtcListItemSeparator;->M1:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v8, v0

    div-int/lit8 v8, v8, 0x2

    sget v9, Lcom/htc/widget/HtcListItemSeparator;->M1:I

    add-int/2addr v9, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v0

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_2

    .line 512
    :cond_a
    sget v6, Lcom/htc/widget/HtcListItemSeparator;->M2:I

    add-int/2addr v6, v5

    if-gt v6, v1, :cond_b

    .line 513
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    sget v7, Lcom/htc/widget/HtcListItemSeparator;->M2:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v8, v0

    div-int/lit8 v8, v8, 0x2

    sget v9, Lcom/htc/widget/HtcListItemSeparator;->M2:I

    add-int/2addr v9, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v0

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_2

    .line 519
    :cond_b
    iget-object v6, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    sget v7, Lcom/htc/widget/HtcListItemSeparator;->M2:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v8, v0

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v0

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v6, v7, v8, v1, v9}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "wSpec"
    .parameter "hSpec"

    .prologue
    .line 252
    iget-boolean v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mButtonFound:Z

    if-nez v10, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemSeparator;->findButton()V

    .line 256
    :cond_0
    iget v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundStyle(I)V

    .line 257
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemSeparator;->setupCustomTextStyle()V

    .line 260
    const/4 v9, 0x0

    .line 261
    .local v9, w:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 273
    :goto_0
    :sswitch_0
    const/4 v7, 0x0

    .line 276
    .local v7, maxHeight:I
    iget v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_5

    .line 277
    iget-boolean v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mButtonFound:Z

    if-eqz v10, :cond_4

    .line 278
    iget-boolean v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsIconButton:Z

    if-eqz v10, :cond_1

    .line 279
    sget v7, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_WITH_ACTIONBUTTON:I

    .line 280
    :cond_1
    iget-boolean v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsToggleButton:Z

    if-eqz v10, :cond_2

    .line 281
    sget v7, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_WITH_TOGGLEBUTTON:I

    .line 283
    :cond_2
    iget-boolean v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsImageButton:Z

    if-eqz v10, :cond_3

    .line 285
    sget v7, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_WITH_ACTIONBUTTON:I

    .line 291
    :cond_3
    :goto_1
    iget-object v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    const/4 v11, 0x2

    aget-object v10, v10, v11

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mToggleButton:Lcom/htc/widget/HtcToggleButton;

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageButton:Lcom/htc/widget/HtcImageButton;

    if-nez v10, :cond_6

    .line 294
    sget v7, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_WITHOUT_TEXT:I

    .line 295
    const v10, 0x2080042

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundResource(I)V

    .line 296
    invoke-virtual {p0, v9, v7}, Lcom/htc/widget/HtcListItemSeparator;->setMeasuredDimension(II)V

    .line 354
    :goto_2
    return-void

    .line 264
    .end local v7           #maxHeight:I
    :sswitch_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 265
    goto :goto_0

    .line 288
    .restart local v7       #maxHeight:I
    :cond_4
    sget v7, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_WITHOUT_ACTIONBUTTON:I

    goto :goto_1

    .line 301
    :cond_5
    sget v7, Lcom/htc/widget/HtcListItemSeparator;->HEIGHT_AUTOMOTIVE_DARK:I

    .line 306
    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemSeparator;->getChildCount()I

    move-result v2

    .line 308
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v2, :cond_7

    .line 309
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListItemSeparator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 310
    .local v1, child:Landroid/view/View;
    invoke-virtual {p0, v1, p1, p2}, Lcom/htc/widget/HtcListItemSeparator;->measureChild(Landroid/view/View;II)V

    .line 308
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 314
    .end local v1           #child:Landroid/view/View;
    :cond_7
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    .local v0, arr$:[Landroid/widget/TextView;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_4
    if-ge v5, v6, :cond_9

    aget-object v8, v0, v5

    .line 315
    .local v8, text:Landroid/widget/TextView;
    if-eqz v8, :cond_8

    .line 316
    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 314
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 320
    .end local v8           #text:Landroid/widget/TextView;
    :cond_9
    const/4 v3, 0x0

    .line 321
    .local v3, dividerHeight:I
    iget-boolean v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsIconButton:Z

    if-eqz v10, :cond_e

    .line 322
    sget v10, Lcom/htc/widget/HtcListItemSeparator;->M4:I

    mul-int/lit8 v10, v10, 0x2

    sub-int v3, v7, v10

    .line 329
    :cond_a
    :goto_5
    iget-object v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mDivider:Landroid/widget/ImageView;

    const/4 v11, 0x2

    const/high16 v12, 0x4000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/high16 v12, 0x4000

    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/ImageView;->measure(II)V

    .line 334
    iget-boolean v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mButtonFound:Z

    if-eqz v10, :cond_d

    .line 335
    iget-boolean v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsIconButton:Z

    if-eqz v10, :cond_b

    .line 336
    iget-object v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    sget v11, Lcom/htc/widget/HtcListItemSeparator;->WIDTH_ICONBUTTON:I

    const/high16 v12, 0x4000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/high16 v12, 0x4000

    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcIconButton;->measure(II)V

    .line 340
    :cond_b
    iget-boolean v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsToggleButton:Z

    if-eqz v10, :cond_c

    .line 341
    iget-object v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mToggleButton:Lcom/htc/widget/HtcToggleButton;

    const/16 v11, 0x7a

    const/high16 v12, 0x4000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/high16 v12, 0x4000

    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcToggleButton;->measure(II)V

    .line 346
    :cond_c
    iget-boolean v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsImageButton:Z

    if-eqz v10, :cond_d

    .line 347
    iget-object v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageButton:Lcom/htc/widget/HtcImageButton;

    sget v11, Lcom/htc/widget/HtcListItemSeparator;->WIDTH_IMAGEBUTTON:I

    const/high16 v12, 0x4000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/high16 v12, 0x4000

    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/htc/widget/HtcImageButton;->measure(II)V

    .line 353
    :cond_d
    invoke-virtual {p0, v9, v7}, Lcom/htc/widget/HtcListItemSeparator;->setMeasuredDimension(II)V

    goto/16 :goto_2

    .line 323
    :cond_e
    iget-boolean v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsToggleButton:Z

    if-eqz v10, :cond_f

    .line 324
    sget v10, Lcom/htc/widget/HtcListItemSeparator;->M2:I

    mul-int/lit8 v10, v10, 0x2

    sub-int v3, v7, v10

    goto :goto_5

    .line 326
    :cond_f
    iget-boolean v10, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsImageButton:Z

    if-eqz v10, :cond_a

    .line 327
    sget v10, Lcom/htc/widget/HtcListItemSeparator;->M4:I

    mul-int/lit8 v10, v10, 0x2

    sub-int v3, v7, v10

    goto :goto_5

    .line 261
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public setBackgroundStyle(I)V
    .locals 2
    .parameter "style"

    .prologue
    const/4 v1, 0x1

    .line 642
    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    iput p1, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    .line 645
    iget v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundImage(I)V

    .line 646
    iget v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->setDivider(I)V

    .line 647
    iget v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->setTextAppearance(I)V

    .line 648
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mToggleButton:Lcom/htc/widget/HtcToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mToggleButton:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcToggleButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 649
    iget v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 651
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mToggleButton:Lcom/htc/widget/HtcToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setMode(I)V

    goto :goto_0

    .line 654
    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mToggleButton:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setMode(I)V

    goto :goto_0

    .line 658
    :pswitch_3
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mToggleButton:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setMode(I)V

    goto :goto_0

    .line 649
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setIcon(II)V
    .locals 1
    .parameter "whichIcon"
    .parameter "resId"

    .prologue
    .line 601
    packed-switch p1, :pswitch_data_0

    .line 606
    :goto_0
    return-void

    .line 604
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemSeparator;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 601
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setIcon(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "whichIcon"
    .parameter "d"

    .prologue
    .line 589
    packed-switch p1, :pswitch_data_0

    .line 594
    :goto_0
    return-void

    .line 592
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemSeparator;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 589
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setIconButton(Lcom/htc/widget/HtcIconButton;)V
    .locals 5
    .parameter "iconButton"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 794
    if-eqz p1, :cond_0

    .line 795
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcListItemSeparator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 796
    iput-object p1, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    .line 797
    iput-boolean v3, p0, Lcom/htc/widget/HtcListItemSeparator;->mButtonFound:Z

    .line 798
    iput-boolean v3, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsIconButton:Z

    .line 799
    iput-boolean v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsToggleButton:Z

    .line 800
    iput-boolean v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mUseSectionDivider:Z

    .line 801
    iget v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    if-nez v0, :cond_1

    .line 802
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    const v2, 0x2030048

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcIconButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 803
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    if-ne v0, v3, :cond_2

    .line 804
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    const v2, 0x2030006

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcIconButton;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 807
    :cond_2
    iget v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 808
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/widget/HtcIconButton;

    iget-object v1, p0, Lcom/htc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    const v2, 0x2030086

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcIconButton;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public setImageButton(Lcom/htc/widget/HtcImageButton;)V
    .locals 5
    .parameter "imageButton"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 816
    if-eqz p1, :cond_0

    .line 817
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcListItemSeparator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 818
    iput-object p1, p0, Lcom/htc/widget/HtcListItemSeparator;->mImageButton:Lcom/htc/widget/HtcImageButton;

    .line 819
    iput-boolean v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mButtonFound:Z

    .line 820
    iput-boolean v3, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsIconButton:Z

    .line 821
    iput-boolean v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsImageButton:Z

    .line 822
    iput-boolean v3, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsToggleButton:Z

    .line 823
    iput-boolean v3, p0, Lcom/htc/widget/HtcListItemSeparator;->mUseSectionDivider:Z

    .line 825
    :cond_0
    return-void
.end method

.method public setText(II)V
    .locals 1
    .parameter "whichText"
    .parameter "resId"

    .prologue
    .line 561
    packed-switch p1, :pswitch_data_0

    .line 568
    :goto_0
    return-void

    .line 565
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemSeparator;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 566
    iget v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->setTextAppearance(I)V

    goto :goto_0

    .line 561
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setText(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "whichText"
    .parameter "text"

    .prologue
    .line 547
    packed-switch p1, :pswitch_data_0

    .line 554
    :goto_0
    return-void

    .line 551
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemSeparator;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mMode:I

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItemSeparator;->setTextAppearance(I)V

    goto :goto_0

    .line 547
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setTextStyle(II)V
    .locals 1
    .parameter "index"
    .parameter "style"

    .prologue
    .line 769
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/htc/widget/HtcListItemSeparator;->mCustomTextStyle:[I

    aput p2, v0, p1

    .line 771
    :cond_0
    return-void
.end method

.method public setToggleButton(Lcom/htc/widget/HtcToggleButton;)V
    .locals 5
    .parameter "toggleButton"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 833
    if-eqz p1, :cond_0

    .line 834
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcListItemSeparator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 835
    iput-object p1, p0, Lcom/htc/widget/HtcListItemSeparator;->mToggleButton:Lcom/htc/widget/HtcToggleButton;

    .line 836
    iput-boolean v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mButtonFound:Z

    .line 837
    iput-boolean v3, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsIconButton:Z

    .line 838
    iput-boolean v4, p0, Lcom/htc/widget/HtcListItemSeparator;->mIsToggleButton:Z

    .line 839
    iput-boolean v3, p0, Lcom/htc/widget/HtcListItemSeparator;->mUseSectionDivider:Z

    .line 841
    :cond_0
    return-void
.end method
