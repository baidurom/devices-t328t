.class public Lcom/htc/sunny/SPresentation;
.super Lcom/htc/sunny/SAdapterView;
.source "SPresentation.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny/SPresentation$18;,
        Lcom/htc/sunny/SPresentation$ContainerHitFeedback;,
        Lcom/htc/sunny/SPresentation$FakeAnimationControl;,
        Lcom/htc/sunny/SPresentation$AnimationInfo;,
        Lcom/htc/sunny/SPresentation$OnItemLongClickListener;,
        Lcom/htc/sunny/SPresentation$PresentationListener;,
        Lcom/htc/sunny/SPresentation$INTERPOLATE;,
        Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;,
        Lcom/htc/sunny/SPresentation$DIRECTION;,
        Lcom/htc/sunny/SPresentation$ItemContainer;
    }
.end annotation


# static fields
.field protected static final ANIMATION_FLING:I = 0x1

.field protected static final ANIMATION_HOMING:I = 0x3

.field protected static final ANIMATION_ROTATE_SELF:I = 0x4

.field protected static final ANIMATION_SCROLL:I = 0x2

.field protected static final ANIMATION_UNKNOW:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "3DGlideMode"

.field public static final STATE_BOUNCING:I = 0x7

.field public static final STATE_BOUNCING_END:I = 0x8

.field public static final STATE_FLING:I = 0x3

.field public static final STATE_FLING_END:I = 0x4

.field public static final STATE_HOMING:I = 0x5

.field public static final STATE_HOMING_END:I = 0x6

.field public static final STATE_IDLE:I = 0x12

.field public static final STATE_MOUSE_DOWN:I = 0x0

.field public static final STATE_MOUSE_PAN:I = 0x2

.field public static final STATE_MOUSE_UP:I = 0x1

.field public static final STATE_ROTATE_SELF:I = 0xb

.field public static final STATE_ROTATE_SELF_END:I = 0xc

.field public static final STATE_SCROLL:I = 0x9

.field public static final STATE_SCROLL_END:I = 0xa

.field public static final STATE_UNKNOW:I = -0x1


# instance fields
.field protected DURATION_BOUNCING:I

.field protected DURATION_FLING:I

.field protected DURATION_HOMING:I

.field protected DURATION_ROTATE_SELF:I

.field protected DURATION_SCROLL_NEXT:I

.field protected DURATION_SCROLL_PREVIOUS:I

.field protected DURATION_SCROLL_TO:I

.field protected TIMESLOT_INTERVAL:I

.field protected TIMESLOT_INTERVAL_HALF:I

.field protected mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

.field protected mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

.field protected mBlockScroll:Z

.field protected mClipSizeB:I

.field protected mClipSizeL:I

.field protected mClipSizeR:I

.field protected mClipSizeT:I

.field protected mContainerCount:I

.field protected mContainerHitFeedback:Lcom/htc/sunny/SPresentation$ContainerHitFeedback;

.field protected mDataCount:I

.field protected mDataUpdated:Z

.field protected mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

.field protected mDisplacement:F

.field protected mEnableHitFeedback:Z

.field protected mEnableTouchEvent:Z

.field protected mEnabledAnimation:Z

.field protected mEnabledLargeSensorArea:Z

.field protected mEnabledOpeningAnimation:Z

.field protected mEnabledReflection:Z

.field protected mEnlargeSensorRatioH:F

.field protected mEnlargeSensorRatioW:F

.field protected mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

.field protected mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

.field protected mFakeNextUpdateIndex:I

.field protected mFocusPosV:Lcom/htc/sunny/Vector3F;

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mGradualBmp:I

.field protected mGradualBmpResId:I

.field protected mGradualNode:I

.field protected mGradualPosX:I

.field protected mGradualPosY:I

.field protected mGradualSpirte:I

.field protected mGradualTexture:I

.field protected mGradualTranslation:Lcom/htc/sunny/Vector3F;

.field protected mGradualVisible:Z

.field private mHashCode:I

.field protected mHitFeedbackRatio:F

.field protected mIsBouncingState:Z

.field protected mIsFirstRender:Z

.field private mIsPressed:Z

.field protected mIsSingleTapUp:Z

.field protected mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

.field protected mItemLongClickListener:Lcom/htc/sunny/SPresentation$OnItemLongClickListener;

.field protected mItemScrollRatio:F

.field protected mOldSelectedPos:I

.field protected mOpeningAnimationStart:Z

.field protected mPerformOpeningAnimation:Z

.field protected mPosX:I

.field protected mPosY:I

.field protected mPresentationState:I

.field protected mPressContainerId:I

.field protected mPressStartSelectedPos:I

.field protected mReflectionColorB:I

.field protected mReflectionColorG:I

.field protected mReflectionColorR:I

.field protected mReflectionGap:I

.field protected mReflectionHeight:I

.field protected mReorderItem:I

.field protected mReorderRegion:I

.field protected mResIdShadow:I

.field protected mRotateClockwise:Z

.field protected mSelectedPos:I

.field protected mShadowH:I

.field protected mShadowTexture:I

.field protected mShadowW:I

.field protected mShiftOneItem:Z

.field protected mTimeSlot:I

.field protected mViewHeight:I

.field protected mViewHeight_H:I

.field protected mViewWidth:I

.field protected mViewWidth_H:I

.field protected mVisibleContainerCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V
    .locals 6
    .parameter "context"
    .parameter "surfaceView"

    .prologue
    const/16 v5, 0x26

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 753
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny/SAdapterView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    .line 319
    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    .line 324
    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    .line 329
    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mItemLongClickListener:Lcom/htc/sunny/SPresentation$OnItemLongClickListener;

    .line 334
    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    .line 339
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    .line 344
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mPerformOpeningAnimation:Z

    .line 349
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mOpeningAnimationStart:Z

    .line 356
    const/16 v0, 0xfa

    iput v0, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    .line 361
    iget v0, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL_HALF:I

    .line 366
    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_TO:I

    .line 371
    const/16 v0, 0x1e

    iput v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_NEXT:I

    .line 376
    iget v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_NEXT:I

    iput v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_PREVIOUS:I

    .line 381
    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_BOUNCING:I

    .line 386
    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_HOMING:I

    .line 391
    const/16 v0, 0x8c

    iput v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_FLING:I

    .line 396
    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_ROTATE_SELF:I

    .line 503
    new-instance v0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;-><init>(Lcom/htc/sunny/SPresentation;)V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    .line 508
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    .line 513
    new-instance v0, Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SPresentation$AnimationInfo;-><init>(Lcom/htc/sunny/SPresentation;)V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    .line 518
    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mRotateClockwise:Z

    .line 524
    new-instance v0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;-><init>(Lcom/htc/sunny/SPresentation;)V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny/SPresentation$ContainerHitFeedback;

    .line 529
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mDataUpdated:Z

    .line 535
    iput v4, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    .line 540
    iput v4, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    .line 545
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mDisplacement:F

    .line 548
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mIsPressed:Z

    .line 553
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mIsSingleTapUp:Z

    .line 558
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    .line 563
    iput v4, p0, Lcom/htc/sunny/SPresentation;->mOldSelectedPos:I

    .line 568
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    .line 573
    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mEnabledAnimation:Z

    .line 578
    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mEnableTouchEvent:Z

    .line 583
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mIsFirstRender:Z

    .line 589
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mReorderRegion:I

    .line 594
    iput v4, p0, Lcom/htc/sunny/SPresentation;->mReorderItem:I

    .line 600
    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .line 605
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    .line 610
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    .line 615
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mVisibleContainerCount:I

    .line 621
    iput v4, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    .line 626
    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_UNKNOWN:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 629
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mViewWidth:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mViewHeight:I

    .line 630
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mViewWidth_H:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mViewHeight_H:I

    .line 635
    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mFocusPosV:Lcom/htc/sunny/Vector3F;

    .line 641
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    .line 646
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mGradualSpirte:I

    .line 651
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mGradualTexture:I

    .line 656
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    .line 661
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mGradualBmpResId:I

    .line 662
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mGradualPosX:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mGradualPosY:I

    .line 667
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mGradualTranslation:Lcom/htc/sunny/Vector3F;

    .line 672
    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mGradualVisible:Z

    .line 677
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mShadowTexture:I

    .line 679
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mHashCode:I

    .line 682
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mClipSizeL:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mClipSizeT:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mClipSizeR:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mClipSizeB:I

    .line 687
    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mEnabledOpeningAnimation:Z

    .line 692
    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mEnabledReflection:Z

    .line 697
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mEnabledLargeSensorArea:Z

    .line 702
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mReflectionHeight:I

    .line 703
    iput v5, p0, Lcom/htc/sunny/SPresentation;->mReflectionColorR:I

    iput v5, p0, Lcom/htc/sunny/SPresentation;->mReflectionColorG:I

    iput v5, p0, Lcom/htc/sunny/SPresentation;->mReflectionColorB:I

    .line 708
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mReflectionGap:I

    .line 713
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mResIdShadow:I

    .line 714
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mShadowH:I

    .line 720
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    .line 725
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mBlockScroll:Z

    .line 730
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mEnableHitFeedback:Z

    .line 735
    const v0, 0x3f733333

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mHitFeedbackRatio:F

    .line 740
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mEnlargeSensorRatioH:F

    .line 745
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mEnlargeSensorRatioW:F

    .line 750
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mItemScrollRatio:F

    .line 754
    invoke-super {p0, v1}, Lcom/htc/sunny/SAdapterView;->enableMaskNode(Z)V

    .line 756
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    .line 757
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 758
    return-void
.end method

.method private getSpriteIndex(I)I
    .locals 1
    .parameter "nTag"

    .prologue
    const/4 v0, -0x1

    .line 1178
    if-gt p1, v0, :cond_0

    .line 1179
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mHashCode:I

    sub-int v0, p1, v0

    goto :goto_0
.end method

.method private getSpriteTag(I)I
    .locals 1
    .parameter "nSpriteIndex"

    .prologue
    .line 1174
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mHashCode:I

    add-int/2addr v0, p1

    return v0
.end method

.method protected static nextPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 1246
    add-int/lit8 p0, p0, -0x1

    .line 1247
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 1248
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 1249
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 1250
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 1251
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 1252
    add-int/lit8 v0, p0, 0x1

    return v0
.end method


# virtual methods
.method protected Get2DY(I)I
    .locals 1
    .parameter "n3DY"

    .prologue
    .line 3495
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mViewHeight_H:I

    sub-int/2addr v0, p1

    return v0
.end method

.method protected Get3DX(I)I
    .locals 1
    .parameter "n2DX"

    .prologue
    .line 3511
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mViewWidth_H:I

    sub-int v0, p1, v0

    return v0
.end method

.method protected Get3DY(I)I
    .locals 1
    .parameter "n2DY"

    .prologue
    .line 3503
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mViewHeight_H:I

    sub-int v0, p1, v0

    return v0
.end method

.method protected clear3DView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 765
    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    .line 766
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->destroyAllResource()V

    .line 767
    iput v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    .line 768
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .line 769
    iput v1, p0, Lcom/htc/sunny/SPresentation;->mVisibleContainerCount:I

    .line 770
    return-void
.end method

.method protected createGradualMask(III)V
    .locals 12
    .parameter "nPosX"
    .parameter "nPosY"
    .parameter "nBitmapResId"

    .prologue
    .line 1260
    if-nez p3, :cond_1

    .line 1307
    :cond_0
    :goto_0
    return-void

    .line 1262
    :cond_1
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1263
    .local v11, opts:Landroid/graphics/BitmapFactory$Options;
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1264
    iget-object v0, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p3, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1265
    .local v7, bmpGradual:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_0

    .line 1266
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 1267
    .local v8, nBmpWidth:I
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1269
    .local v4, nBmpHeight:I
    if-lez v8, :cond_2

    if-gtz v4, :cond_3

    .line 1270
    :cond_2
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 1271
    const/4 v7, 0x0

    .line 1272
    goto :goto_0

    .line 1275
    :cond_3
    invoke-static {v8}, Lcom/htc/sunny/SPresentation;->nextPowerOf2(I)I

    move-result v10

    .line 1276
    .local v10, nMaxWidth:I
    invoke-static {v4}, Lcom/htc/sunny/SPresentation;->nextPowerOf2(I)I

    move-result v9

    .line 1278
    .local v9, nMaxHeight:I
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    if-eqz v0, :cond_4

    .line 1279
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    invoke-static {v0}, Lcom/htc/sunny/SunnyEngine;->destroyBitmap(I)V

    .line 1280
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    .line 1283
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->getGlobalRootNode()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SunnyEngine;->createNode(IZ)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    .line 1287
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mGradualSpirte:I

    .line 1288
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mGradualSpirte:I

    const/4 v2, 0x0

    add-int/lit8 v3, v8, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunny/SunnyEngine;->setupSpriteGeometry(IIIIII)V

    .line 1289
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v0}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mGradualTexture:I

    .line 1290
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mGradualSpirte:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mGradualTexture:I

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 1292
    const/4 v0, 0x0

    invoke-static {v7, v10, v9, v0}, Lcom/htc/sunny/SunnyEngine;->createAlphaBitmap(Landroid/graphics/Bitmap;III)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    .line 1293
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    if-eqz v0, :cond_5

    .line 1294
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mGradualTexture:I

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 1295
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SunnyEngine;->setNodeOrder(II)V

    .line 1296
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    int-to-float v2, p1

    int-to-float v3, p2

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    .line 1297
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mGradualPosX:I

    .line 1298
    iput p2, p0, Lcom/htc/sunny/SPresentation;->mGradualPosY:I

    .line 1300
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mGradualVisible:Z

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->setGradualVisibility(Z)V

    .line 1301
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/htc/sunny/SunnyEngine;->setNodeRotate(IFFF)V

    .line 1304
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 1305
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method protected createResource()V
    .locals 1

    .prologue
    .line 2854
    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->createResource()V

    .line 2855
    iget-boolean v0, p0, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    if-nez v0, :cond_0

    .line 2857
    :goto_0
    return-void

    .line 2856
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->initContainers()V

    goto :goto_0
