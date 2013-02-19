.class public Lcom/htc/widget/HtcSeekBar;
.super Landroid/widget/SeekBar;
.source "HtcSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcSeekBar$SavedState;,
        Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;
    }
.end annotation


# static fields
.field public static final DISPLAY_MODE_BLACK:I = 0x1

.field public static final DISPLAY_MODE_DEFAULT:I

.field public static final DISPLAY_MODE_WHITE:I


# instance fields
.field mBlackDrawable:Landroid/graphics/drawable/Drawable;

.field mDisplayMode:I

.field mDisplayThumb:Z

.field mMinDrawableHeight:I

.field mNormalDrawable:Landroid/graphics/drawable/Drawable;

.field mPressedThumb:Landroid/graphics/drawable/Drawable;

.field mSeekBarPopupWindow:Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;

.field mSwitchLisntener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field mThickBackgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mThickProgressDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mThickSecondaryDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mThickShapeBGDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field mThickShapeProgressDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field mThickShapeSecondaryDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field mThinBackgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mThinProgressDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mThinSecondaryDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mThinShapeBGDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field mThinShapeProgressDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field mThinShapeSecondaryDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field mUserLisntener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 95
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mSwitchLisntener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 44
    iput-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mUserLisntener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 45
    iput-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mSeekBarPopupWindow:Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;

    .line 50
    iput-boolean v6, p0, Lcom/htc/widget/HtcSeekBar;->mDisplayThumb:Z

    .line 51
    const/16 v2, 0xa

    iput v2, p0, Lcom/htc/widget/HtcSeekBar;->mMinDrawableHeight:I

    .line 53
    iput-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThickBackgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 54
    iput-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThickProgressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 55
    iput-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThickSecondaryDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 56
    iput-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThinBackgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 57
    iput-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThinProgressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 58
    iput-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThinSecondaryDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 60
    iput-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThickShapeBGDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 61
    iput-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThickShapeProgressDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 62
    iput-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThickShapeSecondaryDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 63
    iput-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThinShapeBGDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 64
    iput-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThinShapeProgressDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 65
    iput-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThinShapeSecondaryDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 67
    iput v5, p0, Lcom/htc/widget/HtcSeekBar;->mDisplayMode:I

    .line 108
    sget-object v2, Lcom/android/internal/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v2, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 110
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mBlackDrawable:Landroid/graphics/drawable/Drawable;

    .line 111
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    sget-object v2, Lcom/htc/R$styleable;->HtcSeekBar:[I

    invoke-virtual {p1, p2, v2, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 115
    .local v1, nDisplayMode:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mPressedThumb:Landroid/graphics/drawable/Drawable;

    const-string v3, "common_progress_button"

    const v4, 0x2080188

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/widget/HtcSeekBar;->getSkinDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mPressedThumb:Landroid/graphics/drawable/Drawable;

    .line 119
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mPressedThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    const-string v3, "htcseekbar"

    const v4, 0x20801c2

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/widget/HtcSeekBar;->getSkinDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 122
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mBlackDrawable:Landroid/graphics/drawable/Drawable;

    const-string v3, "htcseekbar_b"

    const v4, 0x20801c3

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/widget/HtcSeekBar;->getSkinDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mBlackDrawable:Landroid/graphics/drawable/Drawable;

    .line 125
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mPressedThumb:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcSeekBar;->setMinHeightByDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5, v2, v5, v5}, Lcom/htc/widget/HtcSeekBar;->HtcTileify(ZLandroid/graphics/drawable/Drawable;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mBlackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v6, v2, v5, v5}, Lcom/htc/widget/HtcSeekBar;->HtcTileify(ZLandroid/graphics/drawable/Drawable;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mBlackDrawable:Landroid/graphics/drawable/Drawable;

    .line 129
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcSeekBar;->setDisplayMode(I)V

    .line 132
    new-instance v2, Lcom/htc/widget/HtcSeekBar$1;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcSeekBar$1;-><init>(Lcom/htc/widget/HtcSeekBar;)V

    iput-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mSwitchLisntener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 179
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mSwitchLisntener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-super {p0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 180
    return-void
.end method

.method private declared-synchronized doForceRefreshProgress(IIZ)V
    .locals 7
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getMax()I

    move-result v5

    if-lez v5, :cond_1

    int-to-float v5, p2

    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 284
    .local v4, scale:F
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 285
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    .line 286
    const/4 v3, 0x0

    .line 288
    .local v3, progressDrawable:Landroid/graphics/drawable/Drawable;
    instance-of v5, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_0

    .line 289
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v5, v0

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 292
    :cond_0
    const v5, 0x461c4000

    mul-float/2addr v5, v4

    float-to-int v2, v5

    .line 293
    .local v2, level:I
    if-eqz v3, :cond_2

    .end local v3           #progressDrawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    .end local v2           #level:I
    :goto_2
    monitor-exit p0

    return-void

    .line 283
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #scale:F
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #level:I
    .restart local v3       #progressDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #scale:F
    :cond_2
    move-object v3, v1

    .line 293
    goto :goto_1

    .line 295
    .end local v2           #level:I
    .end local v3           #progressDrawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 283
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #scale:F
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private getSkinDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "defDrawable"
    .parameter "skinResName"
    .parameter "defSkinResId"

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 185
    .local v1, nSkinResId:I
    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 187
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 191
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private modifyBoundary(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "bitmapway"
    .parameter "ninepatchway"
    .parameter "reference"

    .prologue
    .line 300
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 301
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-nez v0, :cond_1

    .line 316
    :goto_1
    return-void

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v0, p2

    .line 300
    goto :goto_0

    .line 304
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 305
    .local v1, nDH:I
    :goto_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getHeight()I

    move-result v2

    .line 307
    .local v2, nVH:I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 308
    .local v3, r:Landroid/graphics/Rect;
    if-lez v1, :cond_3

    .line 309
    sub-int v4, v2, v1

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 310
    add-int v4, v2, v1

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 315
    :goto_3
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 304
    .end local v1           #nDH:I
    .end local v2           #nVH:I
    .end local v3           #r:Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_2

    .line 312
    .restart local v1       #nDH:I
    .restart local v2       #nVH:I
    .restart local v3       #r:Landroid/graphics/Rect;
    :cond_3
    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 313
    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_3
.end method

.method private setMinHeightByDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 352
    if-nez p1, :cond_1

    .line 369
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 356
    .restart local p1
    :cond_1
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 357
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 358
    .local v0, nDrawableHeight:I
    iget v1, p0, Lcom/htc/widget/HtcSeekBar;->mMinDrawableHeight:I

    if-ge v1, v0, :cond_2

    .line 359
    iput v0, p0, Lcom/htc/widget/HtcSeekBar;->mMinDrawableHeight:I

    .line 363
    .end local v0           #nDrawableHeight:I
    :cond_2
    instance-of v1, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v1, :cond_0

    .line 364
    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 365
    .restart local v0       #nDrawableHeight:I
    iget v1, p0, Lcom/htc/widget/HtcSeekBar;->mMinDrawableHeight:I

    if-ge v1, v0, :cond_0

    .line 366
    iput v0, p0, Lcom/htc/widget/HtcSeekBar;->mMinDrawableHeight:I

    goto :goto_0
.end method


# virtual methods
.method public HtcTileify(ZLandroid/graphics/drawable/Drawable;ZI)Landroid/graphics/drawable/Drawable;
    .locals 20
    .parameter "bThick"
    .parameter "drawable"
    .parameter "clip"
    .parameter "nID"

    .prologue
    .line 196
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/graphics/drawable/LayerDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v6, p2

    .line 197
    check-cast v6, Landroid/graphics/drawable/LayerDrawable;

    .line 198
    .local v6, background:Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v5

    .line 199
    .local v5, N:I
    new-array v14, v5, [Landroid/graphics/drawable/Drawable;

    .line 201
    .local v14, outDrawables:[Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v5, :cond_2

    .line 202
    invoke-virtual {v6, v8}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v9

    .line 203
    .local v9, id:I
    invoke-virtual {v6, v8}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    const v17, 0x102000d

    move/from16 v0, v17

    if-eq v9, v0, :cond_0

    const v17, 0x102000f

    move/from16 v0, v17

    if-ne v9, v0, :cond_1

    :cond_0
    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/htc/widget/HtcSeekBar;->HtcTileify(ZLandroid/graphics/drawable/Drawable;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    aput-object v17, v14, v8

    .line 201
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 203
    :cond_1
    const/16 v17, 0x0

    goto :goto_1

    .line 207
    .end local v9           #id:I
    :cond_2
    new-instance v11, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v11, v14}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 209
    .local v11, newBg:Landroid/graphics/drawable/LayerDrawable;
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v5, :cond_5

    .line 210
    invoke-virtual {v6, v8}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v8, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 209
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 215
    .end local v5           #N:I
    .end local v6           #background:Landroid/graphics/drawable/LayerDrawable;
    .end local v8           #i:I
    .end local v11           #newBg:Landroid/graphics/drawable/LayerDrawable;
    .end local v14           #outDrawables:[Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v10, p2

    .line 216
    check-cast v10, Landroid/graphics/drawable/StateListDrawable;

    .line 217
    .local v10, in:Landroid/graphics/drawable/StateListDrawable;
    new-instance v13, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 218
    .local v13, out:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v12

    .line 219
    .local v12, numStates:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_3
    if-ge v8, v12, :cond_4

    .line 220
    invoke-virtual {v10, v8}, Landroid/graphics/drawable/StateListDrawable;->getStateSet(I)[I

    move-result-object v17

    invoke-virtual {v10, v8}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcSeekBar;->HtcTileify(ZLandroid/graphics/drawable/Drawable;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 219
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    move-object v11, v13

    .line 272
    .end local v8           #i:I
    .end local v10           #in:Landroid/graphics/drawable/StateListDrawable;
    .end local v12           #numStates:I
    .end local v13           #out:Landroid/graphics/drawable/StateListDrawable;
    :cond_5
    :goto_4
    return-object v11

    .line 224
    :cond_6
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v17, p2

    .line 225
    check-cast v17, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v16

    .line 227
    .local v16, tileBitmap:Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v17, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 229
    .local v15, shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    new-instance v7, Landroid/graphics/BitmapShader;

    sget-object v17, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v7, v0, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 231
    .local v7, bitmapShader:Landroid/graphics/BitmapShader;
    invoke-virtual {v15}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 232
    sparse-switch p4, :sswitch_data_0

    .line 264
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setMinHeightByDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    if-eqz p3, :cond_7

    new-instance v17, Landroid/graphics/drawable/ClipDrawable;

    const/16 v18, 0x3

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v15, v1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object/from16 v15, v17

    .end local v15           #shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    :cond_7
    move-object v11, v15

    goto :goto_4

    .line 234
    .restart local v15       #shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    :sswitch_0
    if-eqz p1, :cond_8

    move-object/from16 v17, p2

    .line 235
    check-cast v17, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcSeekBar;->mThickBackgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 236
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/widget/HtcSeekBar;->mThickShapeBGDrawable:Landroid/graphics/drawable/ShapeDrawable;

    goto :goto_5

    :cond_8
    move-object/from16 v17, p2

    .line 238
    check-cast v17, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcSeekBar;->mThinBackgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 239
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/widget/HtcSeekBar;->mThinShapeBGDrawable:Landroid/graphics/drawable/ShapeDrawable;

    goto :goto_5

    .line 243
    :sswitch_1
    if-eqz p1, :cond_9

    move-object/from16 v17, p2

    .line 244
    check-cast v17, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcSeekBar;->mThickProgressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 245
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/widget/HtcSeekBar;->mThickShapeProgressDrawable:Landroid/graphics/drawable/ShapeDrawable;

    goto :goto_5

    :cond_9
    move-object/from16 v17, p2

    .line 247
    check-cast v17, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcSeekBar;->mThinProgressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 248
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/widget/HtcSeekBar;->mThinShapeProgressDrawable:Landroid/graphics/drawable/ShapeDrawable;

    goto :goto_5

    .line 252
    :sswitch_2
    if-eqz p1, :cond_a

    move-object/from16 v17, p2

    .line 253
    check-cast v17, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcSeekBar;->mThickSecondaryDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 254
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/widget/HtcSeekBar;->mThickShapeSecondaryDrawable:Landroid/graphics/drawable/ShapeDrawable;

    goto :goto_5

    :cond_a
    move-object/from16 v17, p2

    .line 256
    check-cast v17, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcSeekBar;->mThinSecondaryDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 257
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/widget/HtcSeekBar;->mThinShapeSecondaryDrawable:Landroid/graphics/drawable/ShapeDrawable;

    goto :goto_5

    .line 270
    .end local v7           #bitmapShader:Landroid/graphics/BitmapShader;
    .end local v15           #shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    .end local v16           #tileBitmap:Landroid/graphics/Bitmap;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setMinHeightByDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v11, p2

    .line 272
    goto/16 :goto_4

    .line 232
    nop

    :sswitch_data_0
    .sparse-switch
        0x1020000 -> :sswitch_0
        0x102000d -> :sswitch_1
        0x102000f -> :sswitch_2
    .end sparse-switch
.end method

.method public getDisplayMode()I
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lcom/htc/widget/HtcSeekBar;->mDisplayMode:I

    return v0
.end method

.method public getHtcSeekBarPopupWindowListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar;->mSeekBarPopupWindow:Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 501
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 502
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar;->mSeekBarPopupWindow:Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar;->mSeekBarPopupWindow:Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;

    invoke-interface {v0, p1}, Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 504
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 480
    invoke-super {p0}, Landroid/widget/SeekBar;->onDetachedFromWindow()V

    .line 481
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar;->mSeekBarPopupWindow:Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar;->mSeekBarPopupWindow:Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;

    invoke-interface {v0}, Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;->onDetachedFromWindow()V

    .line 483
    :cond_0
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v5, 0x1

    .line 396
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->onMeasure(II)V

    .line 400
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getMeasuredWidth()I

    move-result v1

    .line 401
    .local v1, dw:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getMeasuredHeight()I

    move-result v0

    .line 403
    .local v0, dh:I
    and-int/lit8 v4, v0, 0x1

    if-ne v5, v4, :cond_0

    .line 404
    add-int/lit8 v0, v0, 0x1

    .line 408
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 409
    .local v2, specMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 410
    .local v3, specSize:I
    and-int/lit8 v4, v3, 0x1

    if-ne v5, v4, :cond_1

    .line 411
    add-int/lit8 v4, v3, 0x1

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 414
    :cond_1
    invoke-static {v1, p1}, Lcom/htc/widget/HtcSeekBar;->resolveSize(II)I

    move-result v4

    invoke-static {v0, p2}, Lcom/htc/widget/HtcSeekBar;->resolveSize(II)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/htc/widget/HtcSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    monitor-exit p0

    return-void

    .line 396
    .end local v0           #dh:I
    .end local v1           #dw:I
    .end local v2           #specMode:I
    .end local v3           #specSize:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 582
    move-object v0, p1

    check-cast v0, Lcom/htc/widget/HtcSeekBar$SavedState;

    .line 583
    .local v0, ss:Lcom/htc/widget/HtcSeekBar$SavedState;
    invoke-virtual {v0}, Lcom/htc/widget/HtcSeekBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/SeekBar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 585
    iget v1, v0, Lcom/htc/widget/HtcSeekBar$SavedState;->mDisplayThumb:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcSeekBar;->setThumbVisible(Z)V

    .line 586
    return-void

    .line 585
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 572
    invoke-super {p0}, Landroid/widget/SeekBar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 573
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/htc/widget/HtcSeekBar$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcSeekBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 575
    .local v0, ss:Lcom/htc/widget/HtcSeekBar$SavedState;
    iget-boolean v2, p0, Lcom/htc/widget/HtcSeekBar;->mDisplayThumb:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput v2, v0, Lcom/htc/widget/HtcSeekBar$SavedState;->mDisplayThumb:I

    .line 577
    return-object v0

    .line 575
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    const/4 v3, 0x0

    const v6, 0x102000f

    const v5, 0x102000d

    const/high16 v4, 0x102

    .line 325
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 326
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mPressedThumb:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v3}, Lcom/htc/widget/HtcSeekBar;->modifyBoundary(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 330
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    .line 331
    iget-object v1, p0, Lcom/htc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 332
    .local v1, ld:Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 333
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mThinShapeBGDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThinBackgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v2, v0, v3}, Lcom/htc/widget/HtcSeekBar;->modifyBoundary(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 334
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 335
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mThinShapeSecondaryDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThinSecondaryDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v2, v0, v3}, Lcom/htc/widget/HtcSeekBar;->modifyBoundary(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 336
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 337
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mThinShapeProgressDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThinProgressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v2, v0, v3}, Lcom/htc/widget/HtcSeekBar;->modifyBoundary(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 340
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #ld:Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mBlackDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_1

    .line 341
    iget-object v1, p0, Lcom/htc/widget/HtcSeekBar;->mBlackDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 342
    .restart local v1       #ld:Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 343
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mThickShapeBGDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThickBackgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v2, v0, v3}, Lcom/htc/widget/HtcSeekBar;->modifyBoundary(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 344
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 345
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mThickShapeSecondaryDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThickSecondaryDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v2, v0, v3}, Lcom/htc/widget/HtcSeekBar;->modifyBoundary(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 346
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 347
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mThickShapeProgressDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThickProgressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v2, v0, v3}, Lcom/htc/widget/HtcSeekBar;->modifyBoundary(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 349
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #ld:Landroid/graphics/drawable/LayerDrawable;
    :cond_1
    return-void
.end method

.method public setDisplayMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 423
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 424
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar;->mBlackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 425
    iput p1, p0, Lcom/htc/widget/HtcSeekBar;->mDisplayMode:I

    .line 430
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 428
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcSeekBar;->mDisplayMode:I

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 494
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 495
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar;->mSeekBarPopupWindow:Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar;->mSeekBarPopupWindow:Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;

    invoke-interface {v0, p1}, Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;->setEnabled(Z)V

    .line 497
    :cond_0
    return-void
.end method

.method public setHtcSeekBarPopupWindowListener(Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;)V
    .locals 0
    .parameter "mSeekBarPopupWindow"

    .prologue
    .line 468
    iput-object p1, p0, Lcom/htc/widget/HtcSeekBar;->mSeekBarPopupWindow:Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;

    .line 469
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1
    .parameter "l"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar;->mSwitchLisntener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 79
    iput-object p1, p0, Lcom/htc/widget/HtcSeekBar;->mUserLisntener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 80
    return-void
.end method

.method public setPadding(IIII)V
    .locals 5
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    .line 514
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getThumbOffset()I

    move-result v2

    if-le v2, p1, :cond_0

    .line 515
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getThumbOffset()I

    move-result p1

    .line 516
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getThumbOffset()I

    move-result v2

    if-le v2, p3, :cond_1

    .line 517
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getThumbOffset()I

    move-result p3

    .line 520
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 522
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 523
    .local v1, r:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getPaddingTop()I

    move-result v3

    sub-int v0, v2, v3

    .line 525
    .local v0, b:I
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 526
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 528
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mBlackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 529
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mBlackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 531
    :cond_3
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "d"

    .prologue
    const/4 v2, 0x0

    .line 378
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 379
    const v0, 0x102000d

    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/widget/HtcSeekBar;->doForceRefreshProgress(IIZ)V

    .line 380
    const v0, 0x102000f

    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getSecondaryProgress()I

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/widget/HtcSeekBar;->doForceRefreshProgress(IIZ)V

    .line 381
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "thumb"

    .prologue
    .line 452
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 453
    iput-object p1, p0, Lcom/htc/widget/HtcSeekBar;->mPressedThumb:Landroid/graphics/drawable/Drawable;

    .line 454
    return-void
.end method

.method public setThumbVisible(Z)V
    .locals 3
    .parameter "bDisplay"

    .prologue
    .line 436
    iput-boolean p1, p0, Lcom/htc/widget/HtcSeekBar;->mDisplayThumb:Z

    .line 437
    iget-object v1, p0, Lcom/htc/widget/HtcSeekBar;->mPressedThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 438
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mPressedThumb:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 441
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getProgress()I

    move-result v0

    .line 442
    .local v0, old:I
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    .line 443
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    .line 444
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcSeekBar;->setProgress(I)V

    .line 445
    return-void

    .line 438
    .end local v0           #old:I
    :cond_1
    const/16 v1, 0xff

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 487
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 488
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar;->mSeekBarPopupWindow:Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar;->mSeekBarPopupWindow:Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;

    invoke-interface {v0, p1}, Lcom/htc/widget/HtcSeekBar$OnHtcSeekBarChangeListener;->setVisibility(I)V

    .line 490
    :cond_0
    return-void
.end method
