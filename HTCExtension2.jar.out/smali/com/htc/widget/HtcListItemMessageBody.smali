.class public Lcom/htc/widget/HtcListItemMessageBody;
.super Landroid/widget/FrameLayout;
.source "HtcListItemMessageBody.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemTextComponent;
.implements Lcom/htc/widget/IHtcListItemComponent;


# static fields
.field static final LOG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "HtcListItemMessageBody"

.field static MAX_BADGES:I = 0x0

.field static final MAX_NUM_TEXT:I = 0x2

.field public static final MODE_DARK_LIST:I = 0x1

.field public static final MODE_WHITE_LIST:I

.field private static mFrameHeight:I

.field private static mFrameWidth:I

.field private static sPhotoFrame:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mBadge:Lcom/htc/widget/QuickContactBadge;

.field private mBadgeLeftMargin:I

.field private mBadges:[Landroid/widget/ImageView;

.field private mBody:Landroid/widget/TextView;

.field private mBodyBottomMargin:I

.field private mBodyTopMargin:I

.field private mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

.field private mColorBar:Lcom/htc/widget/HtcListItemColorBar;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field mIsAutomotiveMode:Z

.field protected mIsMarqueeEnabled:Z

.field mItemMode:I

.field private mMode:I

.field private mStamp:Landroid/widget/TextView;

.field private mText:[Landroid/widget/TextView;

.field private mText1OrSmallBadgesExist:Z

.field private mText2OrStampExists:Z

.field private mTextStyles:[I

.field private mToggleButton:Landroid/widget/ToggleButton;

.field private mToggleButtonSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x6

    sput v0, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 295
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText1OrSmallBadgesExist:Z

    .line 69
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText2OrStampExists:Z

    .line 81
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextStyles:[I

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    .line 116
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyTopMargin:I

    .line 117
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyBottomMargin:I

    .line 131
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMode:I

    .line 137
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsMarqueeEnabled:Z

    .line 138
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsAutomotiveMode:Z

    .line 1191
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mItemMode:I

    .line 296
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->init(Landroid/content/Context;)V

    .line 297
    return-void

    .line 94
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    .line 310
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText1OrSmallBadgesExist:Z

    .line 69
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText2OrStampExists:Z

    .line 81
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextStyles:[I

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    .line 116
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyTopMargin:I

    .line 117
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyBottomMargin:I

    .line 131
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMode:I

    .line 137
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsMarqueeEnabled:Z

    .line 138
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsAutomotiveMode:Z

    .line 1191
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mItemMode:I

    .line 311
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    .line 312
    iput p2, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMode:I

    .line 316
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->init(Landroid/content/Context;)V

    .line 317
    return-void

    .line 314
    :cond_0
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMode:I

    goto :goto_0

    .line 94
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 300
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText1OrSmallBadgesExist:Z

    .line 69
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText2OrStampExists:Z

    .line 81
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextStyles:[I

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    .line 116
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyTopMargin:I

    .line 117
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyBottomMargin:I

    .line 131
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMode:I

    .line 137
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsMarqueeEnabled:Z

    .line 138
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsAutomotiveMode:Z

    .line 1191
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mItemMode:I

    .line 301
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemMessageBody;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 302
    return-void

    .line 94
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 305
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText1OrSmallBadgesExist:Z

    .line 69
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText2OrStampExists:Z

    .line 81
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextStyles:[I

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    .line 116
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyTopMargin:I

    .line 117
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyBottomMargin:I

    .line 131
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMode:I

    .line 137
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsMarqueeEnabled:Z

    .line 138
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsAutomotiveMode:Z

    .line 1191
    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mItemMode:I

    .line 306
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemMessageBody;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 307
    return-void

    .line 94
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private addAllChild()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 162
    sget-object v1, Lcom/htc/widget/HtcListItemMessageBody;->sPhotoFrame:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    const-string v3, "common_photo_frame"

    const v4, 0x2080040

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/htc/widget/HtcListItemMessageBody;->sPhotoFrame:Landroid/graphics/drawable/Drawable;

    .line 165
    sget-object v1, Lcom/htc/widget/HtcListItemMessageBody;->sPhotoFrame:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 166
    sget-object v1, Lcom/htc/widget/HtcListItemMessageBody;->sPhotoFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sput v1, Lcom/htc/widget/HtcListItemMessageBody;->mFrameWidth:I

    .line 167
    sget-object v1, Lcom/htc/widget/HtcListItemMessageBody;->sPhotoFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sput v1, Lcom/htc/widget/HtcListItemMessageBody;->mFrameHeight:I

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    sget v3, Lcom/htc/widget/HtcListItemMessageBody;->mFrameWidth:I

    sget v4, Lcom/htc/widget/HtcListItemMessageBody;->mFrameHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItemBubbleCount;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    if-ge v0, v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItemColorBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListItemMessageBody;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    return-void
.end method

.method private compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "text1"
    .parameter "text2"

    .prologue
    const/4 v0, 0x1

    .line 729
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 731
    :cond_0
    :goto_0
    return v0

    .line 730
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 731
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const v4, 0x20800d7

    const/4 v3, 0x0

    .line 193
    iget v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mItemMode:I

    invoke-static {p1, v1}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 196
    new-instance v1, Lcom/htc/widget/HtcListItemColorBar;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcListItemColorBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    .line 199
    new-instance v1, Lcom/htc/widget/QuickContactBadge;

    invoke-direct {v1, p1}, Lcom/htc/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    .line 200
    new-instance v1, Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcListItemBubbleCount;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    .line 202
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20500e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadgeLeftMargin:I

    .line 207
    new-array v1, v6, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    .line 208
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    new-instance v2, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-direct {v2, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v3

    .line 209
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    new-instance v2, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-direct {v2, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v5

    .line 217
    new-instance v1, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    .line 220
    sget v1, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    .line 221
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    if-ge v0, v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 223
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, v3

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, v5

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v1, v1, v6

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const v2, 0x20800db

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    const v2, 0x20800db

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 232
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    new-instance v1, Landroid/widget/ToggleButton;

    invoke-direct {v1, p1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    .line 243
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    const v2, 0x208016c

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    .line 244
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 245
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setFocusable(Z)V

    .line 246
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 255
    new-instance v1, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20500de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyTopMargin:I

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20500df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyBottomMargin:I

    .line 264
    iget v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMode:I

    if-nez v1, :cond_1

    .line 265
    const v1, 0x2030038

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->setPrimaryTextStyle(I)V

    .line 266
    const v1, 0x203006e

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->setSecondaryTextStyle(I)V

    .line 267
    const v1, 0x2030045

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->setStampTextStyle(I)V

    .line 268
    const v1, 0x2030073

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyTextStyle(I)V

    .line 276
    :goto_1
    iput v3, p0, Lcom/htc/widget/HtcListItemMessageBody;->mPaddingTop:I

    .line 277
    iput v3, p0, Lcom/htc/widget/HtcListItemMessageBody;->mPaddingRight:I

    .line 278
    iput v3, p0, Lcom/htc/widget/HtcListItemMessageBody;->mPaddingLeft:I

    .line 279
    iput v3, p0, Lcom/htc/widget/HtcListItemMessageBody;->mPaddingBottom:I

    .line 281
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemMessageBody;->addAllChild()V

    .line 282
    return-void

    .line 270
    :cond_1
    const v1, 0x2030017

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->setPrimaryTextStyle(I)V

    .line 271
    const v1, 0x203006e

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->setSecondaryTextStyle(I)V

    .line 272
    const v1, 0x2030024

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->setStampTextStyle(I)V

    .line 273
    const v1, 0x2030073

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyTextStyle(I)V

    goto :goto_1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 145
    if-eqz p2, :cond_0

    .line 146
    sget-object v2, Lcom/htc/R$styleable;->HtcListItemTextComponentMode:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 147
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMode:I

    .line 148
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 153
    .end local v0           #a:Landroid/content/res/TypedArray;
    .local v1, marquee:Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->init(Landroid/content/Context;)V

    .line 154
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->enableMarquee(Z)V

    .line 155
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemMessageBody;->setVisibility()V

    .line 156
    return-void

    .line 150
    .end local v1           #marquee:Z
    :cond_0
    iput v3, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMode:I

    .line 151
    const/4 v1, 0x0

    .restart local v1       #marquee:Z
    goto :goto_0
.end method

.method private setDefaultTextStyle()V
    .locals 5

    .prologue
    const v4, 0x203009c

    const v3, 0x203009b

    const v2, 0x2030073

    const v1, 0x203006e

    .line 1154
    iget v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mItemMode:I

    if-nez v0, :cond_2

    .line 1155
    iget v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMode:I

    if-nez v0, :cond_1

    .line 1156
    const v0, 0x2030038

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setPrimaryTextStyle(I)V

    .line 1157
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->setSecondaryTextStyle(I)V

    .line 1158
    const v0, 0x2030045

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setStampTextStyle(I)V

    .line 1159
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyTextStyle(I)V

    .line 1179
    :cond_0
    :goto_0
    return-void

    .line 1161
    :cond_1
    const v0, 0x2030017

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setPrimaryTextStyle(I)V

    .line 1162
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->setSecondaryTextStyle(I)V

    .line 1163
    const v0, 0x2030024

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setStampTextStyle(I)V

    .line 1164
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyTextStyle(I)V

    goto :goto_0

    .line 1166
    :cond_2
    iget v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mItemMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1167
    iget v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mMode:I

    if-nez v0, :cond_3

    .line 1168
    const v0, 0x203009d

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setPrimaryTextStyle(I)V

    .line 1169
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListItemMessageBody;->setSecondaryTextStyle(I)V

    .line 1170
    const v0, 0x2030091

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setStampTextStyle(I)V

    .line 1171
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyTextStyle(I)V

    goto :goto_0

    .line 1173
    :cond_3
    const v0, 0x203009e

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setPrimaryTextStyle(I)V

    .line 1174
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListItemMessageBody;->setSecondaryTextStyle(I)V

    .line 1175
    const v0, 0x2030090

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setStampTextStyle(I)V

    .line 1176
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyTextStyle(I)V

    goto :goto_0
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "view"
    .parameter "text"

    .prologue
    .line 749
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListItemMessageBody;->compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    :goto_0
    return-void

    .line 751
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 753
    if-nez p2, :cond_1

    .line 754
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 755
    :cond_1
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 756
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 758
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "text"

    .prologue
    .line 735
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListItemMessageBody;->compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    :goto_0
    return-void

    .line 737
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    if-nez p2, :cond_1

    .line 740
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 741
    :cond_1
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 742
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 744
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTextStyle(II)V
    .locals 1
    .parameter "index"
    .parameter "defStyle"

    .prologue
    .line 719
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextStyles:[I

    aput p2, v0, p1

    .line 721
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    check-cast v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcFadingEdgeTextView;->setTextStyle(I)V

    .line 726
    :cond_0
    return-void
.end method

.method private setVisibility()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 286
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    return-void
.end method


# virtual methods
.method public enableBadgeComponent(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1109
    if-eqz p1, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v0, v1}, Lcom/htc/widget/QuickContactBadge;->setVisibility(I)V

    .line 1111
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemBubbleCount;->setVisibility(I)V

    .line 1116
    :goto_0
    return-void

    .line 1113
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v0, v2}, Lcom/htc/widget/QuickContactBadge;->setVisibility(I)V

    .line 1114
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemBubbleCount;->setVisibility(I)V

    goto :goto_0
.end method

.method public enableBodyText(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1081
    if-eqz p1, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1088
    :goto_0
    return-void

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public enableColorBar(Z)V
    .locals 2
    .parameter "enable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1098
    if-eqz p1, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemColorBar;->setVisibility(I)V

    .line 1102
    :goto_0
    return-void

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemColorBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public enableMarquee(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1144
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsMarqueeEnabled:Z

    .line 1145
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;->setEnableMarquee(Z)V

    .line 1146
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;->setEnableMarquee(Z)V

    .line 1147
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    check-cast v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;->setEnableMarquee(Z)V

    .line 1151
    return-void
.end method

.method public getBadge(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 921
    if-ltz p1, :cond_0

    sget v0, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    if-ge p1, v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    .line 927
    :goto_0
    return-object v0

    .line 923
    :cond_0
    sget v0, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    if-ne p1, v0, :cond_1

    .line 924
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    goto :goto_0

    .line 927
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBadgeState(I)Z
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 906
    if-ltz p1, :cond_2

    sget v2, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    if-ge p1, v2, :cond_2

    .line 907
    iget-object v2, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 912
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 907
    goto :goto_0

    .line 908
    :cond_2
    sget v2, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    if-ne p1, v2, :cond_3

    .line 909
    iget-object v2, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 912
    goto :goto_0
.end method

.method public getBodyTextContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBubbleCountText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItemBubbleCount;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorBarImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 688
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItemColorBar;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 337
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    .line 338
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 345
    :goto_0
    return-object v0

    .line 340
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 343
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 344
    iput-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public getPrimaryText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 815
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryTextVisibility()I
    .locals 2

    .prologue
    .line 821
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getQuickContactBadge()Lcom/htc/widget/QuickContactBadge;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    return-object v0
.end method

.method public getSecondaryText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 875
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryTextVisibility()I
    .locals 2

    .prologue
    .line 881
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getStampVisibility()I
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getTextStamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notifyItemMode(I)V
    .locals 2
    .parameter "itemMode"

    .prologue
    .line 1198
    iput p1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mItemMode:I

    .line 1199
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mItemMode:I

    invoke-static {v0, v1}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 1200
    iget v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mItemMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mIsAutomotiveMode:Z

    .line 1201
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemMessageBody;->setDefaultTextStyle()V

    .line 1202
    return-void

    .line 1200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 512
    const/4 v1, 0x0

    .local v1, cLeft:I
    const/4 v3, 0x0

    .local v3, cTop:I
    const/4 v2, 0x0

    .local v2, cRight:I
    const/4 v0, 0x0

    .line 515
    .local v0, cBottom:I
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v7}, Lcom/htc/widget/QuickContactBadge;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_1

    .line 516
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getMeasuredHeight()I

    move-result v5

    .line 517
    .local v5, currentHeight:I
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mItemMode:I

    invoke-static {v7}, Lcom/htc/widget/HtcListItemUtil;->getDesiredListItemHeight(I)I

    move-result v7

    if-ne v5, v7, :cond_9

    .line 518
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getMeasuredHeight()I

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v8}, Lcom/htc/widget/QuickContactBadge;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v3, v7, 0x2

    .line 522
    :goto_0
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v9}, Lcom/htc/widget/QuickContactBadge;->getMeasuredWidth()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v10}, Lcom/htc/widget/QuickContactBadge;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v3

    invoke-virtual {v7, v8, v3, v9, v10}, Lcom/htc/widget/QuickContactBadge;->layout(IIII)V

    .line 525
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemBubbleCount;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    .line 526
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v7}, Lcom/htc/widget/QuickContactBadge;->getMeasuredWidth()I

    move-result v7

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM2()I

    move-result v8

    add-int v2, v7, v8

    .line 527
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v7}, Lcom/htc/widget/QuickContactBadge;->getBottom()I

    move-result v0

    .line 528
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v8}, Lcom/htc/widget/HtcListItemBubbleCount;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v2, v8

    iget-object v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v9}, Lcom/htc/widget/HtcListItemBubbleCount;->getMeasuredHeight()I

    move-result v9

    sub-int v9, v0, v9

    invoke-virtual {v7, v8, v9, v2, v0}, Lcom/htc/widget/HtcListItemBubbleCount;->layout(IIII)V

    .line 534
    :cond_0
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v7}, Lcom/htc/widget/QuickContactBadge;->getMeasuredWidth()I

    move-result v7

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM2()I

    move-result v8

    add-int v1, v7, v8

    .line 538
    .end local v5           #currentHeight:I
    :cond_1
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_2

    .line 539
    iget-boolean v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText1OrSmallBadgesExist:Z

    if-eqz v7, :cond_a

    iget-boolean v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText2OrStampExists:Z

    if-eqz v7, :cond_a

    .line 540
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mItemMode:I

    invoke-static {v7}, Lcom/htc/widget/HtcListItemUtil;->getDesiredListItemHeight(I)I

    move-result v7

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mItemMode:I

    invoke-static {v8}, Lcom/htc/widget/HtcListItemUtil;->getDesiredBottomGap(I)I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyTopMargin:I

    add-int v3, v7, v8

    .line 563
    :goto_1
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int v0, v3, v7

    .line 564
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v7, v1, v3, v8, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 568
    :cond_2
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_3

    .line 569
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mItemMode:I

    invoke-static {v7}, Lcom/htc/widget/HtcListItemUtil;->getPrimaryBaseLine(I)I

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/widget/TextView;->getBaseline()I

    move-result v8

    sub-int v3, v7, v8

    .line 572
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v1

    iget-object v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v7, v1, v3, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 578
    :cond_3
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_4

    .line 579
    iget-boolean v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText1OrSmallBadgesExist:Z

    if-eqz v7, :cond_d

    .line 580
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mItemMode:I

    invoke-static {v7}, Lcom/htc/widget/HtcListItemUtil;->getDesiredListItemHeight(I)I

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/widget/TextView;->getBaseline()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mItemMode:I

    invoke-static {v8}, Lcom/htc/widget/HtcListItemUtil;->getDesiredBottomGap(I)I

    move-result v8

    sub-int v3, v7, v8

    .line 587
    :goto_2
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v1

    iget-object v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v7, v1, v3, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 590
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/widget/TextView;->getBaseline()I

    move-result v7

    add-int v0, v3, v7

    .line 594
    :cond_4
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_6

    .line 595
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_5

    .line 597
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/widget/TextView;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/widget/TextView;->getBaseline()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getBaseline()I

    move-result v8

    sub-int v3, v7, v8

    .line 609
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getMeasuredWidth()I

    move-result v2

    .line 610
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    sub-int v1, v2, v7

    .line 612
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v7, v1, v3, v2, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 617
    :cond_6
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mItemMode:I

    invoke-static {v7}, Lcom/htc/widget/HtcListItemUtil;->getDesiredCenterFor7Badge(I)I

    move-result v4

    .line 618
    .local v4, center:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getMeasuredWidth()I

    move-result v2

    .line 619
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v7}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_7

    .line 620
    int-to-float v7, v4

    const/high16 v8, 0x3f00

    iget-object v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v9}, Landroid/widget/ToggleButton;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    float-to-int v3, v7

    .line 621
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v7}, Landroid/widget/ToggleButton;->getMeasuredWidth()I

    move-result v7

    sub-int v1, v2, v7

    .line 622
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v7}, Landroid/widget/ToggleButton;->getMeasuredHeight()I

    move-result v7

    add-int v0, v3, v7

    .line 623
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v7, v1, v3, v2, v0}, Landroid/widget/ToggleButton;->layout(IIII)V

    .line 625
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM6()I

    move-result v7

    sub-int v2, v1, v7

    .line 627
    :cond_7
    sget v7, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    add-int/lit8 v6, v7, -0x1

    .local v6, i:I
    :goto_3
    if-ltz v6, :cond_e

    .line 628
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_8

    .line 629
    int-to-float v7, v4

    const/high16 v8, 0x3f00

    iget-object v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    float-to-int v3, v7

    .line 630
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    sub-int v1, v2, v7

    .line 631
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    add-int v0, v3, v7

    .line 632
    iget-object v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v7, v7, v6

    invoke-virtual {v7, v1, v3, v2, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 634
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM6()I

    move-result v7

    sub-int v2, v1, v7

    .line 627
    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 520
    .end local v4           #center:I
    .end local v6           #i:I
    .restart local v5       #currentHeight:I
    :cond_9
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM2()I

    move-result v3

    goto/16 :goto_0

    .line 547
    .end local v5           #currentHeight:I
    :cond_a
    iget-boolean v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText1OrSmallBadgesExist:Z

    if-eqz v7, :cond_b

    .line 548
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getMeasuredHeight()I

    move-result v7

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyTopMargin:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    sub-int v3, v7, v8

    goto/16 :goto_1

    .line 552
    :cond_b
    iget-boolean v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText2OrStampExists:Z

    if-eqz v7, :cond_c

    .line 553
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getMeasuredHeight()I

    move-result v7

    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyTopMargin:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    sub-int v3, v7, v8

    goto/16 :goto_1

    .line 558
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 582
    :cond_d
    iget v7, p0, Lcom/htc/widget/HtcListItemMessageBody;->mItemMode:I

    invoke-static {v7}, Lcom/htc/widget/HtcListItemUtil;->getDesiredTopGap(I)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/widget/TextView;->getTextSize()F

    move-result v8

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/widget/TextView;->getBaseline()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v3, v7

    goto/16 :goto_2

    .line 637
    .restart local v4       #center:I
    .restart local v6       #i:I
    :cond_e
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "wSpec"
    .parameter "hSpec"

    .prologue
    .line 389
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 394
    .local v6, widthOfSpec:I
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText1OrSmallBadgesExist:Z

    .line 395
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText2OrStampExists:Z

    .line 397
    move v7, v6

    .local v7, widthOfStamp:I
    move v3, v6

    .local v3, widthOfBodyText:I
    move v5, v6

    .local v5, widthOfSecondaryText:I
    move v4, v6

    .line 401
    .local v4, widthOfPrimaryText:I
    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v8}, Lcom/htc/widget/QuickContactBadge;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_1

    .line 402
    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {p0, v8, p1, p2}, Lcom/htc/widget/HtcListItemMessageBody;->measureChild(Landroid/view/View;II)V

    .line 404
    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v8}, Lcom/htc/widget/HtcListItemBubbleCount;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    .line 405
    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {p0, v8, p1, p2}, Lcom/htc/widget/HtcListItemMessageBody;->measureChild(Landroid/view/View;II)V

    .line 407
    :cond_0
    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadge:Lcom/htc/widget/QuickContactBadge;

    invoke-virtual {v8}, Lcom/htc/widget/QuickContactBadge;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v6, v8

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM2()I

    move-result v9

    sub-int v7, v8, v9

    move v3, v7

    move v5, v7

    move v4, v7

    .line 413
    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 416
    .local v1, heightSpec:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    array-length v8, v8

    if-ge v2, v8, :cond_3

    .line 417
    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_2

    .line 418
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText1OrSmallBadgesExist:Z

    .line 419
    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v8, v8, v2

    invoke-virtual {p0, v8, p1, p2}, Lcom/htc/widget/HtcListItemMessageBody;->measureChild(Landroid/view/View;II)V

    .line 420
    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM6()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v4, v8

    .line 421
    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButtonSize:I

    iget-object v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButtonSize:I

    .line 416
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 425
    :cond_3
    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v8}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_4

    .line 426
    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButtonSize:I

    const/16 v9, 0x20

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButtonSize:I

    .line 427
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText1OrSmallBadgesExist:Z

    .line 428
    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    iget v10, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButtonSize:I

    iget v11, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButtonSize:I

    invoke-direct {v9, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0, v8, p1, p2}, Lcom/htc/widget/HtcListItemMessageBody;->measureChild(Landroid/view/View;II)V

    .line 432
    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v8}, Landroid/widget/ToggleButton;->getMeasuredWidth()I

    move-result v8

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM6()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v4, v8

    .line 436
    :cond_4
    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_5

    .line 437
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText1OrSmallBadgesExist:Z

    .line 438
    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/high16 v9, 0x4000

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {p0, v8, v9, v1}, Lcom/htc/widget/HtcListItemMessageBody;->measureChild(Landroid/view/View;II)V

    .line 444
    :cond_5
    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_6

    .line 445
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText2OrStampExists:Z

    .line 446
    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    const/high16 v9, -0x8000

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {p0, v8, v9, v1}, Lcom/htc/widget/HtcListItemMessageBody;->measureChild(Landroid/view/View;II)V

    .line 449
    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM2()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v5, v8

    .line 452
    :cond_6
    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_7

    .line 453
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText2OrStampExists:Z

    .line 454
    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/high16 v9, 0x4000

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {p0, v8, v9, v1}, Lcom/htc/widget/HtcListItemMessageBody;->measureChild(Landroid/view/View;II)V

    .line 459
    :cond_7
    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_8

    .line 462
    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    const/high16 v9, 0x4000

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {p0, v8, v9, v1}, Lcom/htc/widget/HtcListItemMessageBody;->measureChild(Landroid/view/View;II)V

    .line 469
    :cond_8
    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mItemMode:I

    invoke-static {v8}, Lcom/htc/widget/HtcListItemUtil;->getDesiredTopGap(I)I

    move-result v0

    .line 470
    .local v0, finalHeight:I
    iget-boolean v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText1OrSmallBadgesExist:Z

    if-eqz v8, :cond_c

    iget-boolean v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText2OrStampExists:Z

    if-eqz v8, :cond_c

    .line 471
    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mItemMode:I

    invoke-static {v8}, Lcom/htc/widget/HtcListItemUtil;->getDesiredListItemHeight(I)I

    move-result v0

    .line 487
    :cond_9
    :goto_1
    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_a

    .line 488
    iget-boolean v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText1OrSmallBadgesExist:Z

    if-eqz v8, :cond_e

    iget-boolean v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText2OrStampExists:Z

    if-eqz v8, :cond_e

    .line 489
    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v0, v8

    .line 500
    :cond_a
    :goto_2
    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mItemMode:I

    invoke-static {v8}, Lcom/htc/widget/HtcListItemUtil;->getDesiredListItemHeight(I)I

    move-result v8

    if-ge v0, v8, :cond_b

    .line 501
    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mItemMode:I

    invoke-static {v8}, Lcom/htc/widget/HtcListItemUtil;->getDesiredListItemHeight(I)I

    move-result v0

    .line 503
    :cond_b
    invoke-virtual {p0, v6, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setMeasuredDimension(II)V

    .line 504
    return-void

    .line 476
    :cond_c
    iget-boolean v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText1OrSmallBadgesExist:Z

    if-eqz v8, :cond_d

    .line 477
    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mItemMode:I

    invoke-static {v8}, Lcom/htc/widget/HtcListItemUtil;->getPrimaryTextBaseLine(I)I

    move-result v8

    iget v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mItemMode:I

    invoke-static {v9}, Lcom/htc/widget/HtcListItemUtil;->getDesiredCenterGap(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v0, v8

    goto :goto_1

    .line 481
    :cond_d
    iget-boolean v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText2OrStampExists:Z

    if-eqz v8, :cond_9

    .line 482
    iget v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mItemMode:I

    invoke-static {v8}, Lcom/htc/widget/HtcListItemUtil;->getSecondaryTextBaseLine(I)I

    move-result v8

    iget v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mItemMode:I

    invoke-static {v9}, Lcom/htc/widget/HtcListItemUtil;->getDesiredCenterGap(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v0, v8

    goto :goto_1

    .line 490
    :cond_e
    iget-boolean v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText1OrSmallBadgesExist:Z

    if-eqz v8, :cond_f

    .line 491
    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    iget v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyBottomMargin:I

    add-int/2addr v8, v9

    add-int/2addr v0, v8

    goto :goto_2

    .line 492
    :cond_f
    iget-boolean v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText2OrStampExists:Z

    if-eqz v8, :cond_a

    .line 493
    iget-object v8, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    iget v9, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBodyBottomMargin:I

    add-int/2addr v8, v9

    add-int/2addr v0, v8

    goto :goto_2
.end method

.method public setBadgeState(IZ)V
    .locals 3
    .parameter "index"
    .parameter "enable"

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 889
    if-ltz p1, :cond_2

    sget v2, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    if-ge p1, v2, :cond_2

    .line 890
    iget-object v2, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBadges:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 894
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 890
    goto :goto_0

    .line 891
    :cond_2
    sget v2, Lcom/htc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    if-ne p1, v2, :cond_0

    .line 892
    iget-object v2, p0, Lcom/htc/widget/HtcListItemMessageBody;->mToggleButton:Landroid/widget/ToggleButton;

    if-eqz p2, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public setBodyText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1007
    return-void
.end method

.method public setBodyText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 995
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 997
    return-void
.end method

.method public setBodyTextLine(I)V
    .locals 1
    .parameter "lines"

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 1058
    return-void
.end method

.method public setBodyTextMaxLines(I)V
    .locals 1
    .parameter "lines"

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1074
    return-void
.end method

.method public setBodyTextMinLines(I)V
    .locals 1
    .parameter "lines"

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinLines(I)V

    .line 1066
    return-void
.end method

.method public setBodyTextResource(I)V
    .locals 2
    .parameter "rId"

    .prologue
    .line 1019
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1020
    .local v0, text:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setBodyText(Ljava/lang/String;)V

    .line 1021
    return-void
.end method

.method public setBodyTextStyle(I)V
    .locals 2
    .parameter "defStyle"

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mTextStyles:[I

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 1046
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    check-cast v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;->setTextStyle(I)V

    .line 1050
    return-void
.end method

.method public setBodyVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1038
    return-void
.end method

.method public setBubbleCount(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 703
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mBubble:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemBubbleCount;->setBubbleCount(Ljava/lang/String;)V

    .line 704
    return-void
.end method

.method public setColorBarImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bm"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 673
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemColorBar;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 674
    return-void
.end method

.method public setColorBarImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 647
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemColorBar;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 648
    return-void
.end method

.method public setColorBarImageResource(I)V
    .locals 1
    .parameter "rId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 658
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mColorBar:Lcom/htc/widget/HtcListItemColorBar;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemColorBar;->setImageResource(I)V

    .line 659
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1123
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->isEnabled()Z

    move-result v2

    if-eq v2, p1, :cond_0

    .line 1124
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1126
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemMessageBody;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1127
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemMessageBody;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1128
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1129
    invoke-static {v0, p1}, Lcom/htc/widget/HtcListItemUtil;->setViewOpacity(Landroid/view/View;Z)V

    .line 1126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1132
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    const/4 v1, 0x0

    .line 324
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 325
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 327
    :cond_0
    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 328
    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 329
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 353
    return-void
.end method

.method public setPrimaryText(I)V
    .locals 3
    .parameter "rId"

    .prologue
    .line 787
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 788
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 789
    return-void
.end method

.method public setPrimaryText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 779
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 780
    return-void
.end method

.method public setPrimaryText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 771
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 772
    return-void
.end method

.method public setPrimaryTextStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 804
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setTextStyle(II)V

    .line 805
    return-void
.end method

.method public setPrimaryTextVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 796
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 797
    return-void
.end method

.method public setSecondaryText(I)V
    .locals 3
    .parameter "rId"

    .prologue
    .line 848
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 849
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 850
    return-void
.end method

.method public setSecondaryText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 836
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 837
    return-void
.end method

.method public setSecondaryText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 828
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 829
    return-void
.end method

.method public setSecondaryTextStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 865
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setTextStyle(II)V

    .line 866
    return-void
.end method

.method public setSecondaryTextVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 857
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 858
    return-void
.end method

.method public setStampTextStyle(I)V
    .locals 1
    .parameter "defStyle"

    .prologue
    .line 975
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    check-cast v0, Lcom/htc/widget/HtcFadingEdgeTextView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcFadingEdgeTextView;->setTextStyle(I)V

    .line 979
    return-void
.end method

.method public setStampVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 982
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 983
    return-void
.end method

.method public setTextStamp(I)V
    .locals 2
    .parameter "rId"

    .prologue
    .line 955
    iget-object v1, p0, Lcom/htc/widget/HtcListItemMessageBody;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 956
    .local v0, text:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemMessageBody;->setTextStamp(Ljava/lang/String;)V

    .line 957
    return-void
.end method

.method public setTextStamp(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 943
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 944
    return-void
.end method

.method public setTextStamp(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 935
    iget-object v0, p0, Lcom/htc/widget/HtcListItemMessageBody;->mStamp:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/htc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 936
    return-void
.end method
