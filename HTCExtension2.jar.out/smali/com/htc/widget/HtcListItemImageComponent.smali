.class Lcom/htc/widget/HtcListItemImageComponent;
.super Landroid/widget/FrameLayout;
.source "HtcListItemImageComponent.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemComponent;


# static fields
.field public static final MODE_INDICATOR:I = 0x2

.field public static final MODE_NONE:I = 0x0

.field public static final MODE_TEXTBUBBLE:I = 0x1

.field static mFrameHeight:I

.field static mFrameWidth:I

.field private static sPhotoFrame:Landroid/graphics/drawable/Drawable;


# instance fields
.field protected mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

.field protected mBubbleSize:I

.field protected mComponentHeight:I

.field protected mComponentWidth:I

.field protected mContext:Landroid/content/Context;

.field protected mIndicator:Landroid/widget/ImageView;

.field protected mIndicatorLeftShift:I

.field protected mIndicatorSize:I

.field mIsAutomotiveMode:Z

.field mItemMode:I

.field protected mLeftMargin:I

.field protected mMode:I

.field mRightMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    .line 30
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    .line 37
    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    .line 42
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleSize:I

    .line 47
    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    .line 52
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    .line 53
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mRightMargin:I

    .line 64
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentWidth:I

    .line 69
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorLeftShift:I

    .line 74
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentHeight:I

    .line 76
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIsAutomotiveMode:Z

    .line 342
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mItemMode:I

    .line 145
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->init(Landroid/content/Context;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    .line 30
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    .line 37
    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    .line 42
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleSize:I

    .line 47
    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    .line 52
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    .line 53
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mRightMargin:I

    .line 64
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentWidth:I

    .line 69
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorLeftShift:I

    .line 74
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentHeight:I

    .line 76
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIsAutomotiveMode:Z

    .line 342
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mItemMode:I

    .line 139
    if-ltz p2, :cond_0

    const/4 v1, 0x2

    if-gt p2, v1, :cond_0

    .end local p2
    :goto_0
    iput p2, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    .line 140
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->init(Landroid/content/Context;)V

    .line 141
    return-void

    .restart local p2
    :cond_0
    move p2, v0

    .line 139
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    .line 30
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    .line 37
    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    .line 42
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleSize:I

    .line 47
    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    .line 52
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    .line 53
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mRightMargin:I

    .line 64
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentWidth:I

    .line 69
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorLeftShift:I

    .line 74
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentHeight:I

    .line 76
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIsAutomotiveMode:Z

    .line 342
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mItemMode:I

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemImageComponent;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 151
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

    .line 154
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    .line 30
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    .line 37
    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    .line 42
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleSize:I

    .line 47
    iput-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    .line 52
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    .line 53
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mRightMargin:I

    .line 64
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentWidth:I

    .line 69
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorLeftShift:I

    .line 74
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentHeight:I

    .line 76
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIsAutomotiveMode:Z

    .line 342
    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mItemMode:I

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemImageComponent;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 156
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x4

    .line 84
    iget v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mItemMode:I

    invoke-static {p1, v0}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 86
    iput-object p1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM2()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mRightMargin:I

    .line 90
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20500e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mLeftMargin:I

    .line 91
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20500e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mLeftMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentWidth:I

    .line 92
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20500e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorLeftShift:I

    .line 93
    iget v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mItemMode:I

    invoke-static {v0}, Lcom/htc/widget/HtcListItemUtil;->getDesiredListItemHeight(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mComponentHeight:I

    .line 95
    iget v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 116
    :goto_0
    sget-object v0, Lcom/htc/widget/HtcListItemImageComponent;->sPhotoFrame:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemImageComponent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "common_photo_frame"

    const v2, 0x2080040

    invoke-static {p1, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/htc/widget/HtcListItemImageComponent;->sPhotoFrame:Landroid/graphics/drawable/Drawable;

    .line 119
    sget-object v0, Lcom/htc/widget/HtcListItemImageComponent;->sPhotoFrame:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lcom/htc/widget/HtcListItemImageComponent;->sPhotoFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sput v0, Lcom/htc/widget/HtcListItemImageComponent;->mFrameWidth:I

    .line 121
    sget-object v0, Lcom/htc/widget/HtcListItemImageComponent;->sPhotoFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sput v0, Lcom/htc/widget/HtcListItemImageComponent;->mFrameHeight:I

    .line 124
    :cond_0
    return-void

    .line 97
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcListItemBubbleCount;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    .line 98
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemBubbleCount;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20500e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleSize:I

    .line 101
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListItemBubbleCount;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemImageComponent;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20500e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    .line 105
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    .line 107
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 113
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    iget v3, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemImageComponent;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 127
    if-eqz p2, :cond_0

    .line 128
    sget-object v1, Lcom/htc/R$styleable;->HtcListItemImageComponentMode:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 130
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    .line 134
    .end local v0           #a:Landroid/content/res/TypedArray;
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->init(Landroid/content/Context;)V

    .line 135
    return-void

    .line 132
    :cond_0
    iput v2, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    goto :goto_0
.end method


# virtual methods
.method public getBubbleCountText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 249
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 246
    :pswitch_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItemBubbleCount;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getIndicatorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getMode()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    return v0
.end method

.method public notifyItemMode(I)V
    .locals 2
    .parameter "itemMode"

    .prologue
    .line 348
    iput p1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mItemMode:I

    .line 349
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemImageComponent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mItemMode:I

    invoke-static {v0, v1}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 350
    iget v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mItemMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIsAutomotiveMode:Z

    .line 351
    return-void

    .line 350
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 188
    const/4 v3, 0x0

    .line 189
    .local v3, size:I
    iget v5, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    packed-switch v5, :pswitch_data_0

    .line 223
    :goto_0
    return-void

    .line 191
    :pswitch_0
    iget v3, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleSize:I

    .line 200
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemImageComponent;->getMeasuredWidth()I

    move-result v2

    .line 201
    .local v2, right:I
    sub-int v1, v2, v3

    .line 207
    .local v1, left:I
    iget v5, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    packed-switch v5, :pswitch_data_1

    goto :goto_0

    .line 210
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemImageComponent;->getMeasuredHeight()I

    move-result v0

    .line 211
    .local v0, bottom:I
    sub-int v4, v0, v3

    .line 213
    .local v4, top:I
    iget-object v5, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v5, v1, v4, v2, v0}, Lcom/htc/widget/HtcListItemBubbleCount;->layout(IIII)V

    goto :goto_0

    .line 194
    .end local v0           #bottom:I
    .end local v1           #left:I
    .end local v2           #right:I
    .end local v4           #top:I
    :pswitch_2
    iget v3, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicatorSize:I

    .line 195
    goto :goto_1

    .line 217
    .restart local v1       #left:I
    .restart local v2       #right:I
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemImageComponent;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v5, v3

    div-int/lit8 v4, v5, 0x2

    .line 218
    .restart local v4       #top:I
    add-int v0, v4, v3

    .line 220
    .restart local v0       #bottom:I
    iget-object v5, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v5, v1, v4, v2, v0}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 207
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v1, 0x0

    .line 168
    iget v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 176
    invoke-virtual {p0, v1, v1}, Lcom/htc/widget/HtcListItemImageComponent;->setMeasuredDimension(II)V

    .line 177
    :goto_0
    return-void

    .line 170
    :pswitch_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/widget/HtcListItemImageComponent;->measureChild(Landroid/view/View;II)V

    goto :goto_0

    .line 173
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/widget/HtcListItemImageComponent;->measureChild(Landroid/view/View;II)V

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setAutoMotiveMode(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIsAutomotiveMode:Z

    if-ne v0, p1, :cond_0

    .line 340
    :goto_0
    return-void

    .line 326
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIsAutomotiveMode:Z

    .line 329
    if-eqz p1, :cond_1

    .line 330
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mItemMode:I

    .line 337
    :goto_1
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getM2()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mRightMargin:I

    .line 339
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemImageComponent;->requestLayout()V

    goto :goto_0

    .line 334
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mItemMode:I

    goto :goto_1
.end method

.method public setBubbleCount(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 232
    iget v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemBubbleCount;->setBubbleCount(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItemBubbleCount;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemBubbleCount;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListItemBubbleCount;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcListItemImageComponent;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItemBubbleCount;->getBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/widget/HtcListItemImageComponent;->invalidate(IIII)V

    .line 237
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemImageComponent;->isEnabled()Z

    move-result v2

    if-eq v2, p1, :cond_0

    .line 313
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 314
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemImageComponent;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 315
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemImageComponent;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 316
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 317
    invoke-static {v0, p1}, Lcom/htc/widget/HtcListItemUtil;->setViewOpacity(Landroid/view/View;Z)V

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method public setIndicatorBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bm"

    .prologue
    .line 282
    iget v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 283
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 285
    if-nez p1, :cond_1

    .line 286
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 290
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/widget/HtcListItemImageComponent;->invalidate(IIII)V

    .line 292
    :cond_0
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "drawable"

    .prologue
    .line 260
    iget v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    if-nez p1, :cond_1

    .line 264
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/widget/HtcListItemImageComponent;->invalidate(IIII)V

    .line 270
    :cond_0
    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIndicatorResource(I)V
    .locals 1
    .parameter "rId"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/htc/widget/HtcListItemImageComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemImageComponent;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    return-void
.end method