.end method

.method protected destroyAllResource()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1187
    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v4, :cond_0

    .line 1211
    :goto_0
    return-void

    .line 1189
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-eqz v4, :cond_2

    .line 1190
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 1191
    .local v1, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-nez v1, :cond_1

    .line 1190
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1192
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageTexture:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    .line 1193
    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroySprite(I)V

    .line 1194
    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageSprite:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroySprite(I)V

    .line 1195
    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroySprite(I)V

    .line 1196
    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroyNode(I)V

    .line 1197
    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->removeView(Lcom/htc/sunny/SView;)V

    goto :goto_2

    .line 1201
    .end local v0           #arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    .end local v1           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mShadowTexture:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    .line 1202
    iput v6, p0, Lcom/htc/sunny/SPresentation;->mShadowTexture:I

    .line 1203
    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mGradualTexture:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    .line 1204
    iput v6, p0, Lcom/htc/sunny/SPresentation;->mGradualTexture:I

    .line 1205
    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mGradualSpirte:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroySprite(I)V

    .line 1206
    iput v6, p0, Lcom/htc/sunny/SPresentation;->mGradualSpirte:I

    .line 1207
    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroyNode(I)V

    .line 1208
    iput v6, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    .line 1209
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    invoke-static {v4}, Lcom/htc/sunny/SunnyEngine;->destroyBitmap(I)V

    .line 1210
    iput v6, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2885
    invoke-super {p0, p1}, Lcom/htc/sunny/SAdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 2887
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 2888
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledTouchEvent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2889
    :cond_0
    const-string v0, "3DGlideMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SPresentation] fake: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v2}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " touch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledTouchEvent()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2912
    :cond_1
    :goto_0
    return-void

    .line 2893
    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny/SPresentation;->getContainerId(II)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    if-eq v0, v1, :cond_3

    .line 2894
    iput-boolean v4, p0, Lcom/htc/sunny/SPresentation;->mIsPressed:Z

    .line 2895
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny/SPresentation;->getContainerId(II)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    .line 2896
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    .line 2897
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->Get3DX(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny/SPresentation;->getDisplacementToContainer(IF)F

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mDisplacement:F

    .line 2901
    :cond_3
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mIsPressed:Z

    if-eqz v0, :cond_1

    .line 2905
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2907
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v4, v0, :cond_1

    .line 2908
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->onUpW(Landroid/view/MotionEvent;)V

    .line 2909
    iput-boolean v3, p0, Lcom/htc/sunny/SPresentation;->mIsPressed:Z

    .line 2910
    iput-boolean v3, p0, Lcom/htc/sunny/SPresentation;->mBlockScroll:Z

    goto :goto_0
.end method

.method protected enableAnimation(Z)V
    .locals 0
    .parameter "bEnalbed"

    .prologue
    .line 3175
    iput-boolean p1, p0, Lcom/htc/sunny/SPresentation;->mEnabledAnimation:Z

    .line 3176
    return-void
.end method

.method public enableHitFeedback(Z)V
    .locals 0
    .parameter "enableHitFeedback"

    .prologue
    .line 3188
    iput-boolean p1, p0, Lcom/htc/sunny/SPresentation;->mEnableHitFeedback:Z

    .line 3189
    return-void
.end method

.method public enabledLayoutAnimateIn(Z)V
    .locals 0
    .parameter "bEnabled"

    .prologue
    .line 1080
    iput-boolean p1, p0, Lcom/htc/sunny/SPresentation;->mEnabledOpeningAnimation:Z

    .line 1081
    return-void
.end method

.method public enabledReflection(Z)V
    .locals 0
    .parameter "bEnabled"

    .prologue
    .line 1166
    iput-boolean p1, p0, Lcom/htc/sunny/SPresentation;->mEnabledReflection:Z

    .line 1167
    return-void
.end method

.method public enabledTouchEvent(Z)V
    .locals 0
    .parameter "bEnabled"

    .prologue
    .line 3219
    iput-boolean p1, p0, Lcom/htc/sunny/SPresentation;->mEnableTouchEvent:Z

    .line 3220
    return-void
.end method

.method public enlargeSensorArea(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 1139
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mEnlargeSensorRatioH:F

    .line 1140
    return-void
.end method

.method public enlargeSensorAreaWidth(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 1153
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mEnlargeSensorRatioW:F

    .line 1154
    return-void
.end method

.method public fling(I)V
    .locals 1
    .parameter "nVelocity"

    .prologue
    .line 2136
    new-instance v0, Lcom/htc/sunny/SPresentation$14;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SPresentation$14;-><init>(Lcom/htc/sunny/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 2141
    return-void
.end method

.method protected flingW(I)V
    .locals 11
    .parameter "nVelocity"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 2149
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2150
    const/16 v6, 0x12

    invoke-virtual {p0, v6}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2257
    :goto_0
    return-void

    .line 2154
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 2156
    iget-boolean v6, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    if-eq v9, v6, :cond_1

    iget-boolean v6, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    if-ne v9, v6, :cond_2

    .line 2157
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->homing()V

    goto :goto_0

    .line 2161
    :cond_2
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v6}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 2162
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2163
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v9, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    .line 2165
    iget-object v6, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    .line 2166
    .local v1, VELOCITY_MIN:I
    const/16 v0, 0xbb8

    .line 2167
    .local v0, VELOCITY_MAX:I
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v6, v6, -0x2

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2168
    .local v2, nMaxPosOffset:I
    int-to-float v6, v2

    sub-int v7, v0, v1

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v7, v1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v4, v6

    .line 2169
    .local v4, nPosOffset:I
    move v3, v4

    .line 2171
    .local v3, nOrgPosOffset:I
    if-lez p1, :cond_b

    .line 2172
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gtz v6, :cond_3

    .line 2173
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    goto :goto_0

    .line 2175
    :cond_3
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    sub-int/2addr v6, v4

    if-gtz v6, :cond_9

    .line 2176
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_8

    .line 2177
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int/lit8 v4, v6, -0x1

    .line 2207
    :cond_4
    :goto_1
    iget v6, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int v5, v6, v4

    .line 2210
    .local v5, nTimeSlotOffset:I
    if-lez p1, :cond_12

    .line 2211
    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 2212
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_10

    .line 2213
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    sub-int/2addr v7, v8

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 2231
    :goto_2
    iget-boolean v6, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    if-ne v9, v6, :cond_15

    .line 2232
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_NEXT:I

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 2238
    :goto_3
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gtz v6, :cond_16

    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v7, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v6, v7, :cond_16

    .line 2239
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v10, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 2243
    :cond_5
    :goto_4
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v7, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, v7, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v8, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v8, v8, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-virtual {p0, v7, v8}, Lcom/htc/sunny/SPresentation;->getRefineDuration(II)I

    move-result v7

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 2245
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v6, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-gtz v6, :cond_6

    .line 2246
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    const/4 v7, 0x0

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 2248
    :cond_6
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v6, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-lez v6, :cond_7

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v6, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-nez v6, :cond_17

    .line 2249
    :cond_7
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    goto/16 :goto_0

    .line 2179
    .end local v5           #nTimeSlotOffset:I
    :cond_8
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    goto :goto_1

    .line 2181
    :cond_9
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    sub-int/2addr v7, v4

    if-gt v6, v7, :cond_4

    .line 2182
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_a

    .line 2183
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v7, v7, -0x1

    sub-int v4, v6, v7

    goto :goto_1

    .line 2185
    :cond_a
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v7, v7, -0x1

    sub-int v4, v6, v7

    goto :goto_1

    .line 2189
    :cond_b
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gt v6, v7, :cond_c

    .line 2190
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    goto/16 :goto_0

    .line 2192
    :cond_c
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int/2addr v7, v4

    if-gt v6, v7, :cond_e

    .line 2193
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_d

    .line 2194
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    sub-int/2addr v6, v7

    add-int/lit8 v4, v6, -0x1

    goto/16 :goto_1

    .line 2196
    :cond_d
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    sub-int v4, v6, v7

    goto/16 :goto_1

    .line 2198
    :cond_e
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int/2addr v6, v4

    if-gtz v6, :cond_4

    .line 2199
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_f

    .line 2200
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v4

    goto/16 :goto_1

    .line 2202
    :cond_f
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    goto/16 :goto_1

    .line 2214
    .restart local v5       #nTimeSlotOffset:I
    :cond_10
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_11

    .line 2215
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    .line 2217
    :cond_11
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v5, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    .line 2220
    :cond_12
    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 2221
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_13

    .line 2222
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    .line 2223
    :cond_13
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_14

    .line 2224
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    .line 2226
    :cond_14
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v5, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    .line 2234
    :cond_15
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SPresentation;->DURATION_FLING:I

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    goto/16 :goto_3

    .line 2240
    :cond_16
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gt v6, v7, :cond_5

    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v7, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v6, v7, :cond_5

    .line 2241
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v10, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    goto/16 :goto_4

    .line 2253
    :cond_17
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v7, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, v7, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v8, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v8, v8, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 2254
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v7, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    .line 2256
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto/16 :goto_0
.end method

.method protected freeResource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2866
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 2868
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    if-eqz v0, :cond_0

    .line 2869
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    invoke-static {v0}, Lcom/htc/sunny/SunnyEngine;->destroyBitmap(I)V

    .line 2870
    iput v1, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    .line 2873
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->destroyAllResource()V

    .line 2874
    iput v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    .line 2875
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .line 2876
    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->freeResource()V

    .line 2877
    return-void
.end method

.method public getAnimationDirection()Lcom/htc/sunny/SPresentation$DIRECTION;
    .locals 1

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    return-object v0
.end method

.method protected getContainerByDataIndex(I)Lcom/htc/sunny/SPresentation$ItemContainer;
    .locals 6
    .parameter "nDataIndex"

    .prologue
    const/4 v4, 0x0

    .line 2657
    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-nez v5, :cond_0

    move-object v1, v4

    .line 2666
    :goto_0
    return-object v1

    .line 2659
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 2660
    .local v1, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-nez v1, :cond_2

    .line 2659
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2662
    :cond_2
    iget v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    if-ne p1, v5, :cond_1

    goto :goto_0

    .end local v1           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_3
    move-object v1, v4

    .line 2666
    goto :goto_0
.end method

.method protected getContainerByLayoutPos(I)Lcom/htc/sunny/SPresentation$ItemContainer;
    .locals 6
    .parameter "nUIPos"

    .prologue
    const/4 v4, 0x0

    .line 2640
    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-nez v5, :cond_0

    move-object v1, v4

    .line 2649
    :goto_0
    return-object v1

    .line 2642
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 2643
    .local v1, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-nez v1, :cond_2

    .line 2642
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2645
    :cond_2
    iget v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    if-ne p1, v5, :cond_1

    goto :goto_0

    .end local v1           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_3
    move-object v1, v4

    .line 2649
    goto :goto_0
.end method

.method protected getContainerId(II)I
    .locals 4
    .parameter "n2DX"
    .parameter "n2DY"

    .prologue
    const/4 v2, -0x1

    .line 3476
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v3, :cond_1

    move v1, v2

    .line 3487
    :cond_0
    :goto_0
    return v1

    .line 3478
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v3, p1, p2}, Lcom/htc/sunny/SunnyEngine;->getHitSprite(II)I

    move-result v0

    .line 3479
    .local v0, nSpriteId:I
    if-ne v2, v0, :cond_2

    move v1, v2

    .line 3480
    goto :goto_0

    .line 3483
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v3, v0, v2}, Lcom/htc/sunny/SunnyEngine;->getTag(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/htc/sunny/SPresentation;->getSpriteIndex(I)I

    move-result v1

    .line 3484
    .local v1, nSpriteIndex:I
    if-ltz v1, :cond_3

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-lt v1, v3, :cond_0

    :cond_3
    move v1, v2

    .line 3487
    goto :goto_0
.end method

.method public getContainerView(I)Lcom/htc/sunny/SView;
    .locals 1
    .parameter "nUIPos"

    .prologue
    .line 1067
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v0

    return-object v0
.end method

.method protected getDisplacementToContainer(IF)F
    .locals 3
    .parameter "ContainerId"
    .parameter "n3DX"

    .prologue
    .line 3453
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 3456
    :goto_0
    return v1

    .line 3455
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    invoke-virtual {v1, v2}, Lcom/htc/sunny/SunnyEngine;->getSpritePosition(I)Lcom/htc/sunny/Vector3F;

    move-result-object v0

    .line 3456
    .local v0, pos3DV:Lcom/htc/sunny/Vector3F;
    iget v1, v0, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float v1, p2, v1

    goto :goto_0
.end method

.method protected getInterpolateResult(FFFFLcom/htc/sunny/SPresentation$INTERPOLATE;)F
    .locals 11
    .parameter "current"
    .parameter "start"
    .parameter "total"
    .parameter "duration"
    .parameter "interpolate"

    .prologue
    .line 2797
    const/4 v3, 0x0

    .line 2798
    .local v3, nRes:F
    const/4 v6, 0x0

    .local v6, ts:F
    const/4 v5, 0x0

    .line 2799
    .local v5, tc:F
    move v4, p1

    .line 2800
    .local v4, t:F
    move v0, p2

    .line 2801
    .local v0, b:F
    move v1, p3

    .line 2802
    .local v1, c:F
    move v2, p4

    .line 2804
    .local v2, d:F
    sget-object v7, Lcom/htc/sunny/SPresentation$18;->$SwitchMap$com$htc$sunny$SPresentation$INTERPOLATE:[I

    invoke-virtual/range {p5 .. p5}, Lcom/htc/sunny/SPresentation$INTERPOLATE;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 2827
    :goto_0
    return v3

    .line 2806
    :pswitch_0
    div-float v7, v1, v2

    mul-float/2addr v7, v4

    add-float v3, v7, v0

    .line 2807
    goto :goto_0

    .line 2809
    :pswitch_1
    div-float/2addr v4, v2

    .line 2810
    mul-float v6, v4, v4

    .line 2811
    mul-float v5, v6, v4

    .line 2812
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

    .line 2813
    goto :goto_0

    .line 2822
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

    .line 2823
    goto :goto_0

    .line 2804
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getPressPosition(IF)F
    .locals 3
    .parameter "pressedContainerId"
    .parameter "dispalcement"

    .prologue
    .line 3464
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 3468
    :goto_0
    return v1

    .line 3466
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    invoke-virtual {v1, v2}, Lcom/htc/sunny/SunnyEngine;->getSpritePosition(I)Lcom/htc/sunny/Vector3F;

    move-result-object v0

    .line 3468
    .local v0, pos3DV:Lcom/htc/sunny/Vector3F;
    iget v1, v0, Lcom/htc/sunny/Vector3F;->mX:F

    add-float/2addr v1, p2

    goto :goto_0
.end method

.method protected getRefineDuration(II)I
    .locals 0
    .parameter "nDuration"
    .parameter "nTotalTimeSlot"

    .prologue
    .line 2617
    if-gtz p1, :cond_0

    .line 2618
    const/4 p1, 0x2

    .line 2632
    .end local p1
    :cond_0
    return p1
.end method

.method public getSelection()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1586
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gez v1, :cond_1

    .line 1594
    :cond_0
    :goto_0
    return v0

    .line 1588
    :cond_1
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v1, v2, :cond_2

    .line 1589
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-gez v1, :cond_0

    .line 1591
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1594
    :cond_2
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 1573
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    return v0
.end method

.method protected getTimeSlotOffsetX(IF)I
    .locals 8
    .parameter "nBaseUIPos"
    .parameter "nOffsetX"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 3364
    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-nez v4, :cond_1

    move v0, v3

    .line 3445
    :cond_0
    :goto_0
    return v0

    .line 3366
    :cond_1
    if-ltz p1, :cond_2

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-lt p1, v4, :cond_3

    :cond_2
    move v0, v3

    .line 3367
    goto :goto_0

    .line 3371
    :cond_3
    const/4 v0, 0x0

    .line 3372
    .local v0, nTimeSlotOffset:I
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v4, :cond_b

    .line 3374
    if-ltz p1, :cond_4

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    if-le p1, v4, :cond_5

    :cond_4
    move v0, v3

    .line 3375
    goto :goto_0

    .line 3376
    :cond_5
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_8

    .line 3377
    cmpg-float v4, p2, v5

    if-gez v4, :cond_7

    .line 3378
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v3, p1}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v3, v3, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float v2, v3, v4

    .line 3379
    .local v2, nXInterval:F
    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    div-float/2addr v3, v2

    float-to-int v0, v3

    .line 3422
    .end local v2           #nXInterval:F
    :cond_6
    :goto_1
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v3, v3, -0x2

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3423
    .local v1, nVisibleItems:I
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    if-lez v3, :cond_13

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_13

    .line 3424
    if-lez v0, :cond_12

    .line 3425
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    if-gt v3, v4, :cond_0

    .line 3426
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .end local v1           #nVisibleItems:I
    :cond_7
    move v0, v3

    .line 3381
    goto :goto_0

    .line 3383
    :cond_8
    if-nez p1, :cond_a

    .line 3384
    cmpl-float v4, p2, v5

    if-lez v4, :cond_9

    .line 3385
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v3, v3, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v4, p1}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float v2, v3, v4

    .line 3386
    .restart local v2       #nXInterval:F
    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    div-float/2addr v3, v2

    float-to-int v0, v3

    .line 3387
    goto :goto_1

    .line 3388
    .end local v2           #nXInterval:F
    :cond_9
    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v5, p1}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float v2, v4, v5

    .line 3389
    .restart local v2       #nXInterval:F
    iget v4, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v4, v4

    mul-float/2addr v4, p2

    div-float/2addr v4, v2

    float-to-int v0, v4

    .line 3390
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    add-int/2addr v4, v0

    if-gtz v4, :cond_6

    move v0, v3

    .line 3391
    goto/16 :goto_0

    .line 3395
    .end local v2           #nXInterval:F
    :cond_a
    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v5, p1}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v0, v3

    goto/16 :goto_1

    .line 3399
    :cond_b
    if-ltz p1, :cond_c

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    if-le p1, v4, :cond_d

    :cond_c
    move v0, v3

    .line 3400
    goto/16 :goto_0

    .line 3401
    :cond_d
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_f

    .line 3402
    cmpg-float v4, p2, v5

    if-gez v4, :cond_e

    .line 3403
    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v4, p1}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v6}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v0, v3

    goto/16 :goto_1

    .line 3405
    :cond_e
    iget v4, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v4, v4

    mul-float/2addr v4, p2

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v5, p1}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    add-int/lit8 v7, p1, -0x1

    invoke-virtual {v6, v7}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v6, v6, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-int v0, v4

    .line 3406
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    add-int/2addr v4, v0

    if-ltz v4, :cond_6

    move v0, v3

    .line 3407
    goto/16 :goto_0

    .line 3410
    :cond_f
    if-nez p1, :cond_11

    .line 3411
    cmpl-float v4, p2, v5

    if-lez v4, :cond_10

    .line 3412
    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v5, p1}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v0, v3

    goto/16 :goto_1

    :cond_10
    move v0, v3

    .line 3414
    goto/16 :goto_0

    .line 3417
    :cond_11
    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v4, p1}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v6}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v0, v3

    goto/16 :goto_1

    .line 3428
    .restart local v1       #nVisibleItems:I
    :cond_12
    if-gez v0, :cond_0

    .line 3429
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    if-lt v3, v4, :cond_0

    .line 3430
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    neg-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_0

    .line 3434
    :cond_13
    add-int/lit8 v3, v1, 0x1

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge v3, v4, :cond_14

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    if-nez v3, :cond_14

    if-gez v0, :cond_14

    .line 3435
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x2

    if-lt v3, v4, :cond_0

    .line 3436
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    neg-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_0

    .line 3439
    :cond_14
    add-int/lit8 v3, v1, 0x1

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_0

    if-lez v0, :cond_0

    .line 3440
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    .line 3441
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto/16 :goto_0
.end method

