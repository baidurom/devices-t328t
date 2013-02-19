.class public Lcom/htc/sunny/SGallery;
.super Lcom/htc/sunny/SAdapterView;
.source "SGallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny/SGallery$13;,
        Lcom/htc/sunny/SGallery$OnScrollListener;,
        Lcom/htc/sunny/SGallery$AnimationInfo;,
        Lcom/htc/sunny/SGallery$INTERPOLATE;,
        Lcom/htc/sunny/SGallery$ItemContainer;,
        Lcom/htc/sunny/SGallery$DIRECTION;,
        Lcom/htc/sunny/SGallery$OnClickListener;
    }
.end annotation


# static fields
.field protected static final ANIMATION_FLING:I = 0x1

.field protected static final ANIMATION_HOMING:I = 0x2

.field protected static final ANIMATION_UNKNOW:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "3DGlideMode"

.field public static final STATE_BOUNCING:I = 0x7

.field public static final STATE_BOUNCING_END:I = 0x8

.field public static final STATE_FLING:I = 0x3

.field public static final STATE_FLING_END:I = 0x4

.field public static final STATE_HOMING:I = 0x5

.field public static final STATE_HOMING_END:I = 0x6

.field public static final STATE_IDLE:I = 0x9

.field public static final STATE_MOUSE_DOWN:I = 0x0

.field public static final STATE_MOUSE_PAN:I = 0x2

.field public static final STATE_MOUSE_UP:I = 0x1

.field public static final STATE_UNKNOW:I = -0x1


# instance fields
.field protected DURATION_BOUNCING:I

.field protected DURATION_FLING:I

.field protected DURATION_HOMING:I

.field protected mAdapter:Lcom/htc/sunny/SGalleryAdapter;

.field protected mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

.field protected mClickListener:Lcom/htc/sunny/SGallery$OnClickListener;

.field protected mClipSize:I

.field protected mContainerCount:I

.field protected mCurrentPosition:I

.field protected mDataCount:I

.field protected mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

.field protected mDividerHeight:I

.field protected mDividerTextureId:I

.field protected mDividerWidth:I

.field protected mEnableScrollBar:Z

.field protected mEnableSelector:Z

.field protected mEnabledClip:Z

.field protected mEnabledDivider:Z

.field protected mEndDataIndex:I

.field protected mForceLayout:Z

.field protected mGalleryState:I

.field protected mGalleryVisibility:Z

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field private mHashCode:I

.field protected mHeight_H:I

.field protected mIsBlockDown:Z

.field protected mIsBlockTop:Z

.field protected mIsOverBottomBoundary:Z

.field protected mIsOverTopBoundary:Z

.field private mIsPressed:Z

.field protected mIsSingleTapUp:Z

.field protected mIsTouchable:Z

.field protected mIsVerticalGallery:Z

.field protected mItemBackgroundPressTextureId:I

.field protected mItemBackgroundRestTextureId:I

.field protected mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

.field protected mItemHeight:I

.field protected mItemWidth:I

.field protected mLowerBoundPosition:I

.field protected mPaddingBottom:I

.field protected mPaddingLeft:I

.field protected mPaddingRight:I

.field protected mPaddingTop:I

.field private mPressedContainerId:I

.field protected mScrollBarView:Lcom/htc/sunny/SScrollBarView;

.field protected mScrollListener:Lcom/htc/sunny/SGallery$OnScrollListener;

.field protected mSelectorPressDrawable:Landroid/graphics/drawable/Drawable;

.field protected mSelectorRenderOrder:I

.field protected mSelectorRestDrawable:Landroid/graphics/drawable/Drawable;

.field protected mSpacing:I

.field protected mStartDataIndex:I

.field protected mTotalItemsLength:I

.field protected mUpperBoundPosition:I

.field protected mViewColumnCount:I

.field protected mViewHeight:I

.field protected mViewWidth:I

.field protected mWidth_H:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V
    .locals 1
    .parameter "context"
    .parameter "surfaceView"

    .prologue
    .line 508
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/sunny/SGallery;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;Z)V

    .line 509
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;Z)V
    .locals 5
    .parameter "context"
    .parameter "surfaceView"
    .parameter "bEnableClip"

    .prologue
    const/16 v4, 0x28

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 512
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny/SAdapterView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    .line 193
    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    .line 198
    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 203
    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mClickListener:Lcom/htc/sunny/SGallery$OnClickListener;

    .line 208
    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mScrollListener:Lcom/htc/sunny/SGallery$OnScrollListener;

    .line 287
    new-instance v0, Lcom/htc/sunny/SGallery$AnimationInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SGallery$AnimationInfo;-><init>(Lcom/htc/sunny/SGallery;)V

    iput-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    .line 293
    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    .line 298
    iput v2, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundPressTextureId:I

    .line 303
    iput v2, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundRestTextureId:I

    .line 308
    iput v2, p0, Lcom/htc/sunny/SGallery;->mDividerTextureId:I

    .line 309
    iput v2, p0, Lcom/htc/sunny/SGallery;->mDividerWidth:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mDividerHeight:I

    .line 314
    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mSelectorPressDrawable:Landroid/graphics/drawable/Drawable;

    .line 319
    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mSelectorRestDrawable:Landroid/graphics/drawable/Drawable;

    .line 324
    const/16 v0, -0xc8

    iput v0, p0, Lcom/htc/sunny/SGallery;->mSelectorRenderOrder:I

    .line 329
    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .line 334
    iput v2, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    .line 339
    iput v2, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    .line 344
    iput v3, p0, Lcom/htc/sunny/SGallery;->mViewColumnCount:I

    .line 349
    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mGalleryVisibility:Z

    .line 351
    iput v2, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    .line 352
    iput v2, p0, Lcom/htc/sunny/SGallery;->mWidth_H:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mHeight_H:I

    .line 358
    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mIsTouchable:Z

    .line 363
    iput v2, p0, Lcom/htc/sunny/SGallery;->mTotalItemsLength:I

    .line 368
    iput v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    .line 373
    iput v2, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    .line 378
    iput v2, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    .line 380
    iput v2, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    .line 382
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SGallery;->mHashCode:I

    .line 385
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsPressed:Z

    .line 386
    iput v2, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    .line 391
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsSingleTapUp:Z

    .line 392
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsOverTopBoundary:Z

    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsOverBottomBoundary:Z

    .line 393
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsBlockTop:Z

    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsBlockDown:Z

    .line 398
    sget-object v0, Lcom/htc/sunny/SGallery$DIRECTION;->D_UNKNOWN:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    .line 403
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mForceLayout:Z

    .line 408
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    .line 415
    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mEnabledClip:Z

    .line 420
    iput v2, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    .line 421
    iput v2, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    .line 426
    iput v2, p0, Lcom/htc/sunny/SGallery;->mSpacing:I

    .line 431
    iput v2, p0, Lcom/htc/sunny/SGallery;->mPaddingLeft:I

    .line 436
    iput v2, p0, Lcom/htc/sunny/SGallery;->mPaddingTop:I

    .line 441
    iput v2, p0, Lcom/htc/sunny/SGallery;->mPaddingRight:I

    .line 446
    iput v2, p0, Lcom/htc/sunny/SGallery;->mPaddingBottom:I

    .line 451
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    .line 456
    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mEnabledDivider:Z

    .line 461
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mEnableScrollBar:Z

    .line 466
    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mEnableSelector:Z

    .line 471
    iput v4, p0, Lcom/htc/sunny/SGallery;->DURATION_BOUNCING:I

    .line 476
    iput v4, p0, Lcom/htc/sunny/SGallery;->DURATION_HOMING:I

    .line 481
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/sunny/SGallery;->DURATION_FLING:I

    .line 513
    invoke-super {p0, p3}, Lcom/htc/sunny/SAdapterView;->enableMaskNode(Z)V

    .line 514
    iput-boolean p3, p0, Lcom/htc/sunny/SGallery;->mEnabledClip:Z

    .line 516
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/sunny/SGallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 517
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 518
    return-void
.end method

.method private getSpriteIndex(I)I
    .locals 1
    .parameter "nTag"

    .prologue
    const/4 v0, -0x1

    .line 1106
    if-gt p1, v0, :cond_0

    .line 1107
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/sunny/SGallery;->mHashCode:I

    sub-int v0, p1, v0

    goto :goto_0
.end method

.method private getSpriteTag(I)I
    .locals 1
    .parameter "nSpriteIndex"

    .prologue
    .line 1102
    iget v0, p0, Lcom/htc/sunny/SGallery;->mHashCode:I

    add-int/2addr v0, p1

    return v0
