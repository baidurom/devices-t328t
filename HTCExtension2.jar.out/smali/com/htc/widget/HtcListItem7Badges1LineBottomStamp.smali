.class public Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;
.super Landroid/widget/FrameLayout;
.source "HtcListItem7Badges1LineBottomStamp.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemComponent;


# static fields
.field static final MAX_BADGES:I = 0x6

.field public static final MAX_BADGE_COUNTS:I = 0x8

.field public static final MODE_DARK_LIST:I = 0x1

.field public static final MODE_WHITE_LIST:I


# instance fields
.field private mAtLeast1BadgeVisible:Z

.field private mBadgeGap:I

.field private mBadges:[Landroid/widget/ImageView;

.field private mBadgesMaxHeight:I

.field private mContext:Landroid/content/Context;

.field private mFlagButton:Lcom/htc/widget/HtcFlagButton;

.field mIsAutomotiveMode:Z

.field private mIsMarqueeEnabled:Z

.field mItemMode:I

.field private mMode:I

.field private mStamp:Landroid/widget/TextView;

.field private mStampStyle:I

.field private mToggleButton:Landroid/widget/ToggleButton;

.field private mToggleButtonSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 161
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mContext:Landroid/content/Context;

    .line 41
    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgesMaxHeight:I

    .line 43
    iput-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    .line 47
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mAtLeast1BadgeVisible:Z

    .line 49
    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStampStyle:I

    .line 63
    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mMode:I

    .line 65
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mIsMarqueeEnabled:Z

    .line 66
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mIsAutomotiveMode:Z

    .line 502
    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mItemMode:I

    .line 162
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->init(Landroid/content/Context;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "mode"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 176
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mContext:Landroid/content/Context;

    .line 41
    iput v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgesMaxHeight:I

    .line 43
    iput-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    .line 47
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mAtLeast1BadgeVisible:Z

    .line 49
    iput v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStampStyle:I

    .line 63
    iput v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mMode:I

    .line 65
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mIsMarqueeEnabled:Z

    .line 66
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mIsAutomotiveMode:Z

    .line 502
    iput v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mItemMode:I

    .line 177
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    .line 178
    iput p2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mMode:I

    .line 182
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->init(Landroid/content/Context;)V

    .line 183
    return-void

    .line 180
    :cond_0
    iput v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mMode:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mContext:Landroid/content/Context;

    .line 41
    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgesMaxHeight:I

    .line 43
    iput-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    .line 47
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mAtLeast1BadgeVisible:Z

    .line 49
    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStampStyle:I

    .line 63
    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mMode:I

    .line 65
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mIsMarqueeEnabled:Z

    .line 66
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mIsAutomotiveMode:Z

    .line 502
    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mItemMode:I

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 171
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mContext:Landroid/content/Context;

    .line 41
    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgesMaxHeight:I

    .line 43
    iput-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    .line 47
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mAtLeast1BadgeVisible:Z

    .line 49
    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStampStyle:I

    .line 63
    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mMode:I

    .line 65
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mIsMarqueeEnabled:Z

    .line 66
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mIsAutomotiveMode:Z

    .line 502
    iput v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mItemMode:I

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 173
    return-void
.end method

.method private addAllChild()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 81
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/16 v5, 0x8

    const v4, 0x20800d7

    const/4 v3, 0x0

    .line 95
    iget v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mItemMode:I

    invoke-static {p1, v1}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 97
    iput-object p1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mContext:Landroid/content/Context;

    .line 98
    const/4 v1, 0x6

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    .line 99
    new-instance v1, Landroid/widget/ToggleButton;

    invoke-direct {v1, p1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    .line 100
    new-instance v1, Lcom/htc/widget/HtcFlagButton;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcFlagButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    .line 101
    new-instance v1, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    .line 109
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 111
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, v3

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, v7

    const v2, 0x20800db

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM6()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgeGap:I

    .line 133
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    const v2, 0x208016c

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    .line 134
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 135
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setFocusable(Z)V

    .line 136
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v5}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 137
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v6}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v6}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v6}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcFlagButton;->setVisibility(I)V

    .line 142
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-boolean v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mIsMarqueeEnabled:Z

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->enableMarquee(Z)V

    .line 146
    iget v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mMode:I

    if-nez v1, :cond_1

    .line 147
    const v1, 0x2030045

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setStampTextStyle(I)V

    .line 152
    :goto_1
    iput v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mPaddingTop:I

    .line 153
    iput v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mPaddingRight:I

    .line 154
    iput v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mPaddingLeft:I

    .line 155
    iput v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mPaddingBottom:I

    .line 157
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->addAllChild()V

    .line 158
    return-void

    .line 149
    :cond_1
    const v1, 0x2030024

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setStampTextStyle(I)V

    goto :goto_1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 69
    if-eqz p2, :cond_0

    .line 70
    sget-object v1, Lcom/htc/R$styleable;->HtcListItemTextComponentMode:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 71
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mMode:I

    .line 72
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mIsMarqueeEnabled:Z

    .line 77
    .end local v0           #a:Landroid/content/res/TypedArray;
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->init(Landroid/content/Context;)V

    .line 78
    return-void

    .line 74
    :cond_0
    iput v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mMode:I

    .line 75
    iput-boolean v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mIsMarqueeEnabled:Z

    goto :goto_0