.method public hasAnimation()Z
    .locals 2

    .prologue
    .line 3519
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-eqz v0, :cond_0

    .line 3520
    const/4 v0, 0x1

    .line 3522
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected homing()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1784
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-gtz v1, :cond_0

    .line 1785
    invoke-virtual {p0, v6}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 1786
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 1790
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 1792
    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    if-nez v1, :cond_10

    .line 1793
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v2, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    .line 1794
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-nez v1, :cond_4

    .line 1795
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v7, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1884
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1885
    .local v0, nDuration:I
    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    if-ne v6, v1, :cond_18

    .line 1886
    iget v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_BOUNCING:I

    .line 1891
    :goto_1
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny/SPresentation;->getRefineDuration(II)I

    move-result v0

    .line 1893
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-gtz v1, :cond_2

    .line 1894
    const/4 v0, 0x0

    .line 1897
    :cond_2
    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    if-ne v6, v1, :cond_19

    .line 1898
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 1903
    :goto_2
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    const/4 v2, 0x3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    .line 1904
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-lez v1, :cond_3

    if-gtz v0, :cond_1a

    .line 1905
    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    .line 1916
    :goto_3
    return-void

    .line 1796
    .end local v0           #nDuration:I
    :cond_4
    const/4 v1, 0x4

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v1, v2, :cond_8

    .line 1798
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v1, v2, :cond_6

    .line 1799
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_5

    .line 1800
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_0

    .line 1802
    :cond_5
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_0

    .line 1805
    :cond_6
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v1, v2, :cond_1

    .line 1806
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_7

    .line 1807
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_0

    .line 1809
    :cond_7
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_0

    .line 1812
    :cond_8
    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    if-ne v6, v1, :cond_c

    .line 1813
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v1, v2, :cond_a

    .line 1814
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_9

    .line 1815
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1817
    :cond_9
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1820
    :cond_a
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v1, v2, :cond_1

    .line 1821
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_b

    .line 1822
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1824
    :cond_b
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1829
    :cond_c
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL_HALF:I

    if-gt v1, v2, :cond_e

    .line 1830
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_d

    .line 1831
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 1835
    :goto_4
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1833
    :cond_d
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto :goto_4

    .line 1837
    :cond_e
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_f

    .line 1838
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 1842
    :goto_5
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1840
    :cond_f
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto :goto_5

    .line 1847
    :cond_10
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v2, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    .line 1848
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-nez v1, :cond_12

    .line 1849
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-ltz v1, :cond_11

    .line 1850
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1851
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto/16 :goto_0

    .line 1853
    :cond_11
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    neg-int v2, v2

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1854
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto/16 :goto_0

    .line 1856
    :cond_12
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gez v1, :cond_14

    .line 1857
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-ltz v1, :cond_13

    .line 1858
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1862
    :goto_6
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-eqz v1, :cond_1

    .line 1863
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto/16 :goto_0

    .line 1860
    :cond_13
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_6

    .line 1865
    :cond_14
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-ne v1, v2, :cond_15

    .line 1866
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1867
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-eqz v1, :cond_1

    .line 1868
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto/16 :goto_0

    .line 1870
    :cond_15
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-ge v1, v2, :cond_17

    .line 1871
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_16

    .line 1872
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    sub-int/2addr v4, v5

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1876
    :goto_7
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-eqz v1, :cond_1

    .line 1877
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto/16 :goto_0

    .line 1874
    :cond_16
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_7

    .line 1880
    :cond_17
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v7, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1888
    .restart local v0       #nDuration:I
    :cond_18
    iget v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_HOMING:I

    goto/16 :goto_1

    .line 1900
    :cond_19
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto/16 :goto_2

    .line 1909
    :cond_1a
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v0, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1910
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v2, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    .line 1912
    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    if-ne v6, v1, :cond_1b

    .line 1913
    invoke-virtual {p0, v7}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    .line 1915
    :cond_1b
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto/16 :goto_3
.end method

.method protected initContainers()V
    .locals 1

    .prologue
    .line 777
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->initContainers(Z)V

    .line 778
    return-void
.end method