.end method

.method private updateContainer(Lcom/htc/sunny/SGallery$ItemContainer;)V
    .locals 2
    .parameter "container"

    .prologue
    .line 1233
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    if-nez v0, :cond_1

    .line 1237
    :cond_0
    :goto_0
    return-void

    .line 1235
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {p1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/htc/sunny/SGalleryAdapter;->getView(Lcom/htc/sunny/SView;I)Lcom/htc/sunny/SView;

    .line 1236
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/sunny/SGallery$ItemContainer;->setValid(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected Get2DX(F)F
    .locals 1
    .parameter "n3DX"

    .prologue
    .line 1903
    iget v0, p0, Lcom/htc/sunny/SGallery;->mWidth_H:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    return v0
.end method

.method protected Get2DY(F)F
    .locals 1
    .parameter "n3DY"

    .prologue
    .line 1895
    iget v0, p0, Lcom/htc/sunny/SGallery;->mHeight_H:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    return v0
.end method

.method protected Get3DX(F)F
    .locals 1
    .parameter "n2DX"

    .prologue
    .line 1919
    iget v0, p0, Lcom/htc/sunny/SGallery;->mWidth_H:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    return v0
.end method

.method protected Get3DY(F)F
    .locals 1
    .parameter "n2DY"

    .prologue
    .line 1911
    iget v0, p0, Lcom/htc/sunny/SGallery;->mHeight_H:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    return v0
.end method

.method protected addNewContainers()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 826
    iget-object v7, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-nez v7, :cond_1

    .line 867
    :cond_0
    return-void

    .line 828
    :cond_1
    iget v4, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    .local v4, index:I
    :goto_0
    iget v7, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    if-gt v4, v7, :cond_0

    .line 830
    const/4 v1, 0x0

    .line 831
    .local v1, bUpdated:Z
    const/4 v6, 0x0

    .line 832
    .local v6, updatedContainer:Lcom/htc/sunny/SGallery$ItemContainer;
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SGallery$ItemContainer;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v2, v0, v3

    .line 833
    .local v2, container:Lcom/htc/sunny/SGallery$ItemContainer;
    if-nez v2, :cond_3

    .line 832
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 835
    :cond_3
    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v2}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v7

    if-ne v7, v4, :cond_5

    invoke-virtual {v2}, Lcom/htc/sunny/SGallery$ItemContainer;->isValid()Z

    move-result v7

    if-ne v9, v7, :cond_5

    .line 836
    const/4 v1, 0x1

    .line 844
    .end local v2           #container:Lcom/htc/sunny/SGallery$ItemContainer;
    :cond_4
    :goto_2
    if-ne v9, v1, :cond_6

    .line 828
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 838
    .restart local v2       #container:Lcom/htc/sunny/SGallery$ItemContainer;
    :cond_5
    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v2}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v7

    if-ne v7, v4, :cond_2

    invoke-virtual {v2}, Lcom/htc/sunny/SGallery$ItemContainer;->isValid()Z

    move-result v7

    if-nez v7, :cond_2

    .line 839
    move-object v6, v2

    .line 840
    goto :goto_2

    .line 848
    .end local v2           #container:Lcom/htc/sunny/SGallery$ItemContainer;
    :cond_6
    if-nez v6, :cond_7

    .line 850
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_7

    aget-object v2, v0, v3

    .line 851
    .restart local v2       #container:Lcom/htc/sunny/SGallery$ItemContainer;
    if-eqz v2, :cond_8

    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v2}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_8

    .line 852
    move-object v6, v2

    .line 859
    .end local v2           #container:Lcom/htc/sunny/SGallery$ItemContainer;
    :cond_7
    if-eqz v6, :cond_9

    .line 860
    #setter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v6, v4}, Lcom/htc/sunny/SGallery$ItemContainer;->access$002(Lcom/htc/sunny/SGallery$ItemContainer;I)I

    .line 861
    invoke-direct {p0, v6}, Lcom/htc/sunny/SGallery;->updateContainer(Lcom/htc/sunny/SGallery$ItemContainer;)V

    goto :goto_3

    .line 850
    .restart local v2       #container:Lcom/htc/sunny/SGallery$ItemContainer;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 863
    .end local v2           #container:Lcom/htc/sunny/SGallery$ItemContainer;
    :cond_9
    const-string v7, "3DGlideMode"

    const-string v8, "[SGallery] SGalleryaddNewContainers() can\'t find free container !!!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method protected caculateMeasurement()V
    .locals 3

    .prologue
    .line 896
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v0, v1, :cond_3

    .line 897
    iget v0, p0, Lcom/htc/sunny/SGallery;->mPaddingTop:I

    neg-int v0, v0

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    .line 898
    iget v0, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny/SGallery;->mSpacing:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mTotalItemsLength:I

    .line 899
    iget v0, p0, Lcom/htc/sunny/SGallery;->mTotalItemsLength:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mPaddingTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny/SGallery;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_2

    .line 900
    iget v0, p0, Lcom/htc/sunny/SGallery;->mTotalItemsLength:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny/SGallery;->mPaddingBottom:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    .line 914
    :goto_0
    iget v0, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    if-le v0, v1, :cond_5

    .line 915
    iget v0, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    iput v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    .line 920
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    if-eqz v0, :cond_1

    .line 921
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SScrollBarView;->setScrollViewRange(I)V

    .line 923
    :cond_1
    return-void

    .line 902
    :cond_2
    iget v0, p0, Lcom/htc/sunny/SGallery;->mPaddingTop:I

    neg-int v0, v0

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    goto :goto_0

    .line 905
    :cond_3
    iget v0, p0, Lcom/htc/sunny/SGallery;->mPaddingLeft:I

    neg-int v0, v0

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    .line 906
    iget v0, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny/SGallery;->mSpacing:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mTotalItemsLength:I

    .line 907
    iget v0, p0, Lcom/htc/sunny/SGallery;->mTotalItemsLength:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny/SGallery;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_4

    .line 908
    iget v0, p0, Lcom/htc/sunny/SGallery;->mTotalItemsLength:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny/SGallery;->mPaddingRight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    goto :goto_0

    .line 910
    :cond_4
    iget v0, p0, Lcom/htc/sunny/SGallery;->mPaddingLeft:I

    neg-int v0, v0

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    goto :goto_0

    .line 916
    :cond_5
    iget v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    if-le v0, v1, :cond_0

    .line 917
    iget v0, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    iput v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    goto :goto_1
.end method

.method protected createResource()V
    .locals 1

    .prologue
    .line 1539
    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->createResource()V

    .line 1540
    iget-boolean v0, p0, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    if-nez v0, :cond_0

    .line 1543
    :goto_0
    return-void

    .line 1542
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->initContainers()V

    goto :goto_0
.end method

.method protected destroyContainers()V
    .locals 5

    .prologue
    .line 1115
    iget-object v4, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-eqz v4, :cond_1

    .line 1116
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SGallery$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1117
    .local v1, container:Lcom/htc/sunny/SGallery$ItemContainer;
    if-nez v1, :cond_0

    .line 1116
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1118
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/sunny/SGallery;->removeView(Lcom/htc/sunny/SView;)V

    goto :goto_1

    .line 1121
    .end local v0           #arr$:[Lcom/htc/sunny/SGallery$ItemContainer;
    .end local v1           #container:Lcom/htc/sunny/SGallery$ItemContainer;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->freeItemResource()V

    .line 1122
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    .line 1123
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .line 1124
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1566
    invoke-super {p0, p1}, Lcom/htc/sunny/SAdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 1568
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1570
    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsTouchable:Z

    if-ne v4, v1, :cond_0

    .line 1571
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny/SGallery;->getContainerId(II)I

    move-result v0

    .line 1572
    .local v0, nContainerId:I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 1573
    iput-boolean v4, p0, Lcom/htc/sunny/SGallery;->mIsPressed:Z

    .line 1574
    iput v0, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    .line 1578
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    iget v2, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/htc/sunny/SGallery$ItemContainer;->onFocusChanged(Z)V

    .line 1583
    .end local v0           #nContainerId:I
    :cond_0
    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsPressed:Z

    if-nez v1, :cond_2

    .line 1593
    :cond_1
    :goto_0
    return-void

    .line 1585
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1587
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v4, v1, :cond_1

    .line 1588
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SGallery;->onUpR(Landroid/view/MotionEvent;)V

    .line 1589
    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mIsPressed:Z

    .line 1590
    iput v3, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    goto :goto_0
.end method

