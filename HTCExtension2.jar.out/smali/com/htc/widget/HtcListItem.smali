.class public Lcom/htc/widget/HtcListItem;
.super Landroid/widget/FrameLayout;
.source "HtcListItem.java"


# static fields
.field public static final ALL_ROUND_CORNER:I = 0xd
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final BG_MODE_CUSTOMISED:I = 0x3

.field private static final BG_MODE_NONE:I = 0x2

.field private static final BG_MODE_ONLY_GRADIENT:I = 0x1

.field private static final BG_MODE_TEXTURE:I = 0x0

.field public static final BOTTOM_ROUND_CORNER_ONLY:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final HEIGHT_OF_TOP_SPACE:I = 0x1

.field static final LOG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "HtcListItem"

.field static final MODE_AUTOMOTIVE:I = 0x3

.field static final MODE_CUSTOMIZED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_DEFAULT:I = 0x0

.field public static final MODE_KEEP_MEDIUM_HEIGHT:I = 0x2

.field public static final NO_ROUND_CORNER:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final NUM_ITEMMODE:I = 0x4

.field private static final STAMPCOMPONENT_SEGMENT_WEIGHT:F = 1.0f

.field private static final TEXTCOMPONENT_SEGMENT_WEIGHT:F = 2.0f

.field public static final TOP_ROUND_CORNER_ONLY:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mAutoMotiveMode:Z

.field private mBackgroundMode:I

.field private mBottomRoundCorner:Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mBottomSpace:I

.field private mContext:Landroid/content/Context;

.field private mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

.field private mDesiredMinHeight:I

.field private mDrawSectionBottomDivider:Z

.field private mFinalHeight:I

.field private mFirstColorBar:Landroid/view/View;

.field private mGradientResId:I

.field private mLeftSpace:I

.field private mMask:Landroid/graphics/drawable/Drawable;

.field private mMode:I

.field private mRightSpace:I

.field private mRoundCorner:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mSectionBottomDivider:Landroid/graphics/drawable/Drawable;

.field private mSegmentLength:F

.field private mTextureActivatedResId:I

.field private mTextureResId:I

.field private mTopRoundCorner:Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mTopSpace:I

.field private mUseCustomHeight:Z

.field private mVerticalGapOfChildren:I

.field private widthSpecForStamp:I