.method protected initContainers(Z)V
    .locals 17
    .parameter "bForceUpdated"

    .prologue
    .line 781
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v1, :cond_1

    .line 931
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-nez v1, :cond_2

    .line 783
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny/SPresentation;->clear3DView()V

    .line 784
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    goto :goto_0

    .line 788
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentationAdapterBase;->getItemCount()I

    move-result v13

    .line 789
    .local v13, nDataCount:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerCount()I

    move-result v10

    .line 790
    .local v10, containerCount:I
    if-eqz v13, :cond_3

    if-nez v10, :cond_4

    .line 791
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny/SPresentation;->clear3DView()V

    .line 792
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    goto :goto_0

    .line 798
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SView;->mViewNodeId:I

    if-nez v1, :cond_6

    .line 799
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny/SPresentation;->clear3DView()V

    .line 802
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-eq v13, v1, :cond_0

    .line 803
    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    .line 804
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v1, v2, :cond_5

    .line 805
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    .line 807
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gez v1, :cond_0

    .line 808
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    goto :goto_0

    .line 814
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ne v10, v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ne v13, v1, :cond_7

    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v1, v0, :cond_13

    .line 815
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 816
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny/SPresentation;->destroyAllResource()V

    .line 817
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    .line 819
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-eq v13, v1, :cond_9

    .line 820
    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    .line 821
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v1, v2, :cond_8

    .line 822
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    .line 824
    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gez v1, :cond_9

    .line 825
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    .line 829
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-eq v10, v1, :cond_a

    .line 830
    move-object/from16 v0, p0

    iput v10, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    .line 832
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mVisibleContainerCount:I

    .line 833
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    new-array v1, v1, [Lcom/htc/sunny/SPresentation$ItemContainer;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .line 834
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/sunny/SPresentation;->mDataUpdated:Z

    .line 837
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mResIdShadow:I

    if-eqz v1, :cond_b

    .line 838
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mShadowTexture:I

    .line 839
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/SPresentation;->mResIdShadow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 840
    .local v12, mShadowDrawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mShadowW:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/SPresentation;->mShadowH:I

    invoke-static {v12, v1, v2}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v8

    .line 841
    .local v8, bmp:Lcom/htc/sunny/SBitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/SPresentation;->mShadowTexture:I

    invoke-virtual {v8}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 842
    invoke-virtual {v8}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 847
    .end local v8           #bmp:Lcom/htc/sunny/SBitmap;
    .end local v12           #mShadowDrawable:Landroid/graphics/drawable/Drawable;
    :cond_b
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge v11, v1, :cond_12

    .line 848
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    new-instance v9, Lcom/htc/sunny/SPresentation$ItemContainer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v2, v3}, Lcom/htc/sunny/SPresentation$ItemContainer;-><init>(Lcom/htc/sunny/SPresentation;Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    aput-object v9, v1, v11

    .line 849
    .local v9, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    iput v11, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mID:I

    .line 850
    iput v11, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    .line 852
    iget-object v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    iget v3, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny/SPresentationContainerLayout;->setLayout(Lcom/htc/sunny/SPresentationContainerLayout;)V

    .line 853
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/sunny/SPresentation;->addView(Lcom/htc/sunny/SView;)V

    .line 855
    iget-object v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget v0, v1, Lcom/htc/sunny/SPresentationContainerLayout;->mWidth:I

    move/from16 v16, v0

    .line 856
    .local v16, nWidth:I
    iget-object v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget v15, v1, Lcom/htc/sunny/SPresentationContainerLayout;->mHeight:I

    .line 858
    .local v15, nHeight:I
    invoke-virtual {v9}, Lcom/htc/sunny/SPresentation$ItemContainer;->getViewNodeId()I

    move-result v1

    iput v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    .line 859
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v1

    iput v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageTexture:I

    .line 861
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v1

    iput v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageSprite:I

    .line 862
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v1

    iput v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    .line 863
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    .line 864
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setSpriteTouchable(IZ)V

    .line 865
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    const/4 v3, 0x0

    move/from16 v0, v16

    int-to-float v4, v0

    const/high16 v5, 0x3f80

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny/SPresentation;->mEnlargeSensorRatioW:F

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v5, v15

    const/high16 v6, 0x3f80

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny/SPresentation;->mEnlargeSensorRatioH:F

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    neg-int v7, v15

    div-int/lit8 v7, v7, 0x2

    invoke-virtual/range {v1 .. v7}, Lcom/htc/sunny/SunnyEngine;->setupSpriteGeometry(IIIIII)V

    .line 867
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageSprite:I

    const/4 v3, 0x0

    const/4 v6, 0x0

    neg-int v4, v15

    div-int/lit8 v7, v4, 0x2

    move/from16 v4, v16

    move v5, v15

    invoke-virtual/range {v1 .. v7}, Lcom/htc/sunny/SunnyEngine;->setupSpriteGeometry(IIIIII)V

    .line 868
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageSprite:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageTexture:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 870
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny/SPresentation;->mEnabledReflection:Z

    if-ne v1, v2, :cond_d

    .line 871
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v1

    iput v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    .line 872
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mReflectionHeight:I

    if-nez v1, :cond_c

    .line 873
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/sunny/SPresentation;->mReflectionHeight:I

    .line 875
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny/SPresentation;->mReflectionHeight:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/SPresentation;->mReflectionHeight:I

    neg-int v4, v4

    div-int/lit8 v7, v4, 0x2

    move/from16 v4, v16

    invoke-virtual/range {v1 .. v7}, Lcom/htc/sunny/SunnyEngine;->setupSpriteGeometry(IIIIII)V

    .line 876
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/SPresentation;->mReflectionHeight:I

    sub-int v4, v15, v4

    int-to-float v4, v4

    int-to-float v5, v15

    div-float/2addr v4, v5

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny/SunnyEngine;->setTextureCoordinates(IFFFF)V

    .line 877
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    const/high16 v3, 0x4334

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodeRotate(IFFF)V

    .line 879
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageTexture:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 880
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/SPresentation;->mReflectionColorR:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny/SPresentation;->mReflectionColorG:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny/SPresentation;->mReflectionColorB:I

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny/SunnyEngine;->setSpriteAsShadow(IIIII)Z

    .line 882
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageSprite:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/SPresentation;->mReflectionGap:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    .line 883
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/SPresentation;->mReflectionGap:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    .line 884
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/SPresentation;->mReflectionGap:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny/SPresentation;->mReflectionGap:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    .line 888
    :cond_d
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mResIdShadow:I

    if-eqz v1, :cond_e

    .line 889
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v1

    iput v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mShadowSprite:I

    .line 890
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mShadowSprite:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/SPresentation;->mShadowW:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny/SPresentation;->mShadowH:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/htc/sunny/SunnyEngine;->setupSpriteGeometry(IIIIII)V

    .line 891
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mShadowSprite:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny/SPresentation;->mShadowTexture:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 892
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mShadowSprite:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny/SPresentation;->mPosX:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/SPresentation;->mPosY:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    .line 895
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/htc/sunny/SPresentation;->getSpriteTag(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setTag(II)V

    .line 897
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v11, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int v14, v1, v2

    .line 898
    .local v14, nDataIndex:I
    if-ltz v14, :cond_10

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge v14, v1, :cond_10

    .line 899
    iput v14, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    .line 900
    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    .line 906
    :goto_2
    iget-object v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-boolean v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v1, :cond_f

    iget-boolean v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v1, :cond_11

    :cond_f
    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2, v1}, Lcom/htc/sunny/SPresentation;->updateContainerLayout(Lcom/htc/sunny/SPresentation$ItemContainer;Lcom/htc/sunny/SPresentationContainerLayout;Z)V

    .line 847
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 902
    :cond_10
    const/4 v1, -0x1

    iput v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    .line 903
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    goto :goto_2

    .line 906
    :cond_11
    const/4 v1, 0x0

    goto :goto_3

    .line 909
    .end local v9           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    .end local v14           #nDataIndex:I
    .end local v15           #nHeight:I
    .end local v16           #nWidth:I
    :cond_12
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-lez v1, :cond_13

    .line 910
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mGradualTranslation:Lcom/htc/sunny/Vector3F;

    iget v1, v1, Lcom/htc/sunny/Vector3F;->mX:F

    float-to-int v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny/SPresentation;->mGradualTranslation:Lcom/htc/sunny/Vector3F;

    iget v2, v2, Lcom/htc/sunny/Vector3F;->mY:F

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny/SPresentation;->mGradualBmpResId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny/SPresentation;->createGradualMask(III)V

    .line 914
    .end local v11           #i:I
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/sunny/SPresentation;->mDataUpdated:Z

    if-nez v1, :cond_14

    .line 915
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny/SPresentation;->updateAllContainersData()V

    .line 918
    :cond_14
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SPresentation;->moveToTimeSlot(I)V

    .line 919
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SPresentation;->updateContainersOrder(Z)V

    .line 921
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny/SPresentation;->mEnabledOpeningAnimation:Z

    if-ne v1, v2, :cond_15

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny/SPresentation;->mPerformOpeningAnimation:Z

    if-ne v1, v2, :cond_15

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/sunny/SPresentation;->mOpeningAnimationStart:Z

    if-nez v1, :cond_15

    .line 924
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/sunny/SPresentation;->mOpeningAnimationStart:Z

    .line 925
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny/SPresentation;->openingAnimation()V

    goto/16 :goto_0

    .line 927
    :cond_15
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    .line 928
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SPresentation;->enabledTouchEvent(Z)V

    goto/16 :goto_0
.end method

.method protected isEnabledAnimation()Z
    .locals 2

    .prologue
    .line 3201
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 3203
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mEnabledAnimation:Z

    goto :goto_0
.end method

.method public isEnabledTouchEvent()Z
    .locals 1

    .prologue
    .line 3211
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mEnableTouchEvent:Z

    return v0
.end method

.method protected moveContainers(I)V
    .locals 13
    .parameter "nTimeSlot"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2547
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-nez v0, :cond_1

    .line 2593
    :cond_0
    :goto_0
    return-void

    .line 2549
    :cond_1
    const/4 v10, -0x1

    .line 2550
    .local v10, nSkipCID:I
    if-lez p1, :cond_3

    .line 2551
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v8

    .line 2552
    .local v8, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-eqz v8, :cond_2

    .line 2553
    iget v10, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mID:I

    .line 2564
    .end local v8           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_2
    :goto_1
    const/4 v3, 0x0

    .local v3, nCurPos:I
    const/4 v4, 0x0

    .line 2565
    .local v4, nNextPos:I
    const/4 v7, 0x0

    .local v7, cid:I
    :goto_2
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge v7, v0, :cond_b

    .line 2566
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v8, v0, v7

    .line 2567
    .restart local v8       #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-nez v8, :cond_5

    .line 2565
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2555
    .end local v3           #nCurPos:I
    .end local v4           #nNextPos:I
    .end local v7           #cid:I
    .end local v8           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_3
    if-gez p1, :cond_4

    .line 2556
    invoke-virtual {p0, v11}, Lcom/htc/sunny/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v8

    .line 2557
    .restart local v8       #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-eqz v8, :cond_2

    .line 2558
    iget v10, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mID:I

    goto :goto_1

    .line 2561
    .end local v8           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_4
    const/4 v10, -0x1

    goto :goto_1

    .line 2569
    .restart local v3       #nCurPos:I
    .restart local v4       #nNextPos:I
    .restart local v7       #cid:I
    .restart local v8       #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_5
    iget v3, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    .line 2570
    move v4, v3

    .line 2571
    if-gez p1, :cond_8

    .line 2572
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v3

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    rem-int v4, v0, v1

    .line 2576
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v1, v1, v7

    iget-object v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-boolean v6, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunny/SPresentationAdapterBase;->updateLayoutAtTimeSlot(IIIILcom/htc/sunny/SPresentationContainerLayout;Z)V

    .line 2578
    if-ne v10, v7, :cond_9

    .line 2579
    iput-boolean v12, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mSkipItem:Z

    .line 2584
    :goto_5
    iget-object v1, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-boolean v0, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v0, :cond_7

    iget-boolean v0, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v0, :cond_a

    :cond_7
    move v0, v12

    :goto_6
    invoke-virtual {p0, v8, v1, v0}, Lcom/htc/sunny/SPresentation;->updateContainerLayout(Lcom/htc/sunny/SPresentation$ItemContainer;Lcom/htc/sunny/SPresentationContainerLayout;Z)V

    goto :goto_3

    .line 2573
    :cond_8
    if-lez p1, :cond_6

    .line 2574
    add-int/lit8 v0, v3, 0x1

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    rem-int v4, v0, v1

    goto :goto_4

    .line 2581
    :cond_9
    iput-boolean v11, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mSkipItem:Z

    goto :goto_5

    :cond_a
    move v0, v11

    .line 2584
    goto :goto_6

    .line 2587
    .end local v8           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_b
    if-nez p1, :cond_0

    .line 2589
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v9

    .line 2590
    .local v9, focusContainer:Lcom/htc/sunny/SPresentation$ItemContainer;
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->getSpritePosition(I)Lcom/htc/sunny/Vector3F;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mFocusPosV:Lcom/htc/sunny/Vector3F;

    goto :goto_0
.end method

.method protected moveToTimeSlot(I)V
    .locals 5
    .parameter "nTimeSlot"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1671
    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_UNKNOWN:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 1673
    .local v0, newDirection:Lcom/htc/sunny/SPresentation$DIRECTION;
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    if-lt v1, v2, :cond_6

    .line 1674
    iget v1, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    if-lt p1, v1, :cond_2

    .line 1675
    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 1680
    :goto_0
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_3

    if-gez p1, :cond_3

    .line 1681
    iput v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    .line 1694
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    if-ne v4, v1, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v1, v2, :cond_1

    .line 1695
    const/4 p1, 0x0

    .line 1696
    iput-boolean v4, p0, Lcom/htc/sunny/SPresentation;->mBlockScroll:Z

    .line 1698
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateBouncingState()V

    .line 1699
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->moveToTimeSlot(I)V

    .line 1700
    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->updateContainersOrder(Z)V

    .line 1709
    :goto_2
    return-void

    .line 1677
    :cond_2
    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto :goto_0

    .line 1682
    :cond_3
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v1, :cond_4

    if-lez p1, :cond_4

    .line 1683
    iput v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    goto :goto_1

    .line 1684
    :cond_4
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-ltz v1, :cond_5

    if-ltz p1, :cond_5

    .line 1685
    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyPositionChange(Lcom/htc/sunny/SPresentation$DIRECTION;)V

    .line 1687
    iget v1, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    sub-int/2addr p1, v1

    goto :goto_1

    .line 1688
    :cond_5
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gtz v1, :cond_0

    if-gtz p1, :cond_0

    .line 1689
    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyPositionChange(Lcom/htc/sunny/SPresentation$DIRECTION;)V

    .line 1691
    iget v1, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    add-int/2addr p1, v1

    goto :goto_1

    .line 1704
    :cond_6
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    .line 1705
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateBouncingState()V

    .line 1706
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->moveContainers(I)V

    .line 1708
    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->updateContainersOrder(Z)V

    goto :goto_2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 1390
    new-instance v0, Lcom/htc/sunny/SPresentation$7;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SPresentation$7;-><init>(Lcom/htc/sunny/SPresentation;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1395
    return-void
.end method

.method public notifyDataSetChanged(I)V
    .locals 1
    .parameter "nSelection"

    .prologue
    .line 1412
    new-instance v0, Lcom/htc/sunny/SPresentation$8;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SPresentation$8;-><init>(Lcom/htc/sunny/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1417
    return-void
.end method

.method protected notifyDataSetChangedW()V
    .locals 2

    .prologue
    .line 1402
    const-string v0, "3DGlideMode"

    const-string v1, "notifyDataSetChangedW() +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-nez v0, :cond_1

    .line 1409
    :cond_0
    :goto_0
    return-void

    .line 1405
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->initContainers()V

    .line 1406
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateAllContainersData()V

    .line 1407
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    .line 1408
    const-string v0, "3DGlideMode"

    const-string v1, "notifyDataSetChangedW() -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected notifyDataSetChangedW(I)V
    .locals 3
    .parameter "nSelection"

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-nez v0, :cond_1

    .line 1427
    :cond_0
    :goto_0
    return-void

    .line 1421
    :cond_1
    const-string v0, "3DGlideMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDataSetChangedW() + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    .line 1423
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->initContainers(Z)V

    .line 1424
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateAllContainersData()V

    .line 1425
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    .line 1426
    const-string v0, "3DGlideMode"

    const-string v1, "notifyDataSetChangedW() -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected notifyPositionChange(Lcom/htc/sunny/SPresentation$DIRECTION;)V
    .locals 3
    .parameter "eDirection"

    .prologue
    .line 1628
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v2}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v2

    if-ne v1, v2, :cond_3

    .line 1631
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v2}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->getLastUpdateIndex()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1632
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->getTargetFocusIndex()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    .line 1651
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->updateContainerLayoutPos(Lcom/htc/sunny/SPresentation$DIRECTION;)V

    .line 1653
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    .line 1654
    .local v0, nSelectionPos:I
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gez v1, :cond_5

    .line 1655
    const/4 v0, 0x0

    .line 1662
    :goto_1
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->updateNewContainer(Lcom/htc/sunny/SPresentation$DIRECTION;)V

    .line 1664
    .end local v0           #nSelectionPos:I
    :goto_2
    return-void

    .line 1634
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->updateContainerLayoutPos(Lcom/htc/sunny/SPresentation$DIRECTION;)V

    .line 1636
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge v1, v2, :cond_2

    .line 1637
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->notifySelectionChange(I)V

    .line 1639
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->updateNewContainer(Lcom/htc/sunny/SPresentation$DIRECTION;)V

    goto :goto_2

    .line 1644
    :cond_3
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v1, p1, :cond_4

    .line 1645
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    goto :goto_0

    .line 1646
    :cond_4
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v1, p1, :cond_0

    .line 1647
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    goto :goto_0

    .line 1656
    .restart local v0       #nSelectionPos:I
    :cond_5
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v1, v2, :cond_6

    .line 1657
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_1

    .line 1659
    :cond_6
    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifySelectionChange(I)V

    goto :goto_1
.end method

.method protected notifySelectionChange(I)V
    .locals 1
    .parameter "nPos"

    .prologue
    .line 1602
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    .line 1603
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    if-eqz v0, :cond_0

    .line 1604
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    invoke-interface {v0, p1}, Lcom/htc/sunny/SPresentation$PresentationListener;->onPresentationSelectionChange(I)V

    .line 1606
    :cond_0
    return-void
.end method

.method protected notifyStateChange(I)V
    .locals 1
    .parameter "nState"

    .prologue
    .line 1613
    const/16 v0, 0x12

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-eqz v0, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v0}, Lcom/htc/sunny/SunnyEngine;->logStatus()V

    .line 1616
    :cond_0
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    .line 1617
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    if-eqz v0, :cond_1

    .line 1618
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    invoke-interface {v0, p1}, Lcom/htc/sunny/SPresentation$PresentationListener;->onPresentationStateChange(I)V

    .line 1620
    :cond_1
    return-void