.end method

.method private layoutBadges(Z)V
    .locals 9
    .parameter "isCenter"

    .prologue
    const/16 v8, 0x8

    const/high16 v7, 0x3f00

    .line 322
    const/4 v4, 0x0

    .line 323
    .local v4, top:I
    iget v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mItemMode:I

    invoke-static {v5}, Lcom/htc/widget/HtcListItemUtil;->getDesiredCenterFor7Badge(I)I

    move-result v0

    .line 325
    .local v0, center:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->getMeasuredWidth()I

    move-result v2

    .local v2, left:I
    move v3, v2

    .line 327
    .local v3, right:I
    if-eqz p1, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgesMaxHeight:I

    sub-int/2addr v5, v6

    div-int/lit8 v4, v5, 0x2

    .line 331
    :cond_0
    iget-object v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    invoke-virtual {v5}, Lcom/htc/widget/HtcFlagButton;->getVisibility()I

    move-result v5

    if-eq v5, v8, :cond_2

    .line 332
    if-nez p1, :cond_1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    invoke-virtual {v6}, Lcom/htc/widget/HtcFlagButton;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v4, v5

    .line 334
    :cond_1
    iget-object v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    invoke-virtual {v5}, Lcom/htc/widget/HtcFlagButton;->getMeasuredWidth()I

    move-result v5

    sub-int v2, v3, v5

    .line 335
    iget-object v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    iget-object v6, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    invoke-virtual {v6}, Lcom/htc/widget/HtcFlagButton;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v5, v2, v4, v3, v6}, Lcom/htc/widget/HtcFlagButton;->layout(IIII)V

    .line 336
    iget v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgeGap:I

    sub-int v3, v2, v5

    .line 339
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v5

    if-eq v5, v8, :cond_4

    .line 340
    if-nez p1, :cond_3

    int-to-float v5, v0

    iget v6, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButtonSize:I

    int-to-float v6, v6

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v4, v5

    .line 342
    :cond_3
    iget-object v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5}, Landroid/widget/ToggleButton;->getMeasuredWidth()I

    move-result v5

    sub-int v2, v3, v5

    .line 343
    iget-object v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    iget v6, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButtonSize:I

    add-int/2addr v6, v4

    invoke-virtual {v5, v2, v4, v3, v6}, Landroid/widget/ToggleButton;->layout(IIII)V

    .line 344
    iget v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgeGap:I

    sub-int v3, v2, v5

    .line 347
    :cond_4
    const/4 v1, 0x5

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_7

    .line 348
    iget-object v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eq v5, v8, :cond_6

    .line 349
    if-nez p1, :cond_5

    int-to-float v5, v0

    iget-object v6, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v4, v5

    .line 351
    :cond_5
    iget-object v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    sub-int v2, v3, v5

    .line 353
    iget-object v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v5, v2, v4, v3, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 354
    iget v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgeGap:I

    sub-int v3, v2, v5

    .line 347
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 357
    :cond_7
    return-void