.method public enableScrollBar(Z)V
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 930
    new-instance v0, Lcom/htc/sunny/SGallery$4;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SGallery$4;-><init>(Lcom/htc/sunny/SGallery;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 938
    return-void
.end method

.method public enableSelector(Z)V
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 994
    new-instance v0, Lcom/htc/sunny/SGallery$6;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SGallery$6;-><init>(Lcom/htc/sunny/SGallery;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1002
    return-void
.end method

.method public enableVerticalDisplay(Z)V
    .locals 1
    .parameter "bVertical"

    .prologue
    .line 945
    iput-boolean p1, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    .line 946
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny/SScrollBarView;->enableVerticalDisplay(Z)V

    .line 949
    :cond_0
    return-void
.end method

.method protected flingR(I)V
    .locals 9
    .parameter "nVelocity"

    .prologue
    const/4 v7, 0x1

    .line 1289
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->stopAnimation()V

    .line 1291
    if-lez p1, :cond_0

    iget-boolean v6, p0, Lcom/htc/sunny/SGallery;->mIsOverBottomBoundary:Z

    if-ne v7, v6, :cond_0

    .line 1292
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->homingR()V

    .line 1352
    :goto_0
    return-void

    .line 1294
    :cond_0
    if-gez p1, :cond_1

    iget-boolean v6, p0, Lcom/htc/sunny/SGallery;->mIsOverTopBoundary:Z

    if-ne v7, v6, :cond_1

    .line 1295
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->homingR()V

    goto :goto_0

    .line 1299
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    invoke-virtual {v6}, Lcom/htc/sunny/SGallery$AnimationInfo;->reset()V

    .line 1300
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1301
    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iput v7, v6, Lcom/htc/sunny/SGallery$AnimationInfo;->type:I

    .line 1303
    iget-object v6, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    .line 1304
    .local v1, VELOCITY_MIN:I
    const/16 v0, 0xbb8

    .line 1305
    .local v0, VELOCITY_MAX:I
    const/4 v4, 0x0

    .line 1306
    .local v4, nMaxPosOffset:I
    iget-boolean v6, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v7, v6, :cond_3

    .line 1307
    iget v6, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    iget v7, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v7, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    mul-int v4, v6, v7

    .line 1312
    :goto_1
    int-to-float v6, v4

    sub-int v7, v0, v1

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v7, v1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 1314
    .local v5, nTotalOffset:I
    const/4 v2, 0x0

    .line 1315
    .local v2, bBounceBack:Z
    if-lez p1, :cond_4

    .line 1316
    sget-object v6, Lcom/htc/sunny/SGallery$DIRECTION;->D_PREVIOUSE:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    .line 1317
    mul-int/lit8 v5, v5, -0x1

    .line 1318
    iget v6, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    add-int v3, v6, v5

    .line 1319
    .local v3, nEndPos:I
    iget v6, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    if-ge v3, v6, :cond_2

    .line 1321
    sget-object v6, Lcom/htc/sunny/SGallery$DIRECTION;->D_NEXT:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    .line 1322
    iget v6, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    iget v7, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int v5, v6, v7

    .line 1323
    const/4 v2, 0x1

    .line 1336
    :cond_2
    :goto_2
    if-nez v5, :cond_5

    .line 1337
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->onAnimationEnd()V

    goto :goto_0

    .line 1309
    .end local v2           #bBounceBack:Z
    .end local v3           #nEndPos:I
    .end local v5           #nTotalOffset:I
    :cond_3
    iget v6, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    iget v7, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v7, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    mul-int v4, v6, v7

    goto :goto_1

    .line 1326
    .restart local v2       #bBounceBack:Z
    .restart local v5       #nTotalOffset:I
    :cond_4
    sget-object v6, Lcom/htc/sunny/SGallery$DIRECTION;->D_NEXT:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    .line 1327
    iget v6, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    add-int v3, v6, v5

    .line 1328
    .restart local v3       #nEndPos:I
    iget v6, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    if-le v3, v6, :cond_2

    .line 1330
    sget-object v6, Lcom/htc/sunny/SGallery$DIRECTION;->D_PREVIOUSE:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    .line 1331
    iget v6, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    iget v7, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int v5, v6, v7

    .line 1332
    const/4 v2, 0x1

    goto :goto_2

    .line 1341
    :cond_5
    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iput v7, v6, Lcom/htc/sunny/SGallery$AnimationInfo;->mStart:I

    .line 1342
    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iput v5, v6, Lcom/htc/sunny/SGallery$AnimationInfo;->mTotal:I

    .line 1343
    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    .line 1345
    if-nez v2, :cond_6

    .line 1346
    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SGallery;->DURATION_FLING:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    .line 1350
    :goto_3
    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    sget-object v7, Lcom/htc/sunny/SGallery$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SGallery$INTERPOLATE;

    iput-object v7, v6, Lcom/htc/sunny/SGallery$AnimationInfo;->interpolate:Lcom/htc/sunny/SGallery$INTERPOLATE;

    .line 1351
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    goto/16 :goto_0

    .line 1348
    :cond_6
    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SGallery;->DURATION_BOUNCING:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    goto :goto_3
.end method

.method protected freeItemResource()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 767
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 778
    :goto_0
    return-void

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundPressTextureId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    .line 770
    iput v2, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundPressTextureId:I

    .line 772
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundRestTextureId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    .line 773
    iput v2, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundRestTextureId:I

    .line 775
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mDividerTextureId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    .line 776
    iput v2, p0, Lcom/htc/sunny/SGallery;->mDividerTextureId:I

    goto :goto_0
.end method

.method protected freeResource()V
    .locals 0

    .prologue
    .line 1551
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->stopAnimation()V

    .line 1553
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->destroyContainers()V

    .line 1554
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->freeScrollBar()V

    .line 1555
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->freeItemResource()V

    .line 1557
    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->freeResource()V

    .line 1558
    return-void
.end method

.method protected freeScrollBar()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->removeView(Lcom/htc/sunny/SView;)V

    .line 557
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    .line 559
    :cond_0
    return-void
.end method

.method protected getContainerByDataIndex(I)Lcom/htc/sunny/SGallery$ItemContainer;
    .locals 6
    .parameter "nDataIndex"

    .prologue
    const/4 v4, 0x0

    .line 1372
    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-nez v5, :cond_0

    move-object v1, v4

    .line 1381
    :goto_0
    return-object v1

    .line 1374
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SGallery$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 1375
    .local v1, container:Lcom/htc/sunny/SGallery$ItemContainer;
    if-nez v1, :cond_2

    .line 1374
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1377
    :cond_2
    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v5

    if-ne p1, v5, :cond_1

    goto :goto_0

    .end local v1           #container:Lcom/htc/sunny/SGallery$ItemContainer;
    :cond_3
    move-object v1, v4

    .line 1381
    goto :goto_0
.end method

.method protected getContainerId(II)I
    .locals 4
    .parameter "n2DX"
    .parameter "n2DY"

    .prologue
    const/4 v2, -0x1

    .line 1876
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v3, :cond_1

    move v1, v2

    .line 1887
    :cond_0
    :goto_0
    return v1

    .line 1878
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v3, p1, p2}, Lcom/htc/sunny/SunnyEngine;->getHitSprite(II)I

    move-result v0

    .line 1879
    .local v0, nSpriteId:I
    if-ne v2, v0, :cond_2

    move v1, v2

    .line 1880
    goto :goto_0

    .line 1883
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v3, v0, v2}, Lcom/htc/sunny/SunnyEngine;->getTag(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/htc/sunny/SGallery;->getSpriteIndex(I)I

    move-result v1

    .line 1884
    .local v1, nSpriteIndex:I
    if-ltz v1, :cond_3

    iget v3, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    if-lt v1, v3, :cond_0

    :cond_3
    move v1, v2

    .line 1887
    goto :goto_0
.end method

.method protected getInterpolateResult(FFFFLcom/htc/sunny/SGallery$INTERPOLATE;)F
    .locals 11
    .parameter "current"
    .parameter "start"
    .parameter "total"
    .parameter "duration"
    .parameter "interpolate"

    .prologue
    .line 1483
    const/4 v3, 0x0

    .line 1484
    .local v3, nRes:F
    const/4 v6, 0x0

    .local v6, ts:F
    const/4 v5, 0x0

    .line 1485
    .local v5, tc:F
    move v4, p1

    .line 1486
    .local v4, t:F
    move v0, p2

    .line 1487
    .local v0, b:F
    move v1, p3

    .line 1488
    .local v1, c:F
    move v2, p4

    .line 1490
    .local v2, d:F
    sget-object v7, Lcom/htc/sunny/SGallery$13;->$SwitchMap$com$htc$sunny$SGallery$INTERPOLATE:[I

    invoke-virtual/range {p5 .. p5}, Lcom/htc/sunny/SGallery$INTERPOLATE;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1513
    :goto_0
    return v3

    .line 1492
    :pswitch_0
    div-float v7, v1, v2

    mul-float/2addr v7, v4

    add-float v3, v7, v0

    .line 1493
    goto :goto_0

    .line 1495
    :pswitch_1
    div-float/2addr v4, v2

    .line 1496
    mul-float v6, v4, v4

    .line 1497
    mul-float v5, v6, v4

    .line 1498
    const/high16 v7, 0x3f80

    mul-float/2addr v7, v5

    mul-float/2addr v7, v6

    const/high16 v8, -0x3f60

    mul-float/2addr v8, v6

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    const/high16 v8, 0x4120

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    const/high16 v8, -0x3ee0

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    const/high16 v8, 0x40a0

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    mul-float/2addr v7, v1

    add-float v3, v7, v0

    .line 1499
    goto :goto_0

    .line 1508
    :pswitch_2
    div-float v7, v4, v2

    const/high16 v8, 0x3f80

    add-float/2addr v7, v8

    float-to-double v7, v7

    const-wide v9, 0x400921fb54442d18L

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4000

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x3fe0

    add-double/2addr v7, v9

    double-to-float v7, v7

    mul-float/2addr v7, v1

    add-float v3, v7, v0

    .line 1509
    goto :goto_0

    .line 1490
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getRefineDuration(II)I
    .locals 0
    .parameter "nDuration"
    .parameter "nTotalTimeSlot"

    .prologue
    .line 1359
    if-gtz p1, :cond_0

    .line 1360
    const/4 p1, 0x2

    .line 1363
    .end local p1
    :cond_0
    return p1
.end method

.method public hasAnimation()Z
    .locals 2

    .prologue
    .line 1927
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->type:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    if-eqz v0, :cond_0

    .line 1928
    const/4 v0, 0x1

    .line 1930
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected homingR()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1245
    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsOverTopBoundary:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsOverBottomBoundary:Z

    if-nez v1, :cond_1

    .line 1282
    :cond_0
    :goto_0
    return-void

    .line 1249
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    invoke-virtual {v1}, Lcom/htc/sunny/SGallery$AnimationInfo;->reset()V

    .line 1250
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    sget-object v2, Lcom/htc/sunny/SGallery$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SGallery$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->interpolate:Lcom/htc/sunny/SGallery$INTERPOLATE;

    .line 1252
    const/4 v0, 0x0

    .line 1253
    .local v0, nTotalOffset:I
    iget v1, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    if-ge v1, v2, :cond_3

    .line 1254
    sget-object v1, Lcom/htc/sunny/SGallery$DIRECTION;->D_NEXT:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    .line 1255
    iget v1, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int v0, v1, v2

    .line 1263
    :goto_1
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iput v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->mStart:I

    .line 1264
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iput v0, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->mTotal:I

    .line 1265
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    .line 1267
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    sget-object v2, Lcom/htc/sunny/SGallery$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SGallery$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->interpolate:Lcom/htc/sunny/SGallery$INTERPOLATE;

    .line 1269
    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsOverTopBoundary:Z

    if-eq v3, v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsOverBottomBoundary:Z

    if-ne v3, v1, :cond_4

    .line 1270
    :cond_2
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1271
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SGallery;->DURATION_BOUNCING:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    .line 1277
    :goto_2
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    const/4 v2, 0x2

    iput v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->type:I

    .line 1278
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    sget-object v2, Lcom/htc/sunny/SGallery$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SGallery$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->interpolate:Lcom/htc/sunny/SGallery$INTERPOLATE;

    .line 1280
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsTouchable:Z

    .line 1281
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    goto :goto_0

    .line 1256
    :cond_3
    iget v1, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    if-le v1, v2, :cond_0

    .line 1257
    sget-object v1, Lcom/htc/sunny/SGallery$DIRECTION;->D_PREVIOUSE:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    .line 1258
    iget v1, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int v0, v1, v2

    goto :goto_1

    .line 1273
    :cond_4
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1274
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SGallery;->DURATION_HOMING:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    goto :goto_2
.end method

.method protected initContainers()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 566
    iget-object v5, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v5, :cond_0

    .line 648
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    if-nez v5, :cond_2

    .line 569
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->destroyContainers()V

    .line 570
    iput v10, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    .line 571
    invoke-super {p0, v10}, Lcom/htc/sunny/SAdapterView;->setVisibility(Z)V

    goto :goto_0

    .line 575
    :cond_2
    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    invoke-virtual {v5}, Lcom/htc/sunny/SGalleryAdapter;->getItemCount()I

    move-result v4

    .line 576
    .local v4, nNewDataCount:I
    const/4 v3, 0x0

    .line 577
    .local v3, nCountainerCount:I
    iget-boolean v5, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v9, v5, :cond_4

    .line 578
    iget v5, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    iget v6, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    div-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/lit8 v3, v5, 0x2

    .line 582
    :goto_1
    iget v5, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    if-eq v4, v5, :cond_3

    .line 583
    iput v4, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    .line 585
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->caculateMeasurement()V

    .line 588
    :cond_3
    iget v5, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    if-nez v5, :cond_5

    .line 589
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->destroyContainers()V

    .line 590
    invoke-super {p0, v10}, Lcom/htc/sunny/SAdapterView;->setVisibility(Z)V

    goto :goto_0

    .line 580
    :cond_4
    iget v5, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    iget v6, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    div-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/lit8 v3, v5, 0x2

    goto :goto_1

    .line 594
    :cond_5
    iget-boolean v5, p0, Lcom/htc/sunny/SGallery;->mGalleryVisibility:Z

    invoke-virtual {p0, v5}, Lcom/htc/sunny/SGallery;->setVisibility(Z)V

    .line 596
    iget v5, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    if-ne v3, v5, :cond_6

    iget-boolean v5, p0, Lcom/htc/sunny/SGallery;->mForceLayout:Z

    if-ne v9, v5, :cond_d

    .line 598
    :cond_6
    iget-boolean v5, p0, Lcom/htc/sunny/SGallery;->mForceLayout:Z

    if-ne v9, v5, :cond_7

    .line 599
    iget v5, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    iput v5, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    .line 601
    :cond_7
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->destroyContainers()V

    .line 603
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->initItemResource()V

    .line 604
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->initScrollBar()V

    .line 606
    iput v3, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    .line 607
    iget v5, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    new-array v5, v5, [Lcom/htc/sunny/SGallery$ItemContainer;

    iput-object v5, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .line 609
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget v5, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    if-ge v2, v5, :cond_b

    .line 610
    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    new-instance v0, Lcom/htc/sunny/SGallery$ItemContainer;

    iget-object v6, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    invoke-direct {v0, p0, v6, v7}, Lcom/htc/sunny/SGallery$ItemContainer;-><init>(Lcom/htc/sunny/SGallery;Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    aput-object v0, v5, v2

    .line 611
    .local v0, container:Lcom/htc/sunny/SGallery$ItemContainer;
    invoke-virtual {p0, v0, v10}, Lcom/htc/sunny/SGallery;->addView(Lcom/htc/sunny/SView;Z)V

    .line 613
    iget v5, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    iget v6, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    invoke-virtual {v0, v5, v6}, Lcom/htc/sunny/SGallery$ItemContainer;->setBackgroundDisplaySize(II)V

    .line 614
    iget-boolean v5, p0, Lcom/htc/sunny/SGallery;->mEnableSelector:Z

    if-ne v9, v5, :cond_8

    .line 615
    iget v5, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundPressTextureId:I

    iget v6, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundRestTextureId:I

    iget v7, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    iget v8, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/htc/sunny/SGallery$ItemContainer;->setBackgroundImageByTexture(IIII)V

    .line 616
    iget v5, p0, Lcom/htc/sunny/SGallery;->mSelectorRenderOrder:I

    invoke-virtual {p0, v5}, Lcom/htc/sunny/SGallery;->setSelectorRenderOrder(I)V

    .line 618
    :cond_8
    invoke-virtual {v0, v9}, Lcom/htc/sunny/SGallery$ItemContainer;->setTouchable(Z)V

    .line 619
    iget-object v5, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v6, v0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    invoke-direct {p0, v2}, Lcom/htc/sunny/SGallery;->getSpriteTag(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/sunny/SunnyEngine;->setTag(II)V

    .line 620
    iget v5, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    if-ge v2, v5, :cond_a

    .line 621
    #setter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v0, v2}, Lcom/htc/sunny/SGallery$ItemContainer;->access$002(Lcom/htc/sunny/SGallery$ItemContainer;I)I

    .line 627
    :goto_3
    iget-boolean v5, p0, Lcom/htc/sunny/SGallery;->mEnabledDivider:Z

    if-ne v9, v5, :cond_9

    iget-boolean v5, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v9, v5, :cond_9

    .line 628
    new-instance v1, Lcom/htc/sunny/SView;

    iget-object v5, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    invoke-direct {v1, v5, v6}, Lcom/htc/sunny/SView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    .line 629
    .local v1, dividerView:Lcom/htc/sunny/SView;
    invoke-virtual {v0, v1, v9}, Lcom/htc/sunny/SGallery$ItemContainer;->addView(Lcom/htc/sunny/SView;Z)V

    .line 630
    iget v5, p0, Lcom/htc/sunny/SGallery;->mDividerTextureId:I

    iget v6, p0, Lcom/htc/sunny/SGallery;->mDividerWidth:I

    iget v7, p0, Lcom/htc/sunny/SGallery;->mDividerHeight:I

    invoke-virtual {v1, v10, v5, v6, v7}, Lcom/htc/sunny/SView;->setBackgroundImageByTexture(IIII)V

    .line 631
    iget v5, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1, v11, v5, v11}, Lcom/htc/sunny/SView;->setPosition(FFF)V

    .line 609
    .end local v1           #dividerView:Lcom/htc/sunny/SView;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 623
    :cond_a
    const/4 v5, -0x1

    #setter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v0, v5}, Lcom/htc/sunny/SGallery$ItemContainer;->access$002(Lcom/htc/sunny/SGallery$ItemContainer;I)I

    goto :goto_3

    .line 635
    .end local v0           #container:Lcom/htc/sunny/SGallery$ItemContainer;
    :cond_b
    iput-boolean v10, p0, Lcom/htc/sunny/SGallery;->mForceLayout:Z

    .line 645
    :cond_c
    iget v5, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    invoke-virtual {p0, v5}, Lcom/htc/sunny/SGallery;->updateNewPosition(I)V

    .line 647
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    goto/16 :goto_0

    .line 637
    .end local v2           #i:I
    :cond_d
    const/4 v0, 0x0

    .line 638
    .restart local v0       #container:Lcom/htc/sunny/SGallery$ItemContainer;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    iget v5, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    if-ge v2, v5, :cond_c

    .line 639
    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    aget-object v0, v5, v2

    .line 640
    if-eqz v0, :cond_e

    .line 641
    invoke-virtual {v0, v10}, Lcom/htc/sunny/SGallery$ItemContainer;->setValid(Z)V

    .line 638
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method protected initItemResource()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 709
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->freeItemResource()V

    .line 712
    iget-boolean v8, p0, Lcom/htc/sunny/SGallery;->mEnableSelector:Z

    if-ne v11, v8, :cond_1

    .line 714
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mSelectorPressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_3

    .line 715
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mSelectorPressDrawable:Landroid/graphics/drawable/Drawable;

    .line 724
    .local v0, backgroundPress:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    .line 725
    iget v8, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    iget v9, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    invoke-static {v0, v8, v9}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v4

    .line 726
    .local v4, itemBackgroundBitmapPress:Lcom/htc/sunny/SBitmap;
    iget-object v8, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v8}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v8

    iput v8, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundPressTextureId:I

    .line 727
    iget-object v8, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v9, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundPressTextureId:I

    invoke-virtual {v4}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 728
    invoke-virtual {v4}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 732
    .end local v4           #itemBackgroundBitmapPress:Lcom/htc/sunny/SBitmap;
    :cond_0
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mSelectorRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_5

    .line 733
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mSelectorRestDrawable:Landroid/graphics/drawable/Drawable;

    .line 737
    .local v1, backgroundRest:Landroid/graphics/drawable/Drawable;
    :goto_1
    if-eqz v1, :cond_1

    .line 738
    iget v8, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    iget v9, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    invoke-static {v1, v8, v9}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v5

    .line 739
    .local v5, itemBackgroundBitmapRest:Lcom/htc/sunny/SBitmap;
    iget-object v8, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v8}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v8

    iput v8, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundRestTextureId:I

    .line 740
    iget-object v8, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v9, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundRestTextureId:I

    invoke-virtual {v5}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 741
    invoke-virtual {v5}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 747
    .end local v0           #backgroundPress:Landroid/graphics/drawable/Drawable;
    .end local v1           #backgroundRest:Landroid/graphics/drawable/Drawable;
    .end local v5           #itemBackgroundBitmapRest:Lcom/htc/sunny/SBitmap;
    :cond_1
    iget-boolean v8, p0, Lcom/htc/sunny/SGallery;->mEnabledDivider:Z

    if-ne v11, v8, :cond_2

    iget-boolean v8, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v11, v8, :cond_2

    .line 748
    const/4 v2, 0x0

    .line 749
    .local v2, divider:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x108022f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 750
    iget v8, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    iput v8, p0, Lcom/htc/sunny/SGallery;->mDividerWidth:I

    .line 751
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    iput v8, p0, Lcom/htc/sunny/SGallery;->mDividerHeight:I

    .line 752
    iget v8, p0, Lcom/htc/sunny/SGallery;->mDividerWidth:I

    iget v9, p0, Lcom/htc/sunny/SGallery;->mDividerHeight:I

    invoke-static {v2, v8, v9}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v3

    .line 754
    .local v3, dividerBmp:Lcom/htc/sunny/SBitmap;
    iget-object v8, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v8}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v8

    iput v8, p0, Lcom/htc/sunny/SGallery;->mDividerTextureId:I

    .line 755
    iget-object v8, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v9, p0, Lcom/htc/sunny/SGallery;->mDividerTextureId:I

    invoke-virtual {v3}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 757
    invoke-virtual {v3}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 760
    .end local v2           #divider:Landroid/graphics/drawable/Drawable;
    .end local v3           #dividerBmp:Lcom/htc/sunny/SBitmap;
    :cond_2
    return-void

    .line 717
    :cond_3
    iget-object v8, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 718
    .local v6, res:Landroid/content/res/Resources;
    const-string v8, "list_selector_background_pressed"

    const-string v9, "drawable"

    const-string v10, "com.htc"

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 719
    .local v7, resId:I
    iget-object v8, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    const-string v9, "list_selector_background_pressed"

    invoke-static {v8, v9, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 720
    if-nez v7, :cond_4

    const/4 v0, 0x0

    .restart local v0       #backgroundPress:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 721
    .end local v0           #backgroundPress:Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v8, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #backgroundPress:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 735
    .end local v6           #res:Landroid/content/res/Resources;
    .end local v7           #resId:I
    :cond_5
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v8, 0x0

    invoke-direct {v1, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v1       #backgroundRest:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1
.end method

.method protected initScrollBar()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 533
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mEnableScrollBar:Z

    if-ne v3, v0, :cond_0

    .line 534
    new-instance v0, Lcom/htc/sunny/SScrollBarView;

    iget-object v1, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny/SScrollBarView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    .line 535
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->addView(Lcom/htc/sunny/SView;)V

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    if-eqz v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SScrollBarView;->enableVerticalDisplay(Z)V

    .line 540
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SScrollBarView;->setScrollViewRange(I)V

    .line 541
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v3, v0, :cond_2

    .line 542
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SScrollBarView;->setScrolledViewBoundary(Landroid/graphics/Rect;)V

    .line 547
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    .line 548
    return-void

    .line 544
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SScrollBarView;->setScrolledViewBoundary(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 1168
    new-instance v0, Lcom/htc/sunny/SGallery$11;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SGallery$11;-><init>(Lcom/htc/sunny/SGallery;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1173
    return-void
.end method

.method protected notifyDataSetChangedW()V
    .locals 5

    .prologue
    .line 1180
    iget-object v4, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    if-nez v4, :cond_1

    .line 1195
    :cond_0
    return-void

    .line 1182
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-eqz v4, :cond_3

    .line 1183
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SGallery$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 1184
    .local v1, container:Lcom/htc/sunny/SGallery$ItemContainer;
    if-nez v1, :cond_2

    .line 1183
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1185
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/htc/sunny/SGallery$ItemContainer;->setLayoutAnimation(Z)V

    goto :goto_1

    .line 1188
    .end local v0           #arr$:[Lcom/htc/sunny/SGallery$ItemContainer;
    .end local v1           #container:Lcom/htc/sunny/SGallery$ItemContainer;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->initContainers()V

    .line 1189
    iget-object v4, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-eqz v4, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .restart local v0       #arr$:[Lcom/htc/sunny/SGallery$ItemContainer;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1191
    .restart local v1       #container:Lcom/htc/sunny/SGallery$ItemContainer;
    if-nez v1, :cond_4

    .line 1190
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1192
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/htc/sunny/SGallery$ItemContainer;->setLayoutAnimation(Z)V

    goto :goto_3
.end method

.method protected notifyStateChange(I)V
    .locals 1
    .parameter "nState"

    .prologue
    .line 1600
    const/16 v0, 0x9

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-eqz v0, :cond_0

    .line 1601
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v0}, Lcom/htc/sunny/SunnyEngine;->logStatus()V

    .line 1603
    :cond_0
    iput p1, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    .line 1604
    return-void
.end method

.method public notifyUpdateItem(I)V
    .locals 1
    .parameter "nPos"

    .prologue
    .line 1207
    new-instance v0, Lcom/htc/sunny/SGallery$12;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SGallery$12;-><init>(Lcom/htc/sunny/SGallery;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1212
    return-void
.end method

.method protected notifyUpdateItemW(I)V
    .locals 3
    .parameter "nPos"

    .prologue
    .line 1219
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SGallery;->getContainerByDataIndex(I)Lcom/htc/sunny/SGallery$ItemContainer;

    move-result-object v0

    .line 1220
    .local v0, container:Lcom/htc/sunny/SGallery$ItemContainer;
    if-eqz v0, :cond_0

    .line 1222
    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v0}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v1

    if-ltz v1, :cond_1

    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v0}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v1

    iget v2, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    if-ge v1, v2, :cond_1

    .line 1223
    invoke-direct {p0, v0}, Lcom/htc/sunny/SGallery;->updateContainer(Lcom/htc/sunny/SGallery$ItemContainer;)V

    .line 1229
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    .line 1230
    return-void

    .line 1225
    :cond_1
    const/4 v1, -0x1

    #setter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v0, v1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$002(Lcom/htc/sunny/SGallery$ItemContainer;I)I

    goto :goto_0
.end method

.method protected onAnimationEnd()V
    .locals 2

    .prologue
    .line 1462
    const/4 v0, 0x5

    iget v1, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x7

    iget v1, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-ne v0, v1, :cond_2

    .line 1463
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->onHomingAnimationEnd()V

    .line 1467
    :cond_1
    :goto_0
    return-void

    .line 1464
    :cond_2
    const/4 v0, 0x3

    iget v1, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-ne v0, v1, :cond_1

    .line 1465
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->onFlingAnimationEnd()V

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1676
    const-string v0, "3DGlideMode"

    const-string v3, "[SGallery] onDown()"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsOverTopBoundary:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsBlockTop:Z

    .line 1679
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsOverBottomBoundary:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsBlockDown:Z

    .line 1681
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->hasAnimation()Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 1682
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->stopAnimation()V

    .line 1685
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1686
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    .line 1688
    return v2

    :cond_1
    move v0, v2

    .line 1678
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1679
    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 1697
    const-string v0, "3DGlideMode"

    const-string v1, "[SGallery]  onFling()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v0, v1, :cond_0

    .line 1700
    float-to-int v0, p4

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->flingR(I)V

    .line 1704
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1702
    :cond_0
    float-to-int v0, p3

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->flingR(I)V

    goto :goto_0
.end method

.method protected onFlingAnimationEnd()V
    .locals 0

    .prologue
    .line 1475
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->stopAnimation()V

    .line 1476
    return-void
.end method

.method protected onHomingAnimationEnd()V
    .locals 1

    .prologue
    .line 1389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsTouchable:Z

    .line 1390
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->stopAnimation()V

    .line 1391
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1522
    invoke-super/range {p0 .. p5}, Lcom/htc/sunny/SAdapterView;->onLayout(ZIIII)V

    .line 1524
    sub-int v0, p4, p2

    iput v0, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    .line 1525
    sub-int v0, p5, p3

    iput v0, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    .line 1526
    iget v0, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mWidth_H:I

    .line 1527
    iget v0, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mHeight_H:I

    .line 1528
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->initContainers()V

    .line 1530
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    .line 1531
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1714
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1723
    iget-boolean v3, p0, Lcom/htc/sunny/SGallery;->mIsPressed:Z

    if-nez v3, :cond_0

    .line 1740
    :goto_0
    return v1

    .line 1727
    :cond_0
    const/4 v3, -0x1

    iget v4, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-eqz v3, :cond_1

    .line 1728
    iget-object v3, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    iget v4, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Lcom/htc/sunny/SGallery$ItemContainer;->onFocusChanged(Z)V

    .line 1729
    iput v1, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    .line 1732
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->hasAnimation()Z

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->stopAnimation()V

    .line 1734
    :cond_2
    float-to-int v3, p3

    float-to-int v4, p4

    invoke-virtual {p0, v3, v4}, Lcom/htc/sunny/SGallery;->scrollGallery(II)Z

    move-result v0

    .line 1735
    .local v0, bScrolled:Z
    if-ne v2, v0, :cond_3

    .line 1736
    iput-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsSingleTapUp:Z

    .line 1737
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    :cond_3
    move v1, v2

    .line 1740
    goto :goto_0
.end method

.method protected onScrollAnimation()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1400
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    if-lt v0, v1, :cond_0

    .line 1401
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->onAnimationEnd()V

    .line 1455
    :goto_0
    return-void

    .line 1405
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v1, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    .line 1406
    const/4 v7, 0x0

    .line 1407
    .local v7, nNextPos:I
    iget v8, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    .line 1408
    .local v8, nPrePos:I
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    if-ge v0, v1, :cond_4

    .line 1409
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mStart:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mTotal:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget-object v5, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->interpolate:Lcom/htc/sunny/SGallery$INTERPOLATE;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny/SGallery;->getInterpolateResult(FFFFLcom/htc/sunny/SGallery$INTERPOLATE;)F

    move-result v0

    float-to-int v7, v0

    .line 1414
    :cond_1
    :goto_1
    sub-int v6, v7, v8

    .line 1417
    .local v6, diff:I
    sget-object v0, Lcom/htc/sunny/SGallery$DIRECTION;->D_PREVIOUSE:Lcom/htc/sunny/SGallery$DIRECTION;

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    if-ne v0, v1, :cond_7

    .line 1418
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    if-ge v0, v7, :cond_6

    .line 1419
    if-nez v6, :cond_5

    .line 1420
    add-int/lit8 v7, v7, -0x1

    .line 1428
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    if-gt v7, v0, :cond_3

    .line 1429
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    .line 1430
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    iput v1, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    .line 1449
    :cond_3
    :goto_3
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v0, v1, :cond_b

    .line 1450
    iget v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int v0, v7, v0

    invoke-virtual {p0, v9, v0}, Lcom/htc/sunny/SGallery;->scrollGallery(II)Z

    goto :goto_0

    .line 1410
    .end local v6           #diff:I
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    if-ne v0, v1, :cond_1

    .line 1411
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    goto :goto_1

    .line 1421
    .restart local v6       #diff:I
    :cond_5
    if-lez v6, :cond_2

    .line 1422
    add-int/lit8 v7, v8, -0x1

    goto :goto_2

    .line 1425
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    goto :goto_2

    .line 1433
    :cond_7
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    if-le v0, v7, :cond_a

    .line 1434
    if-nez v6, :cond_9

    .line 1435
    add-int/lit8 v7, v7, 0x1

    .line 1443
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    if-lt v7, v0, :cond_3

    .line 1444
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    .line 1445
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    iput v1, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    goto :goto_3

    .line 1436
    :cond_9
    if-gez v6, :cond_8

    .line 1437
    add-int/lit8 v7, v8, 0x1

    goto :goto_4

    .line 1440
    :cond_a
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    iput v1, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    goto :goto_4

    .line 1452
    :cond_b
    iget v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int v0, v7, v0

    invoke-virtual {p0, v0, v9}, Lcom/htc/sunny/SGallery;->scrollGallery(II)Z

    goto/16 :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 1850
    const-string v0, "3DGlideMode"

    const-string v1, "[SGallery] onShowPress()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsTouchable:Z

    if-ne v2, v0, :cond_0

    .line 1853
    const/4 v0, -0x1

    iget v1, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    if-eq v0, v1, :cond_0

    .line 1854
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/htc/sunny/SGallery$ItemContainer;->onFocusChanged(Z)V

    .line 1857
    :cond_0
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsSingleTapUp:Z

    .line 1858
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 1866
    const-string v0, "3DGlideMode"

    const-string v1, "[SGallery] onSingleTapUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    const/4 v0, 0x1

    return v0
.end method

.method public onUpR(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x1

    .line 1644
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->hasAnimation()Z

    move-result v2

    if-ne v4, v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny/SGallery$AnimationInfo;->type:I

    if-ne v4, v2, :cond_0

    .line 1648
    :cond_0
    iget-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsSingleTapUp:Z

    if-ne v4, v2, :cond_3

    .line 1649
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/sunny/SGallery;->getContainerId(II)I

    move-result v0

    .line 1650
    .local v0, nContainerId:I
    const/4 v2, -0x1

    if-eq v2, v0, :cond_1

    iget-object v2, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-eqz v2, :cond_1

    .line 1651
    iget-object v2, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    aget-object v2, v2, v0

    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v2}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v1

    .line 1653
    .local v1, nPressItem:I
    iget-object v2, p0, Lcom/htc/sunny/SGallery;->mClickListener:Lcom/htc/sunny/SGallery$OnClickListener;

    if-eqz v2, :cond_1

    .line 1654
    iget-object v2, p0, Lcom/htc/sunny/SGallery;->mClickListener:Lcom/htc/sunny/SGallery$OnClickListener;

    invoke-interface {v2, v1}, Lcom/htc/sunny/SGallery$OnClickListener;->onClick(I)V

    .line 1657
    .end local v1           #nPressItem:I
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1667
    .end local v0           #nContainerId:I
    :cond_2
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsSingleTapUp:Z

    .line 1668
    return-void

    .line 1658
    :cond_3
    const/4 v2, 0x2

    iget v3, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-ne v2, v3, :cond_4

    .line 1659
    invoke-virtual {p0, v4}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1660
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->homingR()V

    goto :goto_0

    .line 1661
    :cond_4
    iget v2, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-nez v2, :cond_2

    .line 1662
    invoke-virtual {p0, v4}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1663
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->homingR()V

    goto :goto_0
.end method

.method public renderAndUpdate3D()V
    .locals 2

    .prologue
    .line 1611
    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->renderAndUpdate3D()V

    .line 1613
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->hasAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->type:I

    packed-switch v0, :pswitch_data_0

    .line 1627
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1620
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->onScrollAnimation()V

    .line 1621
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    goto :goto_0

    .line 1614
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected resetUselessContainers()V
    .locals 6

    .prologue
    .line 874
    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-nez v5, :cond_1

    .line 889
    :cond_0
    return-void

    .line 878
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SGallery$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 879
    .local v1, container:Lcom/htc/sunny/SGallery$ItemContainer;
    if-nez v1, :cond_3

    .line 878
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 881
    :cond_3
    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v4

    .line 883
    .local v4, nIndex:I
    iget v5, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    if-gt v5, v4, :cond_4

    iget v5, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    if-le v4, v5, :cond_2

    .line 884
    :cond_4
    const/4 v5, -0x1

    #setter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v1, v5}, Lcom/htc/sunny/SGallery$ItemContainer;->access$002(Lcom/htc/sunny/SGallery$ItemContainer;I)I

    .line 885
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/htc/sunny/SGallery$ItemContainer;->setValid(Z)V

    goto :goto_1
.end method

.method protected scrollGallery(II)Z
    .locals 5
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1748
    const/4 v0, 0x0

    .line 1749
    .local v0, bScrolled:Z
    const/4 v1, 0x0

    .line 1750
    .local v1, nNewPosition:I
    iget-boolean v3, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v4, v3, :cond_6

    .line 1751
    if-nez p2, :cond_1

    .line 1786
    :cond_0
    :goto_0
    return v2

    .line 1753
    :cond_1
    iget v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    add-int v1, v2, p2

    .line 1754
    if-lez p2, :cond_5

    .line 1755
    sget-object v2, Lcom/htc/sunny/SGallery$DIRECTION;->D_NEXT:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v2, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    .line 1770
    :goto_1
    iget-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsBlockTop:Z

    if-ne v4, v2, :cond_2

    .line 1771
    iget v2, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    if-ge v1, v2, :cond_2

    .line 1772
    iget v1, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    .line 1775
    :cond_2
    iget-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsBlockDown:Z

    if-ne v4, v2, :cond_3

    .line 1776
    iget v2, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    if-le v1, v2, :cond_3

    .line 1777
    iget v1, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    .line 1781
    :cond_3
    iget v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    if-eq v1, v2, :cond_4

    .line 1782
    invoke-virtual {p0, v1}, Lcom/htc/sunny/SGallery;->updateNewPosition(I)V

    .line 1783
    const/4 v0, 0x1

    :cond_4
    move v2, v0

    .line 1786
    goto :goto_0

    .line 1757
    :cond_5
    sget-object v2, Lcom/htc/sunny/SGallery$DIRECTION;->D_PREVIOUSE:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v2, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    goto :goto_1

    .line 1760
    :cond_6
    if-eqz p1, :cond_0

    .line 1762
    iget v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    add-int v1, v2, p1

    .line 1763
    if-lez p1, :cond_7

    .line 1764
    sget-object v2, Lcom/htc/sunny/SGallery$DIRECTION;->D_NEXT:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v2, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    goto :goto_1

    .line 1766
    :cond_7
    sget-object v2, Lcom/htc/sunny/SGallery$DIRECTION;->D_PREVIOUSE:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v2, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    goto :goto_1
.end method

.method public setAdapter(Lcom/htc/sunny/SGalleryAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 1131
    new-instance v0, Lcom/htc/sunny/SGallery$10;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SGallery$10;-><init>(Lcom/htc/sunny/SGallery;Lcom/htc/sunny/SGalleryAdapter;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1136
    return-void
.end method

.method protected setAdapterW(Lcom/htc/sunny/SGalleryAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 1144
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->stopAnimation()V

    .line 1145
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    iget-object v1, p0, Lcom/htc/sunny/SAdapterView;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SGalleryAdapter;->unregisterDataSetObserver(Lcom/htc/sunny/SDataSetObserver;)V

    .line 1148
    :cond_0
    iput-object p1, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    .line 1149
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    if-eqz v0, :cond_1

    .line 1150
    new-instance v0, Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;-><init>(Lcom/htc/sunny/SAdapterView;)V

    iput-object v0, p0, Lcom/htc/sunny/SAdapterView;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    .line 1151
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    iget-object v1, p0, Lcom/htc/sunny/SAdapterView;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SGalleryAdapter;->registerDataSetObserver(Lcom/htc/sunny/SDataSetObserver;)V

    .line 1154
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->initContainers()V

    .line 1156
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    .line 1157
    return-void
.end method

.method public setClipSize(I)V
    .locals 1
    .parameter "nSize"

    .prologue
    .line 977
    new-instance v0, Lcom/htc/sunny/SGallery$5;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SGallery$5;-><init>(Lcom/htc/sunny/SGallery;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 987
    return-void
.end method

.method public setItemSize(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1009
    new-instance v0, Lcom/htc/sunny/SGallery$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SGallery$7;-><init>(Lcom/htc/sunny/SGallery;II)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1018
    return-void
.end method

.method public setOnClickListener(Lcom/htc/sunny/SGallery$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1635
    iput-object p1, p0, Lcom/htc/sunny/SGallery;->mClickListener:Lcom/htc/sunny/SGallery$OnClickListener;

    .line 1636
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/sunny/SGallery$OnScrollListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 525
    iput-object p1, p0, Lcom/htc/sunny/SGallery;->mScrollListener:Lcom/htc/sunny/SGallery$OnScrollListener;

    .line 526
    return-void
.end method

.method public setPadding(IIII)V
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1090
    new-instance v0, Lcom/htc/sunny/SGallery$9;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SGallery$9;-><init>(Lcom/htc/sunny/SGallery;IIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1099
    return-void
.end method

.method public setSelector(II)V
    .locals 1
    .parameter "nPressResId"
    .parameter "nRestResId"

    .prologue
    .line 655
    new-instance v0, Lcom/htc/sunny/SGallery$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/htc/sunny/SGallery$1;-><init>(Lcom/htc/sunny/SGallery;II)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 666
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawablePress"
    .parameter "drawableRest"

    .prologue
    .line 696
    new-instance v0, Lcom/htc/sunny/SGallery$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SGallery$3;-><init>(Lcom/htc/sunny/SGallery;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 702
    return-void
.end method

.method public setSelectorRenderOrder(I)V
    .locals 1
    .parameter "nOrder"

    .prologue
    .line 678
    new-instance v0, Lcom/htc/sunny/SGallery$2;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SGallery$2;-><init>(Lcom/htc/sunny/SGallery;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 689
    return-void
.end method

.method public setSpacing(I)V
    .locals 1
    .parameter "spacing"

    .prologue
    .line 1071
    new-instance v0, Lcom/htc/sunny/SGallery$8;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SGallery$8;-><init>(Lcom/htc/sunny/SGallery;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1083
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .parameter "bVisible"

    .prologue
    .line 961
    invoke-super {p0, p1}, Lcom/htc/sunny/SAdapterView;->setVisibility(Z)V

    .line 962
    iput-boolean p1, p0, Lcom/htc/sunny/SGallery;->mGalleryVisibility:Z

    .line 963
    return-void
.end method

.method public stopAnimation()V
    .locals 3

    .prologue
    const/16 v2, 0x9

    .line 1941
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->hasAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1943
    const/4 v0, 0x3

    iget v1, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-ne v0, v1, :cond_1

    .line 1944
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SGallery$AnimationInfo;->reset()V

    .line 1945
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1946
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1957
    :cond_0
    :goto_0
    return-void

    .line 1947
    :cond_1
    const/4 v0, 0x5

    iget v1, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-ne v0, v1, :cond_2

    .line 1948
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SGallery$AnimationInfo;->reset()V

    .line 1949
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1950
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    goto :goto_0

    .line 1951
    :cond_2
    const/4 v0, 0x7

    iget v1, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-ne v0, v1, :cond_0

    .line 1952
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SGallery$AnimationInfo;->reset()V

    .line 1953
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1954
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    goto :goto_0
.end method

.method protected updateAllContainerLayout()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 785
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-nez v8, :cond_1

    .line 810
    :cond_0
    return-void

    .line 787
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SGallery$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 788
    .local v1, container:Lcom/htc/sunny/SGallery$ItemContainer;
    if-nez v1, :cond_2

    .line 787
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 790
    :cond_2
    const/4 v8, -0x1

    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v9

    if-eq v8, v9, :cond_4

    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v8

    if-ltz v8, :cond_4

    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v8

    iget v9, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    if-ge v8, v9, :cond_4

    .line 791
    iget-boolean v8, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v12, v8, :cond_3

    .line 792
    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v8

    iget v9, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    mul-int/2addr v8, v9

    iget v9, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    iget v10, p0, Lcom/htc/sunny/SGallery;->mSpacing:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v5, v8

    .line 793
    .local v5, n2DY:F
    invoke-virtual {p0, v5}, Lcom/htc/sunny/SGallery;->Get3DY(F)F

    move-result v7

    .line 794
    .local v7, n3DY:F
    invoke-virtual {v1, v11, v7, v11}, Lcom/htc/sunny/SGallery$ItemContainer;->setPosition(FFF)V

    .line 801
    .end local v5           #n2DY:F
    .end local v7           #n3DY:F
    :goto_2
    invoke-virtual {v1, v12}, Lcom/htc/sunny/SGallery$ItemContainer;->setVisibility(Z)V

    goto :goto_1

    .line 796
    :cond_3
    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v8

    iget v9, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    mul-int/2addr v8, v9

    iget v9, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    iget v10, p0, Lcom/htc/sunny/SGallery;->mSpacing:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v4, v8

    .line 797
    .local v4, n2DX:F
    invoke-virtual {p0, v4}, Lcom/htc/sunny/SGallery;->Get3DX(F)F

    move-result v6

    .line 798
    .local v6, n3DX:F
    invoke-virtual {v1, v6, v11, v11}, Lcom/htc/sunny/SGallery$ItemContainer;->setPosition(FFF)V

    goto :goto_2

    .line 804
    .end local v4           #n2DX:F
    .end local v6           #n3DX:F
    :cond_4
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/htc/sunny/SGallery$ItemContainer;->setVisibility(Z)V

    goto :goto_1
.end method

.method protected updateAllContainersData()V
    .locals 0

    .prologue
    .line 817
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->resetUselessContainers()V

    .line 818
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->addNewContainers()V

    .line 819
    return-void
.end method

.method protected updateNewPosition(I)V
    .locals 4
    .parameter "nPosition"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1794
    iput p1, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    .line 1796
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    if-eqz v0, :cond_0

    .line 1797
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SScrollBarView;->setCurrentViewPosition(I)V

    .line 1800
    :cond_0
    iget v0, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    if-lt v0, v1, :cond_4

    .line 1801
    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mIsOverTopBoundary:Z

    .line 1806
    :goto_0
    iget v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    if-lt v0, v1, :cond_5

    .line 1807
    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mIsOverBottomBoundary:Z

    .line 1812
    :goto_1
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v3, v0, :cond_6

    .line 1813
    iget v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    .line 1814
    iget v0, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    if-gez v0, :cond_1

    .line 1815
    iput v2, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    .line 1817
    :cond_1
    iget v0, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    .line 1818
    iget v0, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    if-lt v0, v1, :cond_2

    .line 1819
    iget v0, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    .line 1831
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollListener:Lcom/htc/sunny/SGallery$OnScrollListener;

    if-eqz v0, :cond_3

    .line 1833
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollListener:Lcom/htc/sunny/SGallery$OnScrollListener;

    if-eqz v0, :cond_3

    .line 1834
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollListener:Lcom/htc/sunny/SGallery$OnScrollListener;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    iget v3, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/sunny/SGallery$OnScrollListener;->onScroll(Lcom/htc/sunny/SGallery;III)V

    .line 1839
    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->updateAllContainersData()V

    .line 1840
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->updateAllContainerLayout()V

    .line 1842
    return-void

    .line 1803
    :cond_4
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsOverTopBoundary:Z

    goto :goto_0

    .line 1809
    :cond_5
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsOverBottomBoundary:Z

    goto :goto_1

    .line 1821
    :cond_6
    iget v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    .line 1822
    iget v0, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    if-gez v0, :cond_7

    .line 1823
    iput v2, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    .line 1825
    :cond_7
    iget v0, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    .line 1826
    iget v0, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    if-lt v0, v1, :cond_2

    .line 1827
    iget v0, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    goto :goto_2
.end method

.method protected updateViewLayout()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x1

    .line 1026
    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->updateViewLayout()V

    .line 1028
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_1

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 1030
    :cond_1
    const/4 v9, 0x0

    .line 1031
    .local v9, nOffset:I
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->isFillAfter()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1032
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->isPositionAnimation()Z

    move-result v0

    if-ne v11, v0, :cond_3

    .line 1033
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->getCurrentPosition()Lcom/htc/sunny/Vector3F;

    move-result-object v10

    .line 1034
    .local v10, v:Lcom/htc/sunny/Vector3F;
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v11, v0, :cond_5

    .line 1035
    iget v0, v10, Lcom/htc/sunny/Vector3F;->mY:F

    float-to-int v9, v0

    .line 1049
    .end local v10           #v:Lcom/htc/sunny/Vector3F;
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mEnabledClip:Z

    if-ne v11, v0, :cond_4

    .line 1050
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v11, v0, :cond_8

    .line 1051
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget v3, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v3, v9

    iget v4, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    iget v5, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    iget v6, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny/SunnyEngine;->setClipArea(IIIII)V

    .line 1057
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    if-eqz v0, :cond_0

    .line 1058
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v11, v0, :cond_9

    .line 1059
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SScrollBarView;->setScrolledViewBoundary(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1037
    .restart local v10       #v:Lcom/htc/sunny/Vector3F;
    :cond_5
    iget v0, v10, Lcom/htc/sunny/Vector3F;->mX:F

    float-to-int v9, v0

    goto :goto_1

    .line 1041
    .end local v10           #v:Lcom/htc/sunny/Vector3F;
    :cond_6
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v11, v0, :cond_7

    .line 1042
    iget-object v0, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v0, v0, Lcom/htc/sunny/Vector3F;->mY:F

    float-to-int v9, v0

    .line 1046
    :goto_3
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget-object v3, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v3, v3, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v4, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v5, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    goto :goto_1

    .line 1044
    :cond_7
    iget-object v0, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v0, v0, Lcom/htc/sunny/Vector3F;->mX:F

    float-to-int v9, v0

    goto :goto_3

    .line 1053
    :cond_8
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v4, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget v0, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    add-int v5, v0, v9

    iget v0, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v7, v0, v1

    iget v8, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    move v6, v2

    invoke-virtual/range {v3 .. v8}, Lcom/htc/sunny/SunnyEngine;->setClipArea(IIIII)V

    goto :goto_2

    .line 1061
    :cond_9
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SScrollBarView;->setScrolledViewBoundary(Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method