.end method

.method public notifyUpdateItem(I)V
    .locals 1
    .parameter "nPos"

    .prologue
    .line 1439
    new-instance v0, Lcom/htc/sunny/SPresentation$9;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SPresentation$9;-><init>(Lcom/htc/sunny/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1444
    return-void
.end method

.method protected notifyUpdateItemW(I)V
    .locals 8
    .parameter "nPos"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1451
    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/sunny/SPresentation;->mDataUpdated:Z

    if-nez v5, :cond_1

    .line 1476
    :cond_0
    :goto_0
    return-void

    .line 1454
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->getContainerByDataIndex(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v2

    .line 1455
    .local v2, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-eqz v2, :cond_6

    .line 1456
    iget v5, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    if-ltz v5, :cond_7

    iget v5, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge v5, v6, :cond_7

    .line 1458
    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v5, p1}, Lcom/htc/sunny/SPresentationAdapterBase;->getItemBitmap(I)Lcom/htc/sunny/SBitmap;

    move-result-object v0

    .line 1459
    .local v0, bmp:Lcom/htc/sunny/SBitmap;
    if-eqz v0, :cond_3

    .line 1460
    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->cloneSBitmap()Lcom/htc/sunny/SBitmap;

    move-result-object v1

    .line 1461
    .local v1, bmpClone:Lcom/htc/sunny/SBitmap;
    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1462
    iget-object v5, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v6, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageTexture:I

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 1463
    iput-boolean v4, p0, Lcom/htc/sunny/SPresentation;->mIsFirstRender:Z

    .line 1465
    :cond_2
    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->releaseClone()V

    .line 1467
    .end local v1           #bmpClone:Lcom/htc/sunny/SBitmap;
    :cond_3
    iput-boolean v3, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    .line 1473
    .end local v0           #bmp:Lcom/htc/sunny/SBitmap;
    :goto_1
    iget-object v5, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-boolean v6, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v6, :cond_4

    iget-boolean v6, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v6, :cond_5

    :cond_4
    move v3, v4

    :cond_5
    invoke-virtual {p0, v2, v5, v3}, Lcom/htc/sunny/SPresentation;->updateContainerLayout(Lcom/htc/sunny/SPresentation$ItemContainer;Lcom/htc/sunny/SPresentationContainerLayout;Z)V

    .line 1475
    :cond_6
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0

    .line 1469
    :cond_7
    iput-boolean v4, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    .line 1470
    const/4 v5, -0x1

    iput v5, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    goto :goto_1
.end method

.method protected onAnimationEnd()V
    .locals 2

    .prologue
    .line 2741
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->reset()V

    .line 2743
    const/16 v0, 0x9

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_1

    .line 2744
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onScrollAnimationEnd()V

    .line 2752
    :cond_0
    :goto_0
    return-void

    .line 2745
    :cond_1
    const/4 v0, 0x5

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-eq v0, v1, :cond_2

    const/4 v0, 0x7

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_3

    .line 2746
    :cond_2
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onHomingAnimationEnd()V

    goto :goto_0

    .line 2747
    :cond_3
    const/4 v0, 0x3

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_4

    .line 2748
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onFlingAnimationEnd()V

    goto :goto_0

    .line 2749
    :cond_4
    const/16 v0, 0xb

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_0

    .line 2750
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onRotateSelfEnd()V

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x0

    .line 3124
    const-string v0, "3DGlideMode"

    const-string v1, "[SPresentation] onDown()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledTouchEvent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3137
    :cond_0
    :goto_0
    return v2

    .line 3130
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->hasAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    if-nez v0, :cond_2

    .line 3131
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 3134
    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 3135
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 3146
    const-string v0, "3DGlideMode"

    const-string v1, "[SPresentation] onFling()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3148
    float-to-int v0, p3

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->flingW(I)V

    .line 3150
    const/4 v0, 0x0

    return v0
.end method

.method protected onFlingAnimationEnd()V
    .locals 1

    .prologue
    .line 2761
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateBouncingState()V

    .line 2763
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-nez v0, :cond_0

    .line 2764
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 2771
    :goto_0
    return-void

    .line 2766
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 2767
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2768
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->homing()V

    goto :goto_0
.end method

.method protected onHomingAnimationEnd()V
    .locals 0

    .prologue
    .line 2674
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 2675
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
    .line 2836
    invoke-super/range {p0 .. p5}, Lcom/htc/sunny/SAdapterView;->onLayout(ZIIII)V

    .line 2838
    sub-int v0, p4, p2

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mViewWidth:I

    .line 2839
    sub-int v0, p5, p3

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mViewHeight:I

    .line 2841
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mViewWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mViewWidth_H:I

    .line 2842
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mViewHeight_H:I

    .line 2843
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateViewLayout()V

    .line 2845
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    .line 2846
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 3313
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mItemLongClickListener:Lcom/htc/sunny/SPresentation$OnItemLongClickListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-nez v1, :cond_0

    .line 3314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny/SPresentation;->getContainerId(II)I

    move-result v0

    .line 3315
    .local v0, nContainerId:I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 3316
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    if-ne v1, v2, :cond_0

    .line 3317
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mItemLongClickListener:Lcom/htc/sunny/SPresentation$OnItemLongClickListener;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    invoke-interface {v1, v2}, Lcom/htc/sunny/SPresentation$OnItemLongClickListener;->onPresentationItemLongClick(I)V

    .line 3322
    .end local v0           #nContainerId:I
    :cond_0
    return-void
.end method

.method protected onRotateSelf()V
    .locals 10

    .prologue
    .line 2312
    const/4 v2, 0x0

    .line 2313
    .local v2, nRStartY:F
    const/high16 v9, -0x3c4c

    .line 2315
    .local v9, nREndY:F
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mRotateClockwise:Z

    if-nez v0, :cond_0

    .line 2316
    const/high16 v9, 0x43b4

    .line 2319
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nArgs:I

    .line 2320
    .local v7, nContainerId:I
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-eqz v0, :cond_1

    if-ltz v7, :cond_1

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v0, v0, -0x1

    if-le v7, v0, :cond_2

    .line 2349
    :cond_1
    :goto_0
    return-void

    .line 2324
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v6, v0, v7

    .line 2325
    .local v6, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-eqz v6, :cond_1

    .line 2327
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-lt v0, v1, :cond_3

    .line 2328
    iget-object v0, v6, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-object v0, v0, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iput v2, v0, Lcom/htc/sunny/Vector3F;->mY:F

    .line 2329
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    goto :goto_0

    .line 2333
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    .line 2335
    const/4 v8, 0x0

    .line 2337
    .local v8, nNextRY:F
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-gt v0, v1, :cond_1

    .line 2339
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-ge v0, v1, :cond_6

    .line 2340
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    int-to-float v1, v0

    sub-float v3, v9, v2

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v5, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny/SPresentation;->getInterpolateResult(FFFFLcom/htc/sunny/SPresentation$INTERPOLATE;)F

    move-result v8

    .line 2344
    :cond_4
    :goto_1
    iget-object v0, v6, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-object v0, v0, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iput v8, v0, Lcom/htc/sunny/Vector3F;->mY:F

    .line 2347
    iget-object v1, v6, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-boolean v0, v6, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v0, :cond_5

    iget-boolean v0, v6, Lcom/htc/sunny/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v6, v1, v0}, Lcom/htc/sunny/SPresentation;->updateContainerLayout(Lcom/htc/sunny/SPresentation$ItemContainer;Lcom/htc/sunny/SPresentationContainerLayout;Z)V

    goto :goto_0

    .line 2341
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-ne v0, v1, :cond_4

    .line 2342
    move v8, v9

    goto :goto_1

    .line 2347
    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected onRotateSelfEnd()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 2357
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 2358
    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    .line 2359
    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->enabledTouchEvent(Z)V

    .line 2360
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 3228
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mIsPressed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mBlockScroll:Z

    if-ne v9, v0, :cond_1

    .line 3229
    :cond_0
    const-string v0, "3DGlideMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SPresentation] onScroll() enable animation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " block scroll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mBlockScroll:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 3244
    :goto_0
    return v0

    .line 3233
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->hasAnimation()Z

    move-result v0

    if-ne v9, v0, :cond_2

    .line 3234
    const-string v0, "3DGlideMode"

    const-string v1, "[SPresentation] onScroll() has animation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3235
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 3238
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 3239
    .local v7, nStart2DX:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 3241
    .local v8, nStart2DY:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v2, v0

    float-to-int v3, v7

    float-to-int v4, v8

    move-object v0, p0

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunny/SPresentation;->onScrollPresentation(IIIIFF)Z

    .line 3243
    iput-boolean v10, p0, Lcom/htc/sunny/SPresentation;->mIsSingleTapUp:Z

    move v0, v9

    .line 3244
    goto :goto_0
.end method

.method protected onScrollAnimation()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 2684
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-lt v0, v1, :cond_0

    .line 2685
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    .line 2734
    :goto_0
    return-void

    .line 2689
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    .line 2690
    const/4 v9, 0x0

    .line 2691
    .local v9, nTimeSlotOffset:I
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-ge v0, v1, :cond_8

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-ge v0, v1, :cond_8

    .line 2692
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v5, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny/SPresentation;->getInterpolateResult(FFFFLcom/htc/sunny/SPresentation$INTERPOLATE;)F

    move-result v0

    float-to-int v7, v0

    .line 2693
    .local v7, nCurTimeSlot:I
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v5, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny/SPresentation;->getInterpolateResult(FFFFLcom/htc/sunny/SPresentation$INTERPOLATE;)F

    move-result v0

    float-to-int v8, v0

    .line 2695
    .local v8, nPreTimeSlot:I
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_2

    .line 2696
    sub-int v0, v7, v8

    neg-int v9, v0

    .line 2705
    :goto_1
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sub-int v6, v8, v0

    .line 2707
    .local v6, nAccuracy:I
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_4

    .line 2708
    sub-int/2addr v9, v6

    .line 2713
    :cond_1
    :goto_2
    if-nez v9, :cond_6

    .line 2714
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_5

    .line 2715
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onScrollAnimation()V

    goto :goto_0

    .line 2697
    .end local v6           #nAccuracy:I
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_3

    .line 2698
    sub-int v9, v7, v8

    goto :goto_1

    .line 2700
    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    .line 2701
    const-string v0, "3DGlideMode"

    const-string v1, "[SPresentation] onScrollAnimation() wrong direction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2709
    .restart local v6       #nAccuracy:I
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_1

    .line 2710
    add-int/2addr v9, v6

    goto :goto_2

    .line 2717
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_6

    .line 2718
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onScrollAnimation()V

    goto/16 :goto_0

    .line 2722
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    .line 2733
    .end local v6           #nAccuracy:I
    .end local v7           #nCurTimeSlot:I
    .end local v8           #nPreTimeSlot:I
    :cond_7
    :goto_3
    invoke-virtual {p0, v9}, Lcom/htc/sunny/SPresentation;->scrollByOffset(I)V

    goto/16 :goto_0

    .line 2724
    :cond_8
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-ne v0, v1, :cond_7

    .line 2725
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sub-int v9, v0, v1

    .line 2726
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_9

    .line 2727
    mul-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 2728
    :cond_9
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_7

    goto :goto_3
.end method

.method protected onScrollAnimationEnd()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 2778
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateBouncingState()V

    .line 2780
    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    .line 2781
    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->enabledTouchEvent(Z)V

    .line 2783
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-nez v0, :cond_0

    .line 2784
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 2790
    :goto_0
    return-void

    .line 2786
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 2787
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2788
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->homing()V

    goto :goto_0
.end method