.field private widthSpecForText:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 276
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 117
    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mContext:Landroid/content/Context;

    .line 137
    const/16 v0, 0xc

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mRoundCorner:I

    .line 140
    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mTopRoundCorner:Landroid/graphics/drawable/Drawable;

    .line 143
    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mBottomRoundCorner:Landroid/graphics/drawable/Drawable;

    .line 146
    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mMask:Landroid/graphics/drawable/Drawable;

    .line 148
    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mSectionBottomDivider:Landroid/graphics/drawable/Drawable;

    .line 152
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem;->mDrawSectionBottomDivider:Z

    .line 162
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mBackgroundMode:I

    .line 168
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    .line 169
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mBottomSpace:I

    .line 170
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mRightSpace:I

    .line 171
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mLeftSpace:I

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mSegmentLength:F

    .line 195
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    .line 197
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mFinalHeight:I

    .line 199
    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    .line 204
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem;->mUseCustomHeight:Z

    .line 492
    iput v1, p0, Lcom/htc/widget/HtcListItem;->widthSpecForText:I

    .line 493
    iput v1, p0, Lcom/htc/widget/HtcListItem;->widthSpecForStamp:I

    .line 494
    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mFirstColorBar:Landroid/view/View;

    .line 874
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem;->mAutoMotiveMode:Z

    .line 277
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem;->init(Landroid/content/Context;)V

    .line 278
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 291
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 117
    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mContext:Landroid/content/Context;

    .line 137
    const/16 v0, 0xc

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mRoundCorner:I

    .line 140
    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mTopRoundCorner:Landroid/graphics/drawable/Drawable;

    .line 143
    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mBottomRoundCorner:Landroid/graphics/drawable/Drawable;

    .line 146
    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mMask:Landroid/graphics/drawable/Drawable;

    .line 148
    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mSectionBottomDivider:Landroid/graphics/drawable/Drawable;

    .line 152
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem;->mDrawSectionBottomDivider:Z

    .line 162
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mBackgroundMode:I

    .line 168
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    .line 169
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mBottomSpace:I

    .line 170
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mRightSpace:I

    .line 171
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mLeftSpace:I

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mSegmentLength:F

    .line 195
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    .line 197
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mFinalHeight:I

    .line 199
    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    .line 204
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem;->mUseCustomHeight:Z

    .line 492
    iput v1, p0, Lcom/htc/widget/HtcListItem;->widthSpecForText:I

    .line 493
    iput v1, p0, Lcom/htc/widget/HtcListItem;->widthSpecForStamp:I

    .line 494
    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mFirstColorBar:Landroid/view/View;

    .line 874
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem;->mAutoMotiveMode:Z

    .line 292
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 293
    :cond_0
    iput p2, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    .line 297
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem;->init(Landroid/content/Context;)V

    .line 298
    return-void

    .line 295
    :cond_1
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 281
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mContext:Landroid/content/Context;

    .line 137
    const/16 v0, 0xc

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mRoundCorner:I

    .line 140
    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mTopRoundCorner:Landroid/graphics/drawable/Drawable;

    .line 143
    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mBottomRoundCorner:Landroid/graphics/drawable/Drawable;

    .line 146
    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mMask:Landroid/graphics/drawable/Drawable;

    .line 148
    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mSectionBottomDivider:Landroid/graphics/drawable/Drawable;

    .line 152
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem;->mDrawSectionBottomDivider:Z

    .line 162
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mBackgroundMode:I

    .line 168
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    .line 169
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mBottomSpace:I

    .line 170
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mRightSpace:I

    .line 171
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mLeftSpace:I

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mSegmentLength:F

    .line 195
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    .line 197
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mFinalHeight:I

    .line 199
    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    .line 204
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem;->mUseCustomHeight:Z

    .line 492
    iput v1, p0, Lcom/htc/widget/HtcListItem;->widthSpecForText:I

    .line 493
    iput v1, p0, Lcom/htc/widget/HtcListItem;->widthSpecForStamp:I

    .line 494
    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mFirstColorBar:Landroid/view/View;

    .line 874
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem;->mAutoMotiveMode:Z

    .line 282
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 283
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 286
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mContext:Landroid/content/Context;

    .line 137
    const/16 v0, 0xc

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mRoundCorner:I

    .line 140
    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mTopRoundCorner:Landroid/graphics/drawable/Drawable;

    .line 143
    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mBottomRoundCorner:Landroid/graphics/drawable/Drawable;

    .line 146
    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mMask:Landroid/graphics/drawable/Drawable;

    .line 148
    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mSectionBottomDivider:Landroid/graphics/drawable/Drawable;

    .line 152
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem;->mDrawSectionBottomDivider:Z

    .line 162
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mBackgroundMode:I

    .line 168
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    .line 169
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mBottomSpace:I

    .line 170
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mRightSpace:I

    .line 171
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mLeftSpace:I

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mSegmentLength:F

    .line 195
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    .line 197
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mFinalHeight:I

    .line 199
    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    .line 204
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem;->mUseCustomHeight:Z

    .line 492
    iput v1, p0, Lcom/htc/widget/HtcListItem;->widthSpecForText:I

    .line 493
    iput v1, p0, Lcom/htc/widget/HtcListItem;->widthSpecForStamp:I

    .line 494
    iput-object v2, p0, Lcom/htc/widget/HtcListItem;->mFirstColorBar:Landroid/view/View;

    .line 874
    iput-boolean v1, p0, Lcom/htc/widget/HtcListItem;->mAutoMotiveMode:Z

    .line 287
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 288
    return-void
.end method