.end method

.method private layoutStamp(I)V
    .locals 4
    .parameter "top"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 314
    return-void
.end method

.method private setDefaultTextStyle()V
    .locals 2

    .prologue
    .line 487
    iget v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mItemMode:I

    if-nez v0, :cond_2

    .line 488
    iget v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mMode:I

    if-nez v0, :cond_1

    .line 489
    const v0, 0x2030045

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setStampTextStyle(I)V

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    const v0, 0x2030024

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setStampTextStyle(I)V

    goto :goto_0

    .line 493
    :cond_2
    iget v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mItemMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 494
    iget v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mMode:I

    if-nez v0, :cond_3

    .line 495
    const v0, 0x2030091

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setStampTextStyle(I)V

    goto :goto_0

    .line 497
    :cond_3
    const v0, 0x2030090

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setStampTextStyle(I)V

    goto :goto_0
.end method


# virtual methods
.method public enableMarquee(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 481
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mIsMarqueeEnabled:Z

    .line 482
    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    check-cast v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;->setEnableMarquee(Z)V

    .line 484
    return-void
.end method

.method public getBadge(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    const/4 v0, 0x6

    .line 401
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    .line 408
    :goto_0
    return-object v0

    .line 403
    :cond_0
    if-ne p1, v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    goto :goto_0

    .line 405
    :cond_1
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    goto :goto_0

    .line 408
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBadgeState(I)Z
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 385
    if-ltz p1, :cond_2

    if-ge p1, v2, :cond_2

    .line 386
    iget-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 392
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 386
    goto :goto_0

    .line 387
    :cond_2
    if-ne p1, v2, :cond_3

    .line 388
    iget-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 389
    :cond_3
    const/4 v2, 0x7

    if-ne p1, v2, :cond_4

    .line 390
    iget-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    invoke-virtual {v2}, Lcom/htc/widget/HtcFlagButton;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 392
    goto :goto_0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 205
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 213
    :goto_0
    return-object v0

    .line 208
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 211
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 212
    iput-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public getTextStamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public notifyItemMode(I)V
    .locals 2
    .parameter "itemMode"

    .prologue
    .line 507
    iput p1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mItemMode:I

    .line 508
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mItemMode:I

    invoke-static {v0, v1}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 509
    iget v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mItemMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mIsAutomotiveMode:Z

    .line 510
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setDefaultTextStyle()V

    .line 511
    return-void

    .line 509
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/16 v2, 0x8

    .line 296
    iget-boolean v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mAtLeast1BadgeVisible:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 297
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->layoutBadges(Z)V

    .line 298
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBaseline()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mItemMode:I

    invoke-static {v2}, Lcom/htc/widget/HtcListItemUtil;->getDesiredBottomGap(I)I

    move-result v2

    sub-int v0, v1, v2

    .line 299
    .local v0, top:I
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->layoutStamp(I)V

    .line 306
    .end local v0           #top:I
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-boolean v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mAtLeast1BadgeVisible:Z

    if-eqz v1, :cond_2

    .line 301
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->layoutBadges(Z)V

    goto :goto_0

    .line 302
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 304
    .restart local v0       #top:I
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->layoutStamp(I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "w"
    .parameter "h"

    .prologue
    const/16 v8, 0x8

    .line 230
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 232
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mAtLeast1BadgeVisible:Z

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, badgesTotalWidth:I
    const/4 v3, 0x0

    .line 237
    .local v3, totalHeight:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v4, 0x6

    if-ge v2, v4, :cond_1

    .line 238
    iget-object v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eq v4, v8, :cond_0

    .line 239
    iget v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButtonSize:I

    iget-object v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButtonSize:I

    .line 241
    iget-object v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgeGap:I

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 242
    iget v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgesMaxHeight:I

    iget-object v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgesMaxHeight:I

    .line 237
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    :cond_1
    iget-object v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v4

    if-eq v4, v8, :cond_2

    .line 247
    iget v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButtonSize:I

    const/16 v5, 0x20

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButtonSize:I

    .line 248
    iget-object v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButtonSize:I

    iget v7, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButtonSize:I

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    iget-object v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0, v4, p1, p2}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->measureChild(Landroid/view/View;II)V

    .line 251
    iget v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButtonSize:I

    iget v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgeGap:I

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 252
    iget v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgesMaxHeight:I

    iget v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButtonSize:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgesMaxHeight:I

    .line 255
    :cond_2
    iget-object v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    invoke-virtual {v4}, Lcom/htc/widget/HtcFlagButton;->getVisibility()I

    move-result v4

    if-eq v4, v8, :cond_3

    .line 256
    iget-object v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    invoke-virtual {p0, v4, p1, p2}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->measureChild(Landroid/view/View;II)V

    .line 257
    iget-object v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    invoke-virtual {v4}, Lcom/htc/widget/HtcFlagButton;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgeGap:I

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 258
    iget v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgesMaxHeight:I

    iget-object v5, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    invoke-virtual {v5}, Lcom/htc/widget/HtcFlagButton;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgesMaxHeight:I

    .line 261
    :cond_3
    if-eqz v0, :cond_4

    .line 262
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mAtLeast1BadgeVisible:Z

    .line 263
    iget v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadgeGap:I

    sub-int/2addr v0, v4

    .line 270
    :cond_4
    iget v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mItemMode:I

    invoke-static {v4}, Lcom/htc/widget/HtcListItemUtil;->getDesiredListItemHeight(I)I

    move-result v1

    .line 279
    .local v1, desireHeight:I
    move v3, v1

    .line 281
    iget-object v4, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, p1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->resolveSize(II)I

    move-result v4

    invoke-virtual {p0, v4, v3}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setMeasuredDimension(II)V

    .line 284
    return-void
.end method

.method public setBadgeState(IZ)V
    .locals 3
    .parameter "index"
    .parameter "enable"

    .prologue
    const/4 v2, 0x6

    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 366
    if-ltz p1, :cond_2

    if-ge p1, v2, :cond_2

    .line 367
    iget-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mBadges:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 367
    goto :goto_0

    .line 368
    :cond_2
    if-ne p1, v2, :cond_4

    .line 369
    iget-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mToggleButton:Landroid/widget/ToggleButton;

    if-eqz p2, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 370
    :cond_4
    const/4 v2, 0x7

    if-ne p1, v2, :cond_0

    .line 371
    iget-object v2, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mFlagButton:Lcom/htc/widget/HtcFlagButton;

    if-eqz p2, :cond_5

    :goto_3
    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcFlagButton;->setVisibility(I)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->isEnabled()Z

    move-result v2

    if-ne v2, p1, :cond_1

    .line 469
    :cond_0
    return-void

    .line 462
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 464
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 465
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 466
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 467
    invoke-static {v0, p1}, Lcom/htc/widget/HtcListItemUtil;->setViewOpacity(Landroid/view/View;Z)V

    .line 464
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    const/4 v1, 0x0

    .line 190
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 191
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 194
    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 195
    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 197
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 221
    return-void
.end method

.method public setStampTextStyle(I)V
    .locals 1
    .parameter "defStyle"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    check-cast v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;->setTextStyle(I)V

    .line 451
    iput p1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStampStyle:I

    .line 453
    return-void
.end method

.method public setTextStamp(I)V
    .locals 2
    .parameter "rId"

    .prologue
    .line 430
    iget-object v1, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, text:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setTextStamp(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public setTextStamp(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->mStamp:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