.method protected onScrollPresentation(IIIIFF)Z
    .locals 10
    .parameter "n2DX1"
    .parameter "n2DY1"
    .parameter "n2DX2"
    .parameter "n2DY2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 3254
    invoke-virtual {p0, p3}, Lcom/htc/sunny/SPresentation;->Get3DX(I)I

    move-result v1

    .line 3256
    .local v1, n3DX2:I
    const/4 v7, -0x1

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    if-ne v7, v8, :cond_0

    .line 3257
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny/SPresentation;->getContainerId(II)I

    move-result v7

    iput v7, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    .line 3258
    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iput v7, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    .line 3261
    :cond_0
    const/4 v7, -0x1

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    if-eq v7, v8, :cond_7

    .line 3262
    iget-object v7, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v8, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    iget v9, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    aget-object v8, v8, v9

    iget v8, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    invoke-virtual {v7, v8}, Lcom/htc/sunny/SunnyEngine;->getSpritePosition(I)Lcom/htc/sunny/Vector3F;

    move-result-object v7

    iget v7, v7, Lcom/htc/sunny/Vector3F;->mX:F

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mDisplacement:F

    add-float v5, v7, v8

    .line 3263
    .local v5, nPrevious3DX:F
    int-to-float v2, v1

    .line 3265
    .local v2, nNext3DX:F
    sub-float v3, v2, v5

    .line 3266
    .local v3, nOffsetX:F
    const/4 v7, 0x0

    cmpl-float v7, v7, v3

    if-nez v7, :cond_1

    .line 3267
    const/4 v7, 0x1

    .line 3304
    .end local v2           #nNext3DX:F
    .end local v3           #nOffsetX:F
    .end local v5           #nPrevious3DX:F
    :goto_0
    return v7

    .line 3270
    .restart local v2       #nNext3DX:F
    .restart local v3       #nOffsetX:F
    .restart local v5       #nPrevious3DX:F
    :cond_1
    iget-object v7, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    aget-object v7, v7, v8

    iget v7, v7, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    invoke-virtual {p0, v7, v3}, Lcom/htc/sunny/SPresentation;->getTimeSlotOffsetX(IF)I

    move-result v6

    .line 3272
    .local v6, nTimeSlotOffset:I
    const/4 v0, 0x0

    .line 3273
    .local v0, bLimitScroll:Z
    const/high16 v7, 0x3f80

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mItemScrollRatio:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_2

    .line 3274
    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gtz v7, :cond_4

    if-lez v6, :cond_4

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v7, :cond_4

    .line 3275
    const/4 v0, 0x1

    .line 3280
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 3281
    iget v7, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mItemScrollRatio:F

    mul-float/2addr v7, v8

    float-to-int v4, v7

    .line 3282
    .local v4, nOneItemLimitTimeSlot:I
    iget v7, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    add-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-lt v7, v4, :cond_3

    .line 3283
    if-lez v6, :cond_5

    .line 3284
    iget v7, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    sub-int v6, v4, v7

    .line 3291
    .end local v4           #nOneItemLimitTimeSlot:I
    :cond_3
    :goto_2
    if-nez v6, :cond_6

    .line 3292
    const/4 v7, 0x1

    goto :goto_0

    .line 3276
    :cond_4
    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_2

    if-gez v6, :cond_2

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v7, :cond_2

    .line 3277
    const/4 v0, 0x1

    goto :goto_1

    .line 3286
    .restart local v4       #nOneItemLimitTimeSlot:I
    :cond_5
    neg-int v7, v4

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    sub-int v6, v7, v8

    goto :goto_2

    .line 3295
    .end local v4           #nOneItemLimitTimeSlot:I
    :cond_6
    iget-object v7, p0, Lcom/htc/sunny/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny/SPresentation$ContainerHitFeedback;

    invoke-virtual {v7}, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->reset()V

    .line 3297
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 3299
    invoke-virtual {p0, v6}, Lcom/htc/sunny/SPresentation;->scrollByOffset(I)V

    .line 3301
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    .line 3304
    .end local v0           #bLimitScroll:Z
    .end local v2           #nNext3DX:F
    .end local v3           #nOffsetX:F
    .end local v5           #nPrevious3DX:F
    .end local v6           #nTimeSlotOffset:I
    :cond_7
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 3330
    const-string v1, "3DGlideMode"

    const-string v2, "[SPresentation] onShowPress()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3331
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3340
    :goto_0
    return-void

    .line 3335
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny/SPresentation;->getContainerId(II)I

    move-result v0

    .line 3336
    .local v0, nContainerId:I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_1

    .line 3337
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny/SPresentation$ContainerHitFeedback;

    invoke-virtual {v1, v0}, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->press(I)V

    .line 3339
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 3348
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3353
    :goto_0
    return v1

    .line 3352
    :cond_0
    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mIsSingleTapUp:Z

    goto :goto_0
.end method

.method public onUpW(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 3074
    iput v4, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    .line 3075
    iput v4, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    .line 3077
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny/SPresentation$ContainerHitFeedback;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->reset()V

    .line 3079
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->hasAnimation()Z

    move-result v1

    if-ne v3, v1, :cond_4

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    if-ne v3, v1, :cond_4

    .line 3085
    :cond_0
    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mIsSingleTapUp:Z

    if-ne v3, v1, :cond_7

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-nez v1, :cond_7

    .line 3086
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny/SPresentation;->getContainerId(II)I

    move-result v0

    .line 3087
    .local v0, nContainerId:I
    if-eq v4, v0, :cond_2

    .line 3088
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    if-ne v1, v2, :cond_5

    .line 3089
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    if-eqz v1, :cond_1

    .line 3090
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    invoke-interface {v1, v2}, Lcom/htc/sunny/SPresentation$PresentationListener;->onPresentationItemClick(I)V

    .line 3092
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->homing()V

    .line 3114
    .end local v0           #nContainerId:I
    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mIsSingleTapUp:Z

    .line 3116
    :cond_3
    :goto_1
    return-void

    .line 3081
    :cond_4
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledTouchEvent()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3094
    .restart local v0       #nContainerId:I
    :cond_5
    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    if-nez v1, :cond_6

    .line 3095
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->scrollToW(I)V

    goto :goto_0

    .line 3097
    :cond_6
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->homing()V

    goto :goto_0

    .line 3101
    .end local v0           #nContainerId:I
    :cond_7
    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v1, v2, :cond_8

    .line 3102
    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 3103
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->homing()V

    goto :goto_0

    .line 3104
    :cond_8
    const/4 v1, 0x3

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-eq v1, v2, :cond_2

    const/4 v1, 0x4

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-eq v1, v2, :cond_2

    .line 3106
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-nez v1, :cond_2

    .line 3107
    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 3108
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->homing()V

    goto :goto_0
.end method

.method protected openingAnimation()V
    .locals 10

    .prologue
    const v8, 0x3e4ccccd

    const/4 v9, 0x0

    .line 980
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    div-int/lit8 v4, v6, 0x2

    .line 981
    .local v4, nCenterPos:I
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v6, v4}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v2

    .line 982
    .local v2, focusLayout:Lcom/htc/sunny/SPresentationContainerLayout;
    new-instance v5, Lcom/htc/sunny/Vector3F;

    iget-object v6, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v6, v6, Lcom/htc/sunny/Vector3F;->mX:F

    add-float/2addr v6, v8

    iget-object v7, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v7, v7, Lcom/htc/sunny/Vector3F;->mY:F

    add-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/htc/sunny/Vector3F;-><init>(FFF)V

    .line 985
    .local v5, startScale:Lcom/htc/sunny/Vector3F;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge v3, v6, :cond_2

    .line 986
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v1, v6, v3

    .line 987
    .local v1, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-nez v1, :cond_0

    .line 985
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 989
    :cond_0
    iget-object v6, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v6, v6, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v7, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v7, v7, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v8, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v8, v8, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v1, v6, v7, v8}, Lcom/htc/sunny/SPresentation$ItemContainer;->setPosition(FFF)V

    .line 990
    invoke-virtual {v1, v9}, Lcom/htc/sunny/SPresentation$ItemContainer;->setAlpha(I)V

    .line 991
    iget-object v6, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v6, v6, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v7, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v7, v7, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v8, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v8, v8, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v1, v6, v7, v8}, Lcom/htc/sunny/SPresentation$ItemContainer;->setScale(FFF)V

    .line 992
    iget-object v6, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v6, v6, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v7, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v7, v7, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v8, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v8, v8, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v1, v6, v7, v8}, Lcom/htc/sunny/SPresentation$ItemContainer;->setRotation(FFF)V

    .line 994
    new-instance v0, Lcom/htc/sunny/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny/SAnimationController;-><init>()V

    .line 995
    .local v0, animationController:Lcom/htc/sunny/SAnimationController;
    if-ne v4, v3, :cond_1

    .line 996
    iget-object v6, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v5, v6}, Lcom/htc/sunny/SAnimationController;->setScaleAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V

    .line 997
    const/16 v6, 0xff

    invoke-virtual {v0, v9, v6}, Lcom/htc/sunny/SAnimationController;->setAlphaAnimation(II)V

    .line 998
    new-instance v6, Lcom/htc/sunny/SPresentation$3;

    invoke-direct {v6, p0}, Lcom/htc/sunny/SPresentation$3;-><init>(Lcom/htc/sunny/SPresentation;)V

    invoke-virtual {v0, v6}, Lcom/htc/sunny/SAnimationController;->setAnimationListener(Lcom/htc/sunny/SAnimationController$AnimationListener;)V

    .line 1016
    :goto_2
    const-wide/16 v6, 0x190

    invoke-virtual {v0, v6, v7}, Lcom/htc/sunny/SAnimationController;->setDuration(J)V

    .line 1017
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/htc/sunny/SAnimationController;->setFillAfter(Z)V

    .line 1018
    sget-object v6, Lcom/htc/sunny/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunny/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v6}, Lcom/htc/sunny/SAnimationController;->setInterpolator(Lcom/htc/sunny/SAnimationController$INTERPOLATOR;)V

    .line 1019
    invoke-virtual {v1, v0}, Lcom/htc/sunny/SPresentation$ItemContainer;->startAnimation(Lcom/htc/sunny/SAnimationController;)V

    goto :goto_1

    .line 1012
    :cond_1
    iget-object v6, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v5, v6}, Lcom/htc/sunny/SAnimationController;->setScaleAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V

    .line 1013
    invoke-virtual {v0, v9, v9}, Lcom/htc/sunny/SAnimationController;->setAlphaAnimation(II)V

    goto :goto_2

    .line 1021
    .end local v0           #animationController:Lcom/htc/sunny/SAnimationController;
    .end local v1           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_2
    return-void
.end method

.method protected openingAnimation2()V
    .locals 6

    .prologue
    .line 1029
    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v2

    .line 1031
    .local v2, focusLayout:Lcom/htc/sunny/SPresentationContainerLayout;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge v3, v4, :cond_1

    .line 1032
    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v1, v4, v3

    .line 1033
    .local v1, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    new-instance v0, Lcom/htc/sunny/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny/SAnimationController;-><init>()V

    .line 1034
    .local v0, animationController:Lcom/htc/sunny/SAnimationController;
    iget-object v4, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget-object v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny/SAnimationController;->setPositionAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V

    .line 1035
    iget-object v4, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget v4, v4, Lcom/htc/sunny/SPresentationContainerLayout;->mAlpha:I

    iget-object v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mAlpha:I

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny/SAnimationController;->setAlphaAnimation(II)V

    .line 1036
    iget-object v4, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget-object v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny/SAnimationController;->setRotationAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V

    .line 1037
    iget-object v4, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget-object v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny/SAnimationController;->setScaleAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V

    .line 1038
    sget-object v4, Lcom/htc/sunny/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunny/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v4}, Lcom/htc/sunny/SAnimationController;->setInterpolator(Lcom/htc/sunny/SAnimationController$INTERPOLATOR;)V

    .line 1039
    const-wide/16 v4, 0x2bc

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny/SAnimationController;->setDuration(J)V

    .line 1040
    if-nez v3, :cond_0

    .line 1041
    new-instance v4, Lcom/htc/sunny/SPresentation$4;

    invoke-direct {v4, p0}, Lcom/htc/sunny/SPresentation$4;-><init>(Lcom/htc/sunny/SPresentation;)V

    invoke-virtual {v0, v4}, Lcom/htc/sunny/SAnimationController;->setAnimationListener(Lcom/htc/sunny/SAnimationController$AnimationListener;)V

    .line 1054
    :cond_0
    invoke-virtual {v1, v0}, Lcom/htc/sunny/SPresentation$ItemContainer;->startAnimation(Lcom/htc/sunny/SAnimationController;)V

    .line 1031
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1056
    .end local v0           #animationController:Lcom/htc/sunny/SAnimationController;
    .end local v1           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_1
    return-void
.end method

.method public renderAndUpdate3D()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2919
    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->renderAndUpdate3D()V

    .line 2921
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->hasAnimation()Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 2922
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    packed-switch v0, :pswitch_data_0

    .line 2941
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny/SPresentation$ContainerHitFeedback;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->animate()V

    .line 2942
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mIsFirstRender:Z

    if-ne v1, v0, :cond_1

    .line 2944
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mIsFirstRender:Z

    .line 2945
    const-string v0, "3DGlideMode"

    const-string v1, "update and render"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    :cond_1
    return-void

    .line 2929
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onScrollAnimation()V

    .line 2930
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0

    .line 2933
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onRotateSelf()V

    .line 2934
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0

    .line 2922
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public rotateSelf(IZ)V
    .locals 1
    .parameter "nPosition"
    .parameter "bClockwise"

    .prologue
    .line 2269
    new-instance v0, Lcom/htc/sunny/SPresentation$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SPresentation$15;-><init>(Lcom/htc/sunny/SPresentation;IZ)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 2274
    return-void
.end method