.method private drawMask(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 673
    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mMask:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 675
    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 677
    :cond_0
    return-void
.end method

.method private drawSectionBottomDivider(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 680
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem;->mDrawSectionBottomDivider:Z

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mSectionBottomDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mSectionBottomDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 683
    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mSectionBottomDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 685
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 242
    iput-object p1, p0, Lcom/htc/widget/HtcListItem;->mContext:Landroid/content/Context;

    .line 244
    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem;->mSectionBottomDivider:Landroid/graphics/drawable/Drawable;

    .line 252
    iget v0, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    .line 254
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem;->initHeights()V

    .line 256
    const v0, 0x20800f6

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mTextureActivatedResId:I

    .line 258
    const v0, 0x208003b

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mTextureResId:I

    .line 259
    const v0, 0x2080177

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mGradientResId:I

    .line 263
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 264
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mBackgroundMode:I

    .line 273
    :goto_0
    return-void

    .line 266
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcListItem;->mBackgroundMode:I

    if-nez v0, :cond_2

    .line 267
    iget v0, p0, Lcom/htc/widget/HtcListItem;->mTextureResId:I

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 268
    :cond_2
    iget v0, p0, Lcom/htc/widget/HtcListItem;->mBackgroundMode:I

    if-ne v0, v2, :cond_3

    .line 269
    iget v0, p0, Lcom/htc/widget/HtcListItem;->mGradientResId:I

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 271
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 207
    if-eqz p2, :cond_1

    .line 209
    sget-object v1, Lcom/htc/R$styleable;->HtcListItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 210
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItem;->mBackgroundMode:I

    .line 211
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 213
    sget-object v1, Lcom/htc/R$styleable;->HtcListItemMode:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 214
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    .line 215
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 217
    iget v1, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput v3, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    .line 223
    .end local v0           #a:Landroid/content/res/TypedArray;
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem;->init(Landroid/content/Context;)V

    .line 224
    return-void

    .line 219
    :cond_1
    iput v3, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    .line 220
    iput v3, p0, Lcom/htc/widget/HtcListItem;->mBackgroundMode:I

    .line 221
    iput v3, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    goto :goto_0
.end method

.method private initHeights()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 227
    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    invoke-static {v0, v1}, Lcom/htc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 229
    invoke-static {}, Lcom/htc/widget/HtcListItemUtil;->getDesiredChildrenGap()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mVerticalGapOfChildren:I

    .line 230
    iget v0, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    invoke-static {v0}, Lcom/htc/widget/HtcListItemUtil;->getDesiredListItemHeight(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mDesiredMinHeight:I

    .line 232
    iget v0, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 233
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItem;->mDesiredMinHeight:I

    invoke-direct {v0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    .line 239
    :cond_1
    :goto_0
    return-void

    .line 235
    :cond_2
    iget v0, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 236
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method private step0(II)V
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    .line 347
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 357
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem;->stepX(II)V

    .line 360
    :goto_0
    return-void

    .line 351
    :sswitch_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItem;->setMeasuredDimension(II)V

    .line 352
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem;->step1(II)V

    .line 353
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem;->step2(II)V

    goto :goto_0

    .line 347
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private step1(II)V
    .locals 13
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x0

    const/high16 v7, 0x4000

    .line 396
    const/4 v1, 0x0

    .line 397
    .local v1, countOfSegmentOfTextAndStamp:F
    iput v11, p0, Lcom/htc/widget/HtcListItem;->mSegmentLength:F

    .line 400
    iget v5, p0, Lcom/htc/widget/HtcListItem;->mVerticalGapOfChildren:I

    .line 401
    .local v5, usedWidth:I
    iget v6, p0, Lcom/htc/widget/HtcListItem;->mLeftSpace:I

    iget v8, p0, Lcom/htc/widget/HtcListItem;->mRightSpace:I

    add-int/2addr v6, v8

    add-int/2addr v5, v6

    .line 404
    const/4 v3, 0x0

    .line 405
    .local v3, lastChild:Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_a

    .line 406
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 408
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v8, 0x8

    if-ne v6, v8, :cond_0

    .line 405
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 412
    :cond_0
    instance-of v6, v0, Lcom/htc/widget/HtcListItemColorBar;

    if-nez v6, :cond_1

    .line 413
    instance-of v6, v0, Lcom/htc/widget/HtcListItemImageComponent;

    if-nez v6, :cond_3

    .line 414
    iget v6, p0, Lcom/htc/widget/HtcListItem;->mVerticalGapOfChildren:I

    add-int/2addr v5, v6

    .line 421
    :cond_1
    :goto_2
    instance-of v6, v0, Lcom/htc/widget/IHtcListItemTextComponent;

    if-eqz v6, :cond_4

    .line 422
    const/high16 v6, 0x4000

    add-float/2addr v1, v6

    .line 483
    :cond_2
    :goto_3
    move-object v3, v0

    goto :goto_1

    :cond_3
    move-object v6, v0

    .line 417
    check-cast v6, Lcom/htc/widget/HtcListItemImageComponent;

    iget-boolean v8, p0, Lcom/htc/widget/HtcListItem;->mAutoMotiveMode:Z

    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcListItemImageComponent;->setAutoMotiveMode(Z)V

    goto :goto_2

    .line 423
    :cond_4
    instance-of v6, v0, Lcom/htc/widget/IHtcListItemStampComponent;

    if-eqz v6, :cond_5

    .line 424
    const/high16 v6, 0x3f80

    add-float/2addr v1, v6

    goto :goto_3

    .line 428
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 432
    .local v4, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v6, v12, :cond_6

    .line 433
    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-nez v6, :cond_6

    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-nez v6, :cond_6

    .line 434
    iget v6, p0, Lcom/htc/widget/HtcListItem;->mVerticalGapOfChildren:I

    iget v8, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v9, p0, Lcom/htc/widget/HtcListItem;->mVerticalGapOfChildren:I

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v4, v6, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 443
    :cond_6
    instance-of v6, v0, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_8

    .line 446
    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v8, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v8

    iget v8, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v6, v8}, Lcom/htc/widget/HtcListItem;->getChildMeasureSpec(III)I

    move-result v6

    const/4 v8, 0x0

    iget v9, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p2, v8, v9}, Lcom/htc/widget/HtcListItem;->getChildMeasureSpec(III)I

    move-result v8

    invoke-virtual {v0, v6, v8}, Landroid/view/View;->measure(II)V

    .line 466
    :goto_4
    instance-of v6, v0, Lcom/htc/widget/HtcListItemColorBar;

    if-nez v6, :cond_7

    .line 467
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    .line 472
    :cond_7
    instance-of v6, v0, Lcom/htc/widget/HtcCompoundButton;

    if-eqz v6, :cond_2

    .line 473
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v8, p0, Lcom/htc/widget/HtcListItem;->mVerticalGapOfChildren:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v8, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    invoke-static {v8}, Lcom/htc/widget/HtcListItemUtil;->getDesiredListItemHeight(I)I

    move-result v8

    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v0, v6, v8}, Landroid/view/View;->measure(II)V

    .line 479
    if-eqz v3, :cond_2

    instance-of v6, v3, Lcom/htc/widget/HtcCompoundButton;

    if-eqz v6, :cond_2

    .line 480
    iget v6, p0, Lcom/htc/widget/HtcListItem;->mVerticalGapOfChildren:I

    add-int/2addr v5, v6

    goto :goto_3

    .line 450
    :cond_8
    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v8, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v8

    iget v8, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v6, v8}, Lcom/htc/widget/HtcListItem;->getChildMeasureSpec(III)I

    move-result v8

    iget v9, p0, Lcom/htc/widget/HtcListItem;->mDesiredMinHeight:I

    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v6, v12, :cond_9

    move v6, v7

    :goto_5
    invoke-static {v9, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {v6, v9, v10}, Lcom/htc/widget/HtcListItem;->getChildMeasureSpec(III)I

    move-result v6

    invoke-virtual {v0, v8, v6}, Landroid/view/View;->measure(II)V

    goto :goto_4

    :cond_9
    const/high16 v6, -0x8000

    goto :goto_5

    .line 485
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_a
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    if-nez v6, :cond_b

    .line 486
    iput v11, p0, Lcom/htc/widget/HtcListItem;->mSegmentLength:F

    .line 489
    :goto_6
    return-void

    .line 488
    :cond_b
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v6, v5

    int-to-float v6, v6

    div-float/2addr v6, v1

    iput v6, p0, Lcom/htc/widget/HtcListItem;->mSegmentLength:F

    goto :goto_6
.end method

.method private step2(II)V
    .locals 20
    .parameter "w"
    .parameter "h"

    .prologue
    .line 497
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcListItem;->mFirstColorBar:Landroid/view/View;

    .line 498
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->mSegmentLength:F

    move/from16 v17, v0

    const/high16 v18, 0x4000

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v13, v0

    .line 499
    .local v13, segmentOfText:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->mSegmentLength:F

    move/from16 v17, v0

    const/high16 v18, 0x3f80

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v12, v0

    .line 504
    .local v12, segmentOfStamp:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->mSegmentLength:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_0

    .line 506
    const/high16 v17, -0x8000

    move/from16 v0, v17

    invoke-static {v13, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListItem;->widthSpecForText:I

    .line 507
    const/high16 v17, -0x8000

    move/from16 v0, v17

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListItem;->widthSpecForStamp:I

    .line 510
    :cond_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/widget/HtcListItem;->mDesiredMinHeight:I

    .line 512
    .local v11, maxHeight:I
    const/16 v16, 0x0

    .line 513
    .local v16, totalWidth:I
    const/4 v10, 0x0

    .line 514
    .local v10, lp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v7, 0x0

    .line 515
    .local v7, freeSpaceReturned:I
    const/4 v8, 0x0

    .line 516
    .local v8, freeSpaceReturnedByText:I
    const/4 v6, 0x0

    .line 517
    .local v6, countOfText:I
    const/4 v5, 0x0

    .line 518
    .local v5, countOfStamp:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListItem;->getChildCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_5

    .line 519
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 521
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 518
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 524
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 527
    instance-of v0, v3, Lcom/htc/widget/IHtcListItemTextComponent;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 528
    add-int/lit8 v6, v6, 0x1

    .line 529
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->widthSpecForText:I

    move/from16 v17, v0

    const/16 v18, 0x0

    iget v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    move/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/htc/widget/HtcListItem;->getChildMeasureSpec(III)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    .line 530
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    move/from16 v0, v17

    if-le v13, v0, :cond_2

    .line 531
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v17, v13, v17

    add-int v8, v8, v17

    .line 540
    :cond_2
    :goto_2
    instance-of v0, v3, Lcom/htc/widget/HtcListItemColorBar;

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 541
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v16, v16, v17

    .line 542
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_1

    .line 533
    :cond_3
    instance-of v0, v3, Lcom/htc/widget/IHtcListItemStampComponent;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 534
    add-int/lit8 v5, v5, 0x1

    .line 535
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->widthSpecForStamp:I

    move/from16 v17, v0

    const/16 v18, 0x0

    iget v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    move/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/htc/widget/HtcListItem;->getChildMeasureSpec(III)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    .line 536
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    move/from16 v0, v17

    if-le v12, v0, :cond_2

    .line 537
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v17, v12, v17

    add-int v7, v7, v17

    goto :goto_2

    .line 544
    :cond_4
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/widget/HtcListItem;->mFirstColorBar:Landroid/view/View;

    goto/16 :goto_1

    .line 549
    .end local v3           #child:Landroid/view/View;
    :cond_5
    if-lez v7, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->mSegmentLength:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_7

    :cond_6
    if-nez v5, :cond_b

    .line 550
    :cond_7
    if-gtz v6, :cond_9

    const/4 v15, 0x0

    .line 551
    .local v15, text:I
    :goto_3
    const/high16 v17, 0x4000

    move/from16 v0, v17

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListItem;->widthSpecForText:I

    .line 553
    const/4 v9, 0x0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListItem;->getChildCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_12

    .line 554
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 555
    .restart local v3       #child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 553
    :cond_8
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 550
    .end local v3           #child:Landroid/view/View;
    .end local v15           #text:I
    :cond_9
    div-int v17, v7, v6

    add-int v15, v13, v17

    goto :goto_3

    .line 557
    .restart local v3       #child:Landroid/view/View;
    .restart local v15       #text:I
    :cond_a
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 559
    instance-of v0, v3, Lcom/htc/widget/IHtcListItemTextComponent;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 560
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->widthSpecForText:I

    move/from16 v17, v0

    const/16 v18, 0x0

    iget v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    move/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/htc/widget/HtcListItem;->getChildMeasureSpec(III)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_5

    .line 564
    .end local v3           #child:Landroid/view/View;
    .end local v15           #text:I
    :cond_b
    if-lez v8, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->mSegmentLength:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_12

    if-lez v5, :cond_12

    .line 565
    if-gtz v5, :cond_d

    const/4 v14, 0x0

    .line 566
    .local v14, stamp:I
    :goto_6
    const/4 v15, 0x0

    .line 567
    .restart local v15       #text:I
    const/high16 v17, -0x8000

    move/from16 v0, v17

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListItem;->widthSpecForStamp:I

    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListItem;->getChildCount()I

    move-result v4

    .line 571
    .local v4, childCount:I
    const/4 v9, 0x0

    :goto_7
    if-ge v9, v4, :cond_f

    .line 572
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 573
    .restart local v3       #child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 571
    :cond_c
    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 565
    .end local v3           #child:Landroid/view/View;
    .end local v4           #childCount:I
    .end local v14           #stamp:I
    .end local v15           #text:I
    :cond_d
    div-int v17, v8, v5

    add-int v14, v12, v17

    goto :goto_6

    .line 575
    .restart local v3       #child:Landroid/view/View;
    .restart local v4       #childCount:I
    .restart local v14       #stamp:I
    .restart local v15       #text:I
    :cond_e
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 577
    instance-of v0, v3, Lcom/htc/widget/IHtcListItemStampComponent;

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 578
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->widthSpecForStamp:I

    move/from16 v17, v0

    const/16 v18, 0x0

    iget v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    move/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/htc/widget/HtcListItem;->getChildMeasureSpec(III)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    .line 579
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v17, v14, v17

    add-int v15, v15, v17

    goto :goto_8

    .line 582
    .end local v3           #child:Landroid/view/View;
    :cond_f
    const/4 v9, 0x0

    :goto_9
    if-ge v9, v4, :cond_12

    .line 583
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 584
    .restart local v3       #child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    div-int v18, v15, v6

    add-int v17, v17, v18

    const/high16 v18, 0x4000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListItem;->widthSpecForText:I

    .line 588
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 582
    :cond_10
    :goto_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 590
    :cond_11
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 592
    instance-of v0, v3, Lcom/htc/widget/IHtcListItemTextComponent;

    move/from16 v17, v0

    if-eqz v17, :cond_10

    .line 593
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->widthSpecForText:I

    move/from16 v17, v0

    const/16 v18, 0x0

    iget v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    move/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/htc/widget/HtcListItem;->getChildMeasureSpec(III)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_a

    .line 600
    .end local v3           #child:Landroid/view/View;
    .end local v4           #childCount:I
    .end local v14           #stamp:I
    .end local v15           #text:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItem;->mFirstColorBar:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_13

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItem;->mFirstColorBar:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItem;->mFirstColorBar:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    move/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/htc/widget/HtcListItem;->getChildMeasureSpec(III)I

    move-result v18

    const/16 v19, 0x0

    move/from16 v0, p2

    move/from16 v1, v19

    invoke-static {v0, v1, v11}, Lcom/htc/widget/HtcListItem;->getChildMeasureSpec(III)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Landroid/view/View;->measure(II)V

    .line 605
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListItem;->mDrawSectionBottomDivider:Z

    move/from16 v17, v0

    if-eqz v17, :cond_14

    .line 606
    add-int/lit8 v11, v11, 0x1

    .line 608
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListItem;->mBottomSpace:I

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int v11, v11, v17

    .line 610
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    if-nez v17, :cond_16

    .line 613
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListItem;->mUseCustomHeight:Z

    move/from16 v17, v0

    if-eqz v17, :cond_15

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcListItem;->setMeasuredDimension(II)V

    .line 624
    :goto_b
    move-object/from16 v0, p0

    iput v11, v0, Lcom/htc/widget/HtcListItem;->mFinalHeight:I

    .line 625
    return-void

    .line 616
    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v11}, Lcom/htc/widget/HtcListItem;->setMeasuredDimension(II)V

    goto :goto_b

    .line 618
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListItem;->mUseCustomHeight:Z

    move/from16 v17, v0

    if-eqz v17, :cond_17

    .line 619
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcListItem;->setMeasuredDimension(II)V

    goto :goto_b

    .line 621
    :cond_17
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Lcom/htc/widget/HtcListItem;->setMeasuredDimension(II)V

    goto :goto_b
.end method

.method private stepX(II)V
    .locals 6
    .parameter "w"
    .parameter "h"

    .prologue
    .line 365
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 367
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->getChildCount()I

    move-result v1

    .line 369
    .local v1, count:I
    iget v4, p0, Lcom/htc/widget/HtcListItem;->mVerticalGapOfChildren:I

    .line 370
    .local v4, totalWidth:I
    iget v5, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    invoke-static {v5}, Lcom/htc/widget/HtcListItemUtil;->getDesiredListItemHeight(I)I

    move-result v3

    .line 372
    .local v3, maxHeight:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 373
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 374
    .local v0, child:Landroid/view/View;
    instance-of v5, v0, Lcom/htc/widget/HtcListItemColorBar;

    if-nez v5, :cond_0

    .line 375
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 376
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 377
    instance-of v5, v0, Lcom/htc/widget/HtcListItemImageComponent;

    if-nez v5, :cond_0

    .line 378
    iget v5, p0, Lcom/htc/widget/HtcListItem;->mVerticalGapOfChildren:I

    add-int/2addr v4, v5

    .line 372
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 383
    .end local v0           #child:Landroid/view/View;
    :cond_1
    iput v3, p0, Lcom/htc/widget/HtcListItem;->mFinalHeight:I

    .line 384
    invoke-virtual {p0, v4, v3}, Lcom/htc/widget/HtcListItem;->setMeasuredDimension(II)V

    .line 385
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/widget/FrameLayout$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 312
    .local v0, childLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 313
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-super {p0, p1, p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 689
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 690
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem;->drawSectionBottomDivider(Landroid/graphics/Canvas;)V

    .line 691
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem;->drawMask(Landroid/graphics/Canvas;)V

    .line 692
    return-void
.end method

.method public enableSectionDivider(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 802
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem;->mDrawSectionBottomDivider:Z

    if-eq v0, p1, :cond_0

    .line 803
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItem;->mDrawSectionBottomDivider:Z

    .line 804
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->invalidate()V

    .line 806
    :cond_0
    return-void
.end method

.method public enableTexture(Z)V
    .locals 2
    .parameter "useTexture"

    .prologue
    const/4 v1, 0x1

    .line 818
    if-eqz p1, :cond_1

    .line 819
    iget v0, p0, Lcom/htc/widget/HtcListItem;->mBackgroundMode:I

    if-eqz v0, :cond_0

    .line 820
    iget v0, p0, Lcom/htc/widget/HtcListItem;->mTextureResId:I

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 821
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mBackgroundMode:I

    .line 829
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcListItem;->mBackgroundMode:I

    if-eq v0, v1, :cond_0

    .line 825
    iget v0, p0, Lcom/htc/widget/HtcListItem;->mGradientResId:I

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 826
    iput v1, p0, Lcom/htc/widget/HtcListItem;->mBackgroundMode:I

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListItem;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3
    .parameter "attrs"

    .prologue
    const/4 v2, -0x2

    .line 302
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 304
    :goto_0
    return-object v1

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public getBackgroundMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 860
    iget v0, p0, Lcom/htc/widget/HtcListItem;->mBackgroundMode:I

    packed-switch v0, :pswitch_data_0

    .line 870
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 862
    :pswitch_0
    const-string v0, "BG_MODE_CUSTOMISED"

    goto :goto_0

    .line 864
    :pswitch_1
    const-string v0, "BG_MODE_NONE"

    goto :goto_0

    .line 866
    :pswitch_2
    const-string v0, "BG_MODE_ONLY_GRADIENT"

    goto :goto_0

    .line 868
    :pswitch_3
    const-string v0, "BG_MODE_TEXTURE"

    goto :goto_0

    .line 860
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getBottomSpace()I
    .locals 1

    .prologue
    .line 753
    iget v0, p0, Lcom/htc/widget/HtcListItem;->mBottomSpace:I

    return v0
.end method

.method getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method public getItemHeight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 712
    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method getTopSpace()I
    .locals 1

    .prologue
    .line 749
    iget v0, p0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    return v0
.end method

.method isBottomRounded()Z
    .locals 2

    .prologue
    .line 716
    iget v0, p0, Lcom/htc/widget/HtcListItem;->mRoundCorner:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcListItem;->mRoundCorner:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTopRounded()Z
    .locals 2

    .prologue
    .line 720
    iget v0, p0, Lcom/htc/widget/HtcListItem;->mRoundCorner:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcListItem;->mRoundCorner:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 628
    iget v2, p0, Lcom/htc/widget/HtcListItem;->mFinalHeight:I

    .line 629
    .local v2, height:I
    iget v5, p0, Lcom/htc/widget/HtcListItem;->mVerticalGapOfChildren:I

    .line 630
    .local v5, left:I
    const/4 v6, 0x0

    .line 631
    .local v6, top:I
    const/4 v1, 0x0

    .line 633
    .local v1, desiredTop:I
    iget v7, p0, Lcom/htc/widget/HtcListItem;->mLeftSpace:I

    add-int/2addr v5, v7

    .line 635
    iget v1, p0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    .line 637
    iget-boolean v7, p0, Lcom/htc/widget/HtcListItem;->mDrawSectionBottomDivider:Z

    if-eqz v7, :cond_0

    .line 638
    add-int/lit8 v1, v1, 0x1

    .line 640
    :cond_0
    const/4 v4, 0x0

    .line 642
    .local v4, lastChild:Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_6

    .line 643
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 645
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    .line 642
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 648
    :cond_1
    add-int v7, v2, v1

    iget v8, p0, Lcom/htc/widget/HtcListItem;->mBottomSpace:I

    sub-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v6, v7, 0x2

    .line 650
    instance-of v7, v0, Lcom/htc/widget/HtcCompoundButton;

    if-nez v7, :cond_2

    if-eqz v4, :cond_3

    instance-of v7, v4, Lcom/htc/widget/HtcCompoundButton;

    if-eqz v7, :cond_3

    .line 652
    :cond_2
    iget v7, p0, Lcom/htc/widget/HtcListItem;->mVerticalGapOfChildren:I

    sub-int/2addr v5, v7

    .line 654
    :cond_3
    instance-of v7, v0, Lcom/htc/widget/HtcListItemColorBar;

    if-eqz v7, :cond_5

    .line 656
    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v0, v7, v6, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 668
    :cond_4
    :goto_2
    move-object v4, v0

    goto :goto_1

    .line 659
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 661
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    .line 663
    instance-of v7, v0, Lcom/htc/widget/HtcListItemImageComponent;

    if-nez v7, :cond_4

    .line 665
    iget v7, p0, Lcom/htc/widget/HtcListItem;->mVerticalGapOfChildren:I

    add-int/2addr v5, v7

    goto :goto_2

    .line 670
    .end local v0           #child:Landroid/view/View;
    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 330
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mFinalHeight:I

    .line 343
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem;->step0(II)V

    .line 344
    return-void
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 320
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 322
    iget v0, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 326
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 323
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/htc/widget/IHtcListItemComponent;

    if-eqz v0, :cond_0

    .line 324
    check-cast p1, Lcom/htc/widget/IHtcListItemComponent;

    .end local p1
    iget v0, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    invoke-interface {p1, v0}, Lcom/htc/widget/IHtcListItemComponent;->notifyItemMode(I)V

    goto :goto_0
.end method

.method public setAutoMotiveMode(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 885
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItem;->mAutoMotiveMode:Z

    if-ne v0, p1, :cond_0

    .line 901
    :goto_0
    return-void

    .line 887
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItem;->mAutoMotiveMode:Z

    .line 888
    if-eqz p1, :cond_1

    .line 891
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    .line 892
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem;->initHeights()V

    .line 893
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 900
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->requestLayout()V

    goto :goto_0

    .line 896
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mMode:I

    .line 897
    invoke-direct {p0}, Lcom/htc/widget/HtcListItem;->initHeights()V

    .line 898
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItem;->enableTexture(Z)V

    goto :goto_1
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 833
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 834
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mBackgroundMode:I

    .line 835
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 839
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 840
    if-nez p1, :cond_0

    .line 841
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mBackgroundMode:I

    .line 844
    :goto_0
    return-void

    .line 843
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mBackgroundMode:I

    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 848
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 849
    iget v0, p0, Lcom/htc/widget/HtcListItem;->mTextureResId:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcListItem;->mTextureActivatedResId:I

    if-ne p1, v0, :cond_1

    .line 850
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mBackgroundMode:I

    .line 857
    :goto_0
    return-void

    .line 851
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcListItem;->mGradientResId:I

    if-ne p1, v0, :cond_2

    .line 852
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mBackgroundMode:I

    goto :goto_0

    .line 853
    :cond_2
    if-nez p1, :cond_3

    .line 854
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mBackgroundMode:I

    goto :goto_0

    .line 856
    :cond_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mBackgroundMode:I

    goto :goto_0
.end method

.method setBottomSpace(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 744
    iput p1, p0, Lcom/htc/widget/HtcListItem;->mBottomSpace:I

    .line 745
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->requestLayout()V

    .line 746
    return-void
.end method

.method setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 773
    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 774
    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 775
    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mDesiredMinHeight:I

    .line 776
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->requestLayout()V

    .line 777
    return-void
.end method

.method setCustomLayoutParamsWithoutReLayout(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 781
    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 782
    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 783
    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/htc/widget/HtcListItem;->mDesiredMinHeight:I

    .line 784
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 787
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->isEnabled()Z

    move-result v2

    if-eq v2, p1, :cond_0

    .line 788
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 789
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 790
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 791
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 789
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 794
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method setLeftSpace(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 761
    iput p1, p0, Lcom/htc/widget/HtcListItem;->mLeftSpace:I

    .line 762
    return-void
.end method

.method setMask(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 724
    iput-object p1, p0, Lcom/htc/widget/HtcListItem;->mMask:Landroid/graphics/drawable/Drawable;

    .line 725
    return-void
.end method

.method setMaskResource(I)V
    .locals 1
    .parameter "rId"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/htc/widget/HtcListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcListItem;->mMask:Landroid/graphics/drawable/Drawable;

    .line 729
    return-void
.end method

.method setRightSpace(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 757
    iput p1, p0, Lcom/htc/widget/HtcListItem;->mRightSpace:I

    .line 758
    return-void
.end method

.method public setRoundCorner(I)V
    .locals 1
    .parameter "corner"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 703
    iget v0, p0, Lcom/htc/widget/HtcListItem;->mRoundCorner:I

    if-eq v0, p1, :cond_0

    .line 704
    iput p1, p0, Lcom/htc/widget/HtcListItem;->mRoundCorner:I

    .line 707
    :cond_0
    return-void
.end method

.method setSpaces(IIII)V
    .locals 0
    .parameter "leftSpace"
    .parameter "topSpace"
    .parameter "rightSpace"
    .parameter "bottomSpace"

    .prologue
    .line 732
    iput p2, p0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    .line 733
    iput p4, p0, Lcom/htc/widget/HtcListItem;->mBottomSpace:I

    .line 734
    iput p3, p0, Lcom/htc/widget/HtcListItem;->mRightSpace:I

    .line 735
    iput p1, p0, Lcom/htc/widget/HtcListItem;->mLeftSpace:I

    .line 736
    return-void
.end method

.method setTopSpace(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 739
    iput p1, p0, Lcom/htc/widget/HtcListItem;->mTopSpace:I

    .line 740
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItem;->requestLayout()V

    .line 741
    return-void
.end method

.method setUseCustomHeight(Z)V
    .locals 0
    .parameter "useCustomHeight"

    .prologue
    .line 769
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItem;->mUseCustomHeight:Z

    .line 770
    return-void
.end method