.method protected rotateSelfW(IZ)V
    .locals 4
    .parameter "nPosition"
    .parameter "bClockwise"

    .prologue
    const/16 v2, 0x12

    const/4 v3, 0x0

    .line 2282
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2283
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2305
    :goto_0
    return-void

    .line 2287
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->getContainerByDataIndex(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v0

    .line 2288
    .local v0, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-nez v0, :cond_1

    .line 2289
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 2293
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 2295
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, v0, Lcom/htc/sunny/SPresentation$ItemContainer;->mID:I

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nArgs:I

    .line 2296
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->DURATION_ROTATE_SELF:I

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 2297
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v2, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    .line 2298
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    const/4 v2, 0x4

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    .line 2299
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2301
    iput-boolean p2, p0, Lcom/htc/sunny/SPresentation;->mRotateClockwise:Z

    .line 2302
    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    .line 2303
    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->enabledTouchEvent(Z)V

    .line 2304
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0
.end method

.method protected scrollByOffset(I)V
    .locals 1
    .parameter "nTimeSlotOffset"

    .prologue
    .line 1771
    if-lez p1, :cond_1

    .line 1772
    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 1776
    :cond_0
    :goto_0
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->moveToTimeSlot(I)V

    .line 1777
    return-void

    .line 1773
    :cond_1
    if-gez p1, :cond_0

    .line 1774
    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto :goto_0
.end method

.method public scrollTo(I)V
    .locals 1
    .parameter "nPos"

    .prologue
    .line 2038
    new-instance v0, Lcom/htc/sunny/SPresentation$13;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SPresentation$13;-><init>(Lcom/htc/sunny/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 2043
    return-void
.end method

.method public scrollToLeft()V
    .locals 1

    .prologue
    .line 1926
    new-instance v0, Lcom/htc/sunny/SPresentation$11;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SPresentation$11;-><init>(Lcom/htc/sunny/SPresentation;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1931
    return-void
.end method

.method protected scrollToLeftW()V
    .locals 3

    .prologue
    const/16 v2, 0x12

    .line 1938
    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v0, v1, :cond_0

    .line 1939
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 1971
    :goto_0
    return-void

    .line 1943
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1944
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 1948
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 1950
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    if-ne v0, v1, :cond_3

    .line 1951
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1952
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_NEXT:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1964
    :cond_2
    :goto_1
    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 1965
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v1, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    .line 1966
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    .line 1968
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 1970
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0

    .line 1954
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_4

    .line 1956
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    goto :goto_0

    .line 1958
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_2

    .line 1959
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    rem-int/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1960
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_NEXT:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    goto :goto_1
.end method

.method public scrollToRight()V
    .locals 1

    .prologue
    .line 1981
    new-instance v0, Lcom/htc/sunny/SPresentation$12;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SPresentation$12;-><init>(Lcom/htc/sunny/SPresentation;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1986
    return-void
.end method

.method protected scrollToRightW()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x12

    .line 1993
    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v0, v1, :cond_0

    .line 1994
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2028
    :goto_0
    return-void

    .line 1998
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1999
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 2003
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 2005
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    if-ne v0, v1, :cond_3

    .line 2006
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 2007
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_PREVIOUS:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 2008
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v3, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    .line 2009
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v3, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    .line 2021
    :cond_2
    :goto_1
    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 2022
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v1, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    .line 2023
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    .line 2025
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2027
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0

    .line 2011
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_4

    .line 2013
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 2015
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_2

    .line 2016
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    rem-int/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 2017
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_PREVIOUS:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    goto :goto_1
.end method

.method protected scrollToW(I)V
    .locals 9
    .parameter "nPos"

    .prologue
    const/16 v6, 0x12

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 2050
    const-string v3, "3DGlideMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scrollToW() + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    sub-int v0, p1, v3

    .line 2053
    .local v0, nOffset:I
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge p1, v3, :cond_0

    if-ltz p1, :cond_0

    if-nez v0, :cond_1

    .line 2056
    :cond_0
    invoke-virtual {p0, v6}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2057
    const-string v3, "3DGlideMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scrollToW() -1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    :goto_0
    return-void

    .line 2061
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2062
    invoke-virtual {p0, v6}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2063
    const-string v3, "3DGlideMode"

    const-string v4, "scrollToW() -2 disable animation"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2067
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->init(IIII)V

    .line 2069
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v4}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v4

    if-ne v3, v4, :cond_3

    .line 2070
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v3}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->getFirstUpdateIndex()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    .line 2071
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v3}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->getPosOffset()I

    move-result v0

    .line 2074
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 2075
    .local v1, nPosOffset:I
    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int v2, v1, v3

    .line 2077
    .local v2, nTimeSlotOffset:I
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v3}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 2079
    if-gez v0, :cond_9

    .line 2080
    sget-object v3, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 2081
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v3, :cond_7

    .line 2082
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    sub-int/2addr v4, v5

    add-int/lit8 v5, v1, -0x1

    iget v6, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 2100
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_TO:I

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 2102
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gtz v3, :cond_c

    sget-object v3, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v3, v4, :cond_c

    .line 2103
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v8, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 2107
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v4, v4, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v5, v5, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-virtual {p0, v4, v5}, Lcom/htc/sunny/SPresentation;->getRefineDuration(II)I

    move-result v4

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 2109
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v3, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-gtz v3, :cond_5

    .line 2110
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v7, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 2113
    :cond_5
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2115
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v3, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v3, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-nez v3, :cond_d

    .line 2116
    :cond_6
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    goto/16 :goto_0

    .line 2083
    :cond_7
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v3, :cond_8

    .line 2084
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v4, v2

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    .line 2086
    :cond_8
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v2, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    .line 2089
    :cond_9
    sget-object v3, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 2090
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v3, :cond_a

    .line 2091
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    .line 2092
    :cond_a
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v3, :cond_b

    .line 2093
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    .line 2095
    :cond_b
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v2, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    .line 2104
    :cond_c
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gt v3, v4, :cond_4

    sget-object v3, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v3, v4, :cond_4

    .line 2105
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v8, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    goto :goto_2

    .line 2120
    :cond_d
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v4, v4, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v5, v5, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 2121
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v4, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    .line 2122
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    const/4 v4, 0x2

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    .line 2124
    invoke-virtual {p0, v7}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    .line 2125
    invoke-virtual {p0, v7}, Lcom/htc/sunny/SPresentation;->enabledTouchEvent(Z)V

    .line 2127
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    .line 2128
    const-string v3, "3DGlideMode"

    const-string v4, "scrollToW() - "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setAdapter(Lcom/htc/sunny/SPresentationAdapterBase;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 1319
    new-instance v0, Lcom/htc/sunny/SPresentation$6;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SPresentation$6;-><init>(Lcom/htc/sunny/SPresentation;Lcom/htc/sunny/SPresentationAdapterBase;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1324
    return-void
.end method

.method protected setAdapterW(Lcom/htc/sunny/SPresentationAdapterBase;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 1332
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 1333
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    iget-object v1, p0, Lcom/htc/sunny/SAdapterView;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SPresentationAdapterBase;->unregisterDataSetObserver(Lcom/htc/sunny/SDataSetObserver;)V

    .line 1335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SAdapterView;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    .line 1337
    :cond_0
    iput-object p1, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    .line 1338
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-eqz v0, :cond_1

    .line 1339
    new-instance v0, Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;-><init>(Lcom/htc/sunny/SAdapterView;)V

    iput-object v0, p0, Lcom/htc/sunny/SAdapterView;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    .line 1340
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    iget-object v1, p0, Lcom/htc/sunny/SAdapterView;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SPresentationAdapterBase;->registerDataSetObserver(Lcom/htc/sunny/SDataSetObserver;)V

    .line 1343
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mPerformOpeningAnimation:Z

    .line 1345
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->initContainers()V

    .line 1347
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    .line 1348
    return-void
.end method

.method public setClipSize(IIII)V
    .locals 6
    .parameter "nLeft"
    .parameter "nTop"
    .parameter "nRight"
    .parameter "nBottom"

    .prologue
    .line 2375
    new-instance v0, Lcom/htc/sunny/SPresentation$16;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SPresentation$16;-><init>(Lcom/htc/sunny/SPresentation;IIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 2384
    return-void
.end method

.method public setEdgeItemScrollRatio(F)V
    .locals 3
    .parameter "nRatio"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 1119
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 1120
    iput v1, p0, Lcom/htc/sunny/SPresentation;->mItemScrollRatio:F

    .line 1126
    :goto_0
    return-void

    .line 1121
    :cond_0
    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    .line 1122
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mItemScrollRatio:F

    goto :goto_0

    .line 1124
    :cond_1
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mItemScrollRatio:F

    goto :goto_0
.end method

.method public setGradualReflection(ILcom/htc/sunny/Vector3F;)V
    .locals 1
    .parameter "nBitmapResId"
    .parameter "translation"

    .prologue
    .line 1218
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mGradualBmpResId:I

    .line 1219
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mGradualTranslation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, p2}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 1220
    return-void
.end method

.method public setGradualVisibility(Z)V
    .locals 1
    .parameter "bVisible"

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 1239
    :goto_0
    return-void

    .line 1229
    :cond_0
    new-instance v0, Lcom/htc/sunny/SPresentation$5;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SPresentation$5;-><init>(Lcom/htc/sunny/SPresentation;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setItemShadow(IIIII)V
    .locals 7
    .parameter "nPressResId"
    .parameter "nPosX"
    .parameter "nPosY"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 938
    new-instance v0, Lcom/htc/sunny/SPresentation$1;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/htc/sunny/SPresentation$1;-><init>(Lcom/htc/sunny/SPresentation;IIIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 949
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/htc/sunny/SPresentation$OnItemLongClickListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/htc/sunny/SPresentation;->mItemLongClickListener:Lcom/htc/sunny/SPresentation$OnItemLongClickListener;

    .line 1362
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemLongClickListener:Lcom/htc/sunny/SPresentation$OnItemLongClickListener;

    if-nez v0, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 1367
    :goto_0
    return-void

    .line 1365
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    goto :goto_0
.end method

.method public setPresentationListener(Lcom/htc/sunny/SPresentation$PresentationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1378
    iput-object p1, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    .line 1379
    return-void
.end method

.method public setReflectionColor(III)V
    .locals 1
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 956
    new-instance v0, Lcom/htc/sunny/SPresentation$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/sunny/SPresentation$2;-><init>(Lcom/htc/sunny/SPresentation;III)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 972
    return-void
.end method

.method public setReflectionGap(I)V
    .locals 0
    .parameter "nGap"

    .prologue
    .line 1106
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mReflectionGap:I

    .line 1107
    return-void
.end method

.method public setReflectionHeight(I)V
    .locals 0
    .parameter "nReflectionHeight"

    .prologue
    .line 1093
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mReflectionHeight:I

    .line 1094
    return-void
.end method

.method public setSelection(IZ)V
    .locals 3
    .parameter "nUIPos"
    .parameter "bAnimated"

    .prologue
    .line 1489
    const-string v0, "3DGlideMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelection()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    new-instance v0, Lcom/htc/sunny/SPresentation$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SPresentation$10;-><init>(Lcom/htc/sunny/SPresentation;IZ)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1495
    return-void
.end method

.method protected setSelectionW(IZ)V
    .locals 9
    .parameter "position"
    .parameter "bAnimated"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1502
    const-string v4, "3DGlideMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSelectionW() + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    if-ltz p1, :cond_0

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge p1, v4, :cond_0

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-ne v4, p1, :cond_1

    .line 1504
    :cond_0
    const-string v4, "3DGlideMode"

    const-string v5, "setSelectionW() -1"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    :goto_0
    return-void

    .line 1508
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1509
    const/4 p2, 0x0

    .line 1513
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->getContainerByDataIndex(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v3

    .line 1514
    .local v3, itemContainer:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-ne v7, p2, :cond_3

    iget-boolean v4, p0, Lcom/htc/sunny/SPresentation;->mDataUpdated:Z

    if-ne v7, v4, :cond_3

    if-eqz v3, :cond_3

    iget-boolean v4, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    if-nez v4, :cond_3

    .line 1515
    const-string v4, "3DGlideMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSelectionW() -2 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    iget v4, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {p0, v4}, Lcom/htc/sunny/SPresentation;->scrollToW(I)V

    goto :goto_0

    .line 1520
    :cond_3
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    .line 1521
    sget-object v4, Lcom/htc/sunny/SPresentation$DIRECTION;->D_UNKNOWN:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v4, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 1523
    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/htc/sunny/SPresentation;->mDataUpdated:Z

    if-ne v7, v4, :cond_8

    .line 1524
    const/4 v2, -0x1

    .line 1525
    .local v2, dataIndex:I
    const/4 v0, 0x0

    .local v0, cid:I
    :goto_1
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge v0, v4, :cond_7

    .line 1526
    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v1

    .line 1527
    .local v1, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-nez v1, :cond_4

    .line 1525
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1529
    :cond_4
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    add-int v2, v4, p1

    .line 1531
    if-ltz v2, :cond_5

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v2, v4, :cond_6

    .line 1532
    :cond_5
    iput-boolean v7, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    .line 1533
    const/4 v4, -0x1

    iput v4, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    goto :goto_2

    .line 1535
    :cond_6
    iput-boolean v8, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    .line 1536
    iput v2, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    goto :goto_2

    .line 1540
    .end local v1           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_7
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateAllContainersData()V

    .line 1543
    .end local v0           #cid:I
    .end local v2           #dataIndex:I
    :cond_8
    invoke-virtual {p0, v8}, Lcom/htc/sunny/SPresentation;->moveToTimeSlot(I)V

    .line 1544
    invoke-virtual {p0, v7}, Lcom/htc/sunny/SPresentation;->updateContainersOrder(Z)V

    .line 1546
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->notifySelectionChange(I)V

    .line 1547
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    .line 1548
    const-string v4, "3DGlideMode"

    const-string v5, "setSelectionW() -3"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setShiftOneItemMode(Z)V
    .locals 0
    .parameter "bEnabled"

    .prologue
    .line 3167
    iput-boolean p1, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    .line 3168
    return-void
.end method

.method public stopAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x12

    .line 3533
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->hasAnimation()Z

    move-result v0

    if-ne v3, v0, :cond_0

    .line 3535
    const/4 v0, 0x3

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_1

    .line 3536
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 3537
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 3538
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 3558
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    .line 3559
    return-void

    .line 3539
    :cond_1
    const/4 v0, 0x5

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_2

    .line 3540
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 3541
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 3542
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 3543
    :cond_2
    const/4 v0, 0x7

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_3

    .line 3544
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 3545
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 3546
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 3547
    :cond_3
    const/16 v0, 0x9

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_4

    .line 3548
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 3549
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 3550
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 3551
    :cond_4
    const/16 v0, 0xb

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_0

    .line 3552
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 3553
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 3554
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0
.end method

.method protected updateAllContainersData()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 2494
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v6, :cond_1

    .line 2518
    :cond_0
    :goto_0
    return-void

    .line 2496
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_8

    aget-object v3, v0, v4

    .line 2497
    .local v3, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-nez v3, :cond_2

    .line 2496
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2499
    :cond_2
    iget v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    if-ltz v6, :cond_6

    iget v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    iget v9, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge v6, v9, :cond_6

    .line 2500
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    iget v9, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {v6, v9}, Lcom/htc/sunny/SPresentationAdapterBase;->getItemBitmap(I)Lcom/htc/sunny/SBitmap;

    move-result-object v1

    .line 2501
    .local v1, bmp:Lcom/htc/sunny/SBitmap;
    if-eqz v1, :cond_4

    .line 2502
    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->cloneSBitmap()Lcom/htc/sunny/SBitmap;

    move-result-object v2

    .line 2503
    .local v2, bmpClone:Lcom/htc/sunny/SBitmap;
    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_3

    .line 2504
    iget-object v6, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v9, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageTexture:I

    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 2506
    :cond_3
    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->releaseClone()V

    .line 2508
    .end local v2           #bmpClone:Lcom/htc/sunny/SBitmap;
    :cond_4
    iput-boolean v7, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    .line 2513
    .end local v1           #bmp:Lcom/htc/sunny/SBitmap;
    :goto_3
    iget-object v9, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-boolean v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v6, :cond_5

    iget-boolean v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v6, :cond_7

    :cond_5
    move v6, v8

    :goto_4
    invoke-virtual {p0, v3, v9, v6}, Lcom/htc/sunny/SPresentation;->updateContainerLayout(Lcom/htc/sunny/SPresentation$ItemContainer;Lcom/htc/sunny/SPresentationContainerLayout;Z)V

    goto :goto_2

    .line 2510
    :cond_6
    iput-boolean v8, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    .line 2511
    const/4 v6, -0x1

    iput v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    goto :goto_3

    :cond_7
    move v6, v7

    .line 2513
    goto :goto_4

    .line 2516
    .end local v3           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_8
    iput-boolean v8, p0, Lcom/htc/sunny/SPresentation;->mIsFirstRender:Z

    .line 2517
    iput-boolean v8, p0, Lcom/htc/sunny/SPresentation;->mDataUpdated:Z

    goto :goto_0
.end method

.method public updateAllContainersLayout()V
    .locals 1

    .prologue
    .line 2525
    new-instance v0, Lcom/htc/sunny/SPresentation$17;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SPresentation$17;-><init>(Lcom/htc/sunny/SPresentation;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 2539
    return-void
.end method

.method protected updateBouncingState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2601
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v0, v1, :cond_1

    .line 2602
    :cond_0
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    .line 2610
    :goto_0
    return-void

    .line 2603
    :cond_1
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v0, :cond_2

    .line 2604
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    goto :goto_0

    .line 2605
    :cond_2
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v0, :cond_3

    .line 2606
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    goto :goto_0

    .line 2608
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    goto :goto_0
.end method

.method protected updateContainerLayout(Lcom/htc/sunny/SPresentation$ItemContainer;Lcom/htc/sunny/SPresentationContainerLayout;Z)V
    .locals 6
    .parameter "container"
    .parameter "layout"
    .parameter "bForceHidden"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3566
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_1

    .line 3585
    :cond_0
    :goto_0
    return-void

    .line 3567
    :cond_1
    iget-object v0, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v0, v0, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v1, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v1, v1, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v2, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v2, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/sunny/SPresentation$ItemContainer;->setPosition(FFF)V

    .line 3569
    iget-object v0, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v0, v0, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v1, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v1, v1, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v2, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v2, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/sunny/SPresentation$ItemContainer;->setRotation(FFF)V

    .line 3570
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p1, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    const/high16 v2, 0x4334

    iget-object v3, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v3, v3, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/htc/sunny/SunnyEngine;->setNodeRotate(IFFF)V

    .line 3572
    iget-object v0, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v0, v0, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v1, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v1, v1, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v2, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v2, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/sunny/SPresentation$ItemContainer;->setScale(FFF)V

    .line 3574
    if-ne v5, p3, :cond_2

    .line 3575
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/sunny/SPresentation$ItemContainer;->setVisibility(Z)V

    .line 3579
    :goto_1
    iget v0, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mAlpha:I

    invoke-virtual {p1, v0}, Lcom/htc/sunny/SPresentation$ItemContainer;->setAlpha(I)V

    .line 3581
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mPerformOpeningAnimation:Z

    if-ne v5, v0, :cond_0

    .line 3582
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateViewLayout()V

    goto :goto_0

    .line 3577
    :cond_2
    iget-boolean v0, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mVisible:Z

    invoke-virtual {p1, v0}, Lcom/htc/sunny/SPresentation$ItemContainer;->setVisibility(Z)V

    goto :goto_1
.end method

.method protected updateContainerLayoutPos(Lcom/htc/sunny/SPresentation$DIRECTION;)V
    .locals 4
    .parameter "eNextDirection"

    .prologue
    .line 2478
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne p1, v1, :cond_0

    .line 2479
    const/4 v0, 0x0

    .local v0, cid:I
    :goto_0
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge v0, v1, :cond_1

    .line 2480
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    rem-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    .line 2479
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2482
    .end local v0           #cid:I
    :cond_0
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne p1, v1, :cond_1

    .line 2483
    const/4 v0, 0x0

    .restart local v0       #cid:I
    :goto_1
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge v0, v1, :cond_1

    .line 2484
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    rem-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    .line 2483
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2487
    .end local v0           #cid:I
    :cond_1
    return-void
.end method

.method protected updateContainersOrder()V
    .locals 10

    .prologue
    .line 1745
    iget-object v6, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v6, :cond_1

    .line 1764
    :cond_0
    return-void

    .line 1747
    :cond_1
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v6, v6, -0x1

    div-int/lit8 v4, v6, 0x2

    .line 1748
    .local v4, nCenterPos:I
    iget v6, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    div-int/lit8 v5, v6, 0x2

    .line 1749
    .local v5, nHalfTimeSlot:I
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v5, :cond_2

    .line 1750
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1751
    .local v1, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    iget-object v6, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v7, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    iget v9, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/htc/sunny/SunnyEngine;->setNodeOrder(II)V

    .line 1750
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1753
    .end local v0           #arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    .end local v1           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_3

    .line 1754
    add-int/lit8 v4, v4, -0x1

    .line 1755
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .restart local v0       #arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1756
    .restart local v1       #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    iget-object v6, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v7, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    iget v9, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/htc/sunny/SunnyEngine;->setNodeOrder(II)V

    .line 1755
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1758
    .end local v0           #arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    .end local v1           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_3
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_0

    .line 1759
    add-int/lit8 v4, v4, 0x1

    .line 1760
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .restart local v0       #arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1761
    .restart local v1       #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    iget-object v6, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v7, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    iget v9, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/htc/sunny/SunnyEngine;->setNodeOrder(II)V

    .line 1760
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method protected updateContainersOrder(Z)V
    .locals 3
    .parameter "bForce"

    .prologue
    .line 1717
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-nez v1, :cond_1

    .line 1738
    :cond_0
    :goto_0
    return-void

    .line 1719
    :cond_1
    const/4 v0, 0x0

    .line 1721
    .local v0, nRegion:I
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL_HALF:I

    if-gt v1, v2, :cond_2

    .line 1722
    const/4 v0, 0x1

    .line 1727
    :goto_1
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mReorderRegion:I

    if-eq v0, v1, :cond_3

    .line 1728
    iput v0, p0, Lcom/htc/sunny/SPresentation;->mReorderRegion:I

    .line 1729
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iput v1, p0, Lcom/htc/sunny/SPresentation;->mReorderItem:I

    .line 1730
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateContainersOrder()V

    goto :goto_0

    .line 1724
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 1731
    :cond_3
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mReorderItem:I

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-eq v1, v2, :cond_4

    .line 1732
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iput v1, p0, Lcom/htc/sunny/SPresentation;->mReorderItem:I

    .line 1733
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateContainersOrder()V

    goto :goto_0

    .line 1734
    :cond_4
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 1735
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateContainersOrder()V

    goto :goto_0
.end method

.method protected updateNewContainer(Lcom/htc/sunny/SPresentation$DIRECTION;)V
    .locals 10
    .parameter "eNextDirection"

    .prologue
    const/4 v9, 0x1

    .line 2416
    const/4 v4, -0x1

    .line 2418
    .local v4, nLayoutPos:I
    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v6, p1, :cond_1

    .line 2419
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v6, -0x1

    .line 2426
    :goto_0
    invoke-virtual {p0, v4}, Lcom/htc/sunny/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v3

    .line 2427
    .local v3, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-nez v3, :cond_2

    .line 2471
    .end local v3           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_0
    :goto_1
    return-void

    .line 2420
    :cond_1
    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v6, p1, :cond_0

    .line 2421
    const/4 v4, 0x0

    goto :goto_0

    .line 2429
    .restart local v3       #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_2
    const/4 v5, -0x1

    .line 2431
    .local v5, nNewDataIndex:I
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v6}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v6

    if-ne v9, v6, :cond_7

    .line 2432
    iget v5, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    .line 2433
    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v6, p1, :cond_6

    .line 2434
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    .line 2442
    :cond_3
    :goto_2
    if-ltz v5, :cond_4

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v5, v6, :cond_8

    .line 2443
    :cond_4
    iput-boolean v9, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    .line 2444
    const/4 v6, -0x1

    iput v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    .line 2453
    :goto_3
    iget v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    if-eq v6, v5, :cond_0

    .line 2454
    iput v5, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    .line 2455
    if-ltz v5, :cond_0

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge v5, v6, :cond_0

    .line 2456
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v6, v5}, Lcom/htc/sunny/SPresentationAdapterBase;->getItemBitmap(I)Lcom/htc/sunny/SBitmap;

    move-result-object v1

    .line 2457
    .local v1, bmp:Lcom/htc/sunny/SBitmap;
    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-eqz v6, :cond_0

    .line 2458
    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->cloneSBitmap()Lcom/htc/sunny/SBitmap;

    move-result-object v2

    .line 2459
    .local v2, bmpClone:Lcom/htc/sunny/SBitmap;
    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_5

    .line 2460
    iget-object v6, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v7, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageTexture:I

    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    move-result v0

    .line 2461
    .local v0, bRes:Z
    iput-boolean v9, p0, Lcom/htc/sunny/SPresentation;->mIsFirstRender:Z

    .line 2462
    if-nez v0, :cond_5

    .line 2463
    const-string v6, "3DGlideMode"

    const-string v7, "[SPresentation] updateNewContainer() fail to set texture"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    .end local v0           #bRes:Z
    :cond_5
    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->releaseClone()V

    goto :goto_1

    .line 2435
    .end local v1           #bmp:Lcom/htc/sunny/SBitmap;
    .end local v2           #bmpClone:Lcom/htc/sunny/SBitmap;
    :cond_6
    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v6, p1, :cond_3

    .line 2436
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    goto :goto_2

    .line 2439
    :cond_7
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v6, v6, -0x1

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v4, v6

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int v5, v6, v7

    goto :goto_2

    .line 2446
    :cond_8
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v6}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v6

    if-ne v9, v6, :cond_9

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v6, v5}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->isForceHidden(I)Z

    move-result v6

    if-ne v9, v6, :cond_9

    .line 2447
    iput-boolean v9, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    goto :goto_3

    .line 2449
    :cond_9
    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    goto :goto_3
.end method

.method protected updateViewLayout()V
    .locals 11

    .prologue
    .line 2392
    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->updateViewLayout()V

    .line 2394
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 2409
    :goto_0
    return-void

    .line 2396
    :cond_0
    const/4 v6, 0x0

    .local v6, nOffsetX:I
    const/4 v7, 0x0

    .line 2397
    .local v7, nOffsetY:I
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->isFillAfter()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2398
    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v1}, Lcom/htc/sunny/SAnimationController;->isPositionAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_2

    .line 2399
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->getCurrentPosition()Lcom/htc/sunny/Vector3F;

    move-result-object v8

    .line 2400
    .local v8, v:Lcom/htc/sunny/Vector3F;
    iget v0, v8, Lcom/htc/sunny/Vector3F;->mX:F

    float-to-int v6, v0

    .line 2401
    iget v0, v8, Lcom/htc/sunny/Vector3F;->mY:F

    float-to-int v7, v0

    .line 2408
    .end local v8           #v:Lcom/htc/sunny/Vector3F;
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mClipSizeL:I

    add-int/2addr v2, v6

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mClipSizeT:I

    sub-int/2addr v3, v7

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mViewWidth:I

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mClipSizeL:I

    iget v9, p0, Lcom/htc/sunny/SPresentation;->mClipSizeR:I

    add-int/2addr v5, v9

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mViewHeight:I

    iget v9, p0, Lcom/htc/sunny/SPresentation;->mClipSizeT:I

    iget v10, p0, Lcom/htc/sunny/SPresentation;->mClipSizeB:I

    add-int/2addr v9, v10

    sub-int/2addr v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny/SunnyEngine;->setClipArea(IIIII)V

    goto :goto_0

    .line 2404
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v0, v0, Lcom/htc/sunny/Vector3F;->mX:F

    float-to-int v6, v0

    .line 2405
    iget-object v0, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v0, v0, Lcom/htc/sunny/Vector3F;->mY:F

    float-to-int v7, v0

    goto :goto_1
.end method
