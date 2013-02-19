.class public Lcom/htc/widget/CarouselActivity;
.super Landroid/app/ActivityGroup;
.source "CarouselActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;,
        Lcom/htc/widget/CarouselActivity$CubeSurfaceView;
    }
.end annotation


# static fields
.field static final CHECK_TASK_EXISTENCE:I = 0x386

.field private static final DEFAULT_FEATURES:I = 0x2

.field static final DELETE_ONE_TAB:I = 0x4b0

.field public static final FEATURE_CUSTOM_TITLE:I = 0x4

.field private static final FEATURE_EMPTY_CONTENT:I = 0x1

.field public static final FEATURE_NO_EDITOR:I = 0x8

.field public static final FEATURE_NO_TITLE:I = 0x2

.field static final INSERT_POOL_TASK:I = 0x44d

.field static final INSERT_WIDGET_TASK:I = 0x44c

.field static final LOCAL_LOGV:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "CarouselActivity"

.field static final MODE_ACTIVITY:I = 0x3e9

.field static final MODE_EDITOR:I = 0x3ea

.field public static final NO_UPDATE_REQUIRED:I = 0x3f0

.field static final TOKEN_BIN:I = 0x384

.field static final TOKEN_GALLERY:I = 0x385

.field static final TOKEN_REORD_GALLERY:I = 0x3e8

.field static final TOKEN_UPDATE_BIN:I = 0x3e9

.field static final TOKEN_UPDATE_GALLERY:I = 0x3ea

.field public static final UPDATE_COUNT_TEXT:I = 0x3eb

.field public static final UPDATE_COUNT_TEXT_VISIBLE:I = 0x3ec

.field static final UPDATE_TASK_INFO_POOL:I = 0x3ed

.field static final UPDATE_TASK_INFO_WIDGET:I = 0x3ee

.field public static final UPDATE_TASK_NAME:I = 0x3ef

.field static final disableLandscape:Z = true


# instance fields
.field private final animDuration:I

.field private cubeSurfaceView:Landroid/view/SurfaceView;

.field private display:Landroid/view/Display;

.field eresources:Landroid/content/res/Resources;

.field private isPortrait:Z

.field private final mAuthority:Ljava/lang/String;

.field private mBinGridView:Lcom/htc/widget/BinGridView;

.field private mCarouselHost:Lcom/htc/widget/CarouselHost;

.field private mDefaultTab:Ljava/lang/String;

.field private mDefaultTabIndex:I

.field private mDragLayer:Lcom/htc/widget/CarouselHost;

.field private mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

.field private mDrawerStatusListener:Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;

.field private mFeatures:I

.field mGID:Ljava/lang/String;

.field mGalleryAdapter:Lcom/htc/widget/BinAdapter;

.field private mGalleryWidget:Lcom/htc/widget/CarouselWidget;

.field mGridAdapter:Lcom/htc/widget/BinAdapter;

.field private mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

.field private mInflater:Landroid/view/LayoutInflater;

.field mIsDestroy:Z

.field private mIsProviderAp:Z

.field private mIsStartQueryCalled:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMemoryMode:Z

.field private final mModel:Lcom/htc/widget/CarouselModel;

.field private mRestoring:Z

.field private mStateMode:I

.field private mTaskUri:Landroid/net/Uri;

.field private mTransactionCounter:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "authority"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 221
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 144
    iput-object v2, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTab:Ljava/lang/String;

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTabIndex:I

    .line 147
    iput-boolean v1, p0, Lcom/htc/widget/CarouselActivity;->mRestoring:Z

    .line 152
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGID:Ljava/lang/String;

    .line 156
    iput-boolean v3, p0, Lcom/htc/widget/CarouselActivity;->mMemoryMode:Z

    .line 182
    iput-object v2, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    .line 183
    iput-object v2, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    .line 184
    iput-object v2, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    .line 185
    iput-object v2, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    .line 188
    iput-object v2, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    .line 189
    iput-object v2, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    .line 192
    iput-object v2, p0, Lcom/htc/widget/CarouselActivity;->eresources:Landroid/content/res/Resources;

    .line 196
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/htc/widget/CarouselActivity;->mStateMode:I

    .line 206
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    .line 215
    iput-boolean v3, p0, Lcom/htc/widget/CarouselActivity;->mIsDestroy:Z

    .line 562
    iput-object v2, p0, Lcom/htc/widget/CarouselActivity;->cubeSurfaceView:Landroid/view/SurfaceView;

    .line 964
    iput v3, p0, Lcom/htc/widget/CarouselActivity;->mTransactionCounter:I

    .line 1021
    iput-boolean v1, p0, Lcom/htc/widget/CarouselActivity;->isPortrait:Z

    .line 1023
    iput-object v2, p0, Lcom/htc/widget/CarouselActivity;->display:Landroid/view/Display;

    .line 1035
    const/16 v0, 0x12c

    iput v0, p0, Lcom/htc/widget/CarouselActivity;->animDuration:I

    .line 222
    new-instance v0, Lcom/htc/widget/CarouselModel;

    invoke-direct {v0, p0}, Lcom/htc/widget/CarouselModel;-><init>(Lcom/htc/widget/CarouselActivity;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    .line 223
    iput-object p1, p0, Lcom/htc/widget/CarouselActivity;->mAuthority:Ljava/lang/String;

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tasks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mTaskUri:Landroid/net/Uri;

    .line 225
    iput-boolean v3, p0, Lcom/htc/widget/CarouselActivity;->mMemoryMode:Z

    .line 226
    new-instance v0, Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;-><init>(Lcom/htc/widget/CarouselActivity;Lcom/htc/widget/CarouselActivity$1;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawerStatusListener:Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;

    .line 227
    iput-boolean v3, p0, Lcom/htc/widget/CarouselActivity;->mIsStartQueryCalled:Z

    .line 228
    return-void
.end method

.method private addSlidingDrawer()V
    .locals 7

    .prologue
    .line 232
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v3}, Lcom/htc/widget/CarouselHost;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 235
    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v3, v1}, Lcom/htc/widget/CarouselHost;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 236
    .local v0, child:Landroid/view/View;
    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v3, v0}, Lcom/htc/widget/CarouselHost;->removeView(Landroid/view/View;)V

    .line 237
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    instance-of v3, v0, Lcom/htc/widget/CarouselWidget;

    if-eqz v3, :cond_1

    .line 239
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/CarouselActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 240
    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x2090014

    iget-object v5, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 244
    .end local v0           #child:Landroid/view/View;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 245
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 246
    .restart local v0       #child:Landroid/view/View;
    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v3, v0}, Lcom/htc/widget/CarouselHost;->addView(Landroid/view/View;)V

    .line 244
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 234
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 248
    .end local v0           #child:Landroid/view/View;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 249
    return-void
.end method

.method private ensureCarouselHost()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 567
    const-string v0, "CarouselActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ensureCarouselHost() mTaskUri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mTaskUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    if-nez v0, :cond_0

    .line 574
    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const v0, 0x2090018

    :goto_0
    invoke-super {p0, v0}, Landroid/app/ActivityGroup;->setContentView(I)V

    .line 580
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselHost;

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    .line 584
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/htc/widget/CarouselHost;->enableCustomView(Z)V

    .line 587
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->cubeSurfaceView:Landroid/view/SurfaceView;

    if-nez v0, :cond_1

    .line 589
    new-instance v0, Lcom/htc/widget/CarouselActivity$CubeSurfaceView;

    invoke-direct {v0, p0, p0}, Lcom/htc/widget/CarouselActivity$CubeSurfaceView;-><init>(Lcom/htc/widget/CarouselActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->cubeSurfaceView:Landroid/view/SurfaceView;

    .line 591
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->cubeSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 592
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->cubeSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->cubeSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 597
    :cond_1
    return-void

    .line 574
    :cond_2
    const v0, 0x2090016

    goto :goto_0

    .line 584
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private hideCarousel()V
    .locals 11

    .prologue
    const/high16 v3, 0x3f80

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1063
    iget-object v4, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v4}, Lcom/htc/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v4}, Lcom/htc/widget/CarouselWidget;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1065
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->setOrientation()V

    .line 1066
    iget-object v4, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/htc/widget/CarouselWidget;->setVisibility(I)V

    .line 1070
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1071
    .local v9, animation1:Landroid/view/animation/Animation;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-boolean v4, p0, Lcom/htc/widget/CarouselActivity;->isPortrait:Z

    if-eqz v4, :cond_1

    move v4, v2

    :goto_0
    iget-boolean v5, p0, Lcom/htc/widget/CarouselActivity;->isPortrait:Z

    if-eqz v5, :cond_2

    move v8, v3

    :goto_1
    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1077
    .local v0, animation2:Landroid/view/animation/Animation;
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1078
    .local v10, animationset:Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1079
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1080
    const-wide/16 v1, 0x12c

    invoke-virtual {v10, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1081
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v1, v10}, Lcom/htc/widget/CarouselWidget;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1083
    .end local v0           #animation2:Landroid/view/animation/Animation;
    .end local v9           #animation1:Landroid/view/animation/Animation;
    .end local v10           #animationset:Landroid/view/animation/AnimationSet;
    :cond_0
    return-void

    .restart local v9       #animation1:Landroid/view/animation/Animation;
    :cond_1
    move v4, v3

    .line 1071
    goto :goto_0

    :cond_2
    move v8, v2

    goto :goto_1
.end method

.method private hideCarouselWithDialog()V
    .locals 3

    .prologue
    .line 1087
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->hideCarousel()V

    .line 1088
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x20400bf

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20400c0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x2040151

    new-instance v2, Lcom/htc/widget/CarouselActivity$1;

    invoke-direct {v2, p0}, Lcom/htc/widget/CarouselActivity$1;-><init>(Lcom/htc/widget/CarouselActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 1097
    return-void
.end method

.method private initalPoolNWidget()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const v2, 0x2090011

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 252
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    .line 253
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 255
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->addSlidingDrawer()V

    .line 257
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselHost;

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    .line 260
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->eresources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->eresources:Landroid/content/res/Resources;

    iput-object v1, v0, Lcom/htc/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    .line 265
    :cond_0
    const v0, 0x2020064

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinGridView;

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    .line 266
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselWidget;

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    .line 267
    const v0, 0x2020063

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselSlidingDrawer;

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    .line 269
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    iput-object p0, v0, Lcom/htc/widget/CarouselSlidingDrawer;->carousel:Lcom/htc/widget/CarouselActivity;

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0, p0}, Lcom/htc/widget/CarouselModel;->getHandler(Landroid/content/Context;)Lcom/htc/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    .line 273
    new-instance v0, Lcom/htc/widget/BinAdapter;

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mTaskUri:Landroid/net/Uri;

    new-array v5, v10, [Ljava/lang/String;

    new-array v6, v10, [I

    iget-object v7, p0, Lcom/htc/widget/CarouselActivity;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/BinAdapter;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/content/NotifyingAsyncQueryHandler;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    .line 277
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->eresources:Landroid/content/res/Resources;

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->eresources:Landroid/content/res/Resources;

    iput-object v1, v0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0, v1}, Lcom/htc/widget/BinGridView;->setDragger(Lcom/htc/widget/DragController;)V

    .line 284
    new-instance v0, Lcom/htc/widget/BinAdapter;

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mTaskUri:Landroid/net/Uri;

    new-array v5, v10, [Ljava/lang/String;

    new-array v6, v10, [I

    iget-object v7, p0, Lcom/htc/widget/CarouselActivity;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    iget-object v8, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/htc/widget/BinAdapter;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/content/NotifyingAsyncQueryHandler;Lcom/htc/widget/CarouselModel;I)V

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    .line 288
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->eresources:Landroid/content/res/Resources;

    if-eqz v0, :cond_3

    .line 290
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->eresources:Landroid/content/res/Resources;

    iput-object v1, v0, Lcom/htc/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    .line 293
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselWidget;->setDragger(Lcom/htc/widget/DragController;)V

    .line 294
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselWidget;->setDrawer(Lcom/htc/widget/CarouselSlidingDrawer;)V

    .line 296
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/BinGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 297
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselWidget;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 299
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawerStatusListener:Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselSlidingDrawer;->setOnDrawerOpenListener(Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerOpenListener;)V

    .line 300
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawerStatusListener:Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselSlidingDrawer;->setOnDrawerCloseListener(Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerCloseListener;)V

    .line 301
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawerStatusListener:Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselSlidingDrawer;->setOnDrawerScrollListener(Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerScrollListener;)V

    .line 302
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawerStatusListener:Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselSlidingDrawer;->setOnEditModeDrawerStateListener(Lcom/htc/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;)V

    .line 304
    const v0, 0x20401d2

    invoke-direct {p0, v0}, Lcom/htc/widget/CarouselActivity;->setDrawerTitle(I)V

    .line 306
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->initLayout()V

    .line 312
    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 313
    invoke-virtual {p0, v9}, Lcom/htc/widget/CarouselActivity;->setMemoryMode(Z)V

    .line 314
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    invoke-virtual {v0, v9}, Lcom/htc/content/NotifyingAsyncQueryHandler;->setNoEditorMode(Z)V

    .line 319
    :goto_0
    return-void

    .line 316
    :cond_4
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0, v9}, Lcom/htc/widget/CarouselWidget;->setEditorMode(Z)V

    .line 317
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    invoke-virtual {v0, v10}, Lcom/htc/content/NotifyingAsyncQueryHandler;->setNoEditorMode(Z)V

    goto :goto_0
.end method

.method private onCarouselCheck()V
    .locals 2

    .prologue
    .line 533
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselHost;

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    .line 536
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->eresources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->eresources:Landroid/content/res/Resources;

    iput-object v1, v0, Lcom/htc/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    if-nez v0, :cond_1

    .line 543
    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/widget/CarouselActivity;->printViewTree(Landroid/view/ViewGroup;I)V

    .line 545
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a CarouselHost whose id attribute is \'android.R.id.tabhost\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 551
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    iget-boolean v1, p0, Lcom/htc/widget/CarouselActivity;->mIsProviderAp:Z

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselHost;->setIsProviderAp(Z)V

    .line 552
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0, p0}, Lcom/htc/widget/CarouselHost;->setCarousel(Lcom/htc/widget/CarouselActivity;)V

    .line 555
    iget-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mIsProviderAp:Z

    if-nez v0, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselActivity;->requestCarouselFeature(I)Z

    .line 558
    :cond_2
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->initalPoolNWidget()V

    .line 559
    return-void
.end method

.method private printViewTree(Landroid/view/ViewGroup;I)V
    .locals 6
    .parameter "container"
    .parameter "level"

    .prologue
    .line 518
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 520
    .local v1, count:I
    const-string v3, "CarouselTraceView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 522
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 523
    .local v0, child:Landroid/view/View;
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 524
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #child:Landroid/view/View;
    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v0, v3}, Lcom/htc/widget/CarouselActivity;->printViewTree(Landroid/view/ViewGroup;I)V

    .line 521
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 526
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    const-string v3, "CarouselTraceView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 530
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private setDrawerTitle(I)V
    .locals 2
    .parameter "titleId"

    .prologue
    .line 721
    const v1, 0x2020065

    invoke-virtual {p0, v1}, Lcom/htc/widget/CarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 722
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 723
    return-void
.end method

.method private setOrientation()V
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->display:Landroid/view/Display;

    if-nez v0, :cond_0

    .line 1028
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->display:Landroid/view/Display;

    .line 1030
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->isPortrait:Z

    .line 1033
    return-void
.end method

.method private setTipInDB()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 694
    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 695
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mTaskUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/tips"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 696
    .local v1, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 698
    .local v8, toShow:Z
    const/4 v6, 0x0

    .line 700
    .local v6, c:Landroid/database/Cursor;
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 701
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 702
    const/4 v8, 0x1

    .line 703
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 704
    .local v9, values:Landroid/content/ContentValues;
    const-string v2, "first_time"

    const-string v3, "1"

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 707
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v2, v8

    .line 713
    :goto_0
    return v2

    .line 708
    :catch_0
    move-exception v7

    .line 709
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v2, v10

    .line 710
    goto :goto_0
.end method

.method private showCarousel()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/high16 v3, 0x3f80

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1039
    iget-object v2, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/widget/CarouselWidget;->getVisibility()I

    move-result v2

    const/16 v5, 0x8

    if-ne v2, v5, :cond_0

    .line 1041
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->setOrientation()V

    .line 1042
    iget-object v2, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v2, v11}, Lcom/htc/widget/CarouselWidget;->setVisibility(I)V

    .line 1046
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1047
    .local v9, animation1:Landroid/view/animation/Animation;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-boolean v2, p0, Lcom/htc/widget/CarouselActivity;->isPortrait:Z

    if-eqz v2, :cond_1

    move v2, v4

    :goto_0
    iget-boolean v5, p0, Lcom/htc/widget/CarouselActivity;->isPortrait:Z

    if-eqz v5, :cond_2

    move v6, v3

    :goto_1
    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1053
    .local v0, animation2:Landroid/view/animation/Animation;
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1054
    .local v10, animationset:Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1055
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1056
    const-wide/16 v1, 0x12c

    invoke-virtual {v10, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1057
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v1, v10}, Lcom/htc/widget/CarouselWidget;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1059
    .end local v0           #animation2:Landroid/view/animation/Animation;
    .end local v9           #animation1:Landroid/view/animation/Animation;
    .end local v10           #animationset:Landroid/view/animation/AnimationSet;
    :cond_0
    return-void

    .restart local v9       #animation1:Landroid/view/animation/Animation;
    :cond_1
    move v2, v3

    .line 1047
    goto :goto_0

    :cond_2
    move v6, v4

    goto :goto_1
.end method


# virtual methods
.method addAndSyncTask(Lcom/htc/widget/TaskInfo;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0, p0, p1}, Lcom/htc/widget/CarouselModel;->addTaskToDatabase(Landroid/content/Context;Lcom/htc/widget/TaskInfo;)V

    .line 656
    return-void
.end method

.method public beginTransaction()V
    .locals 2

    .prologue
    .line 966
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mTransactionCounter:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mHandler:Lcom/htc/content/NotifyingAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/content/NotifyingAsyncQueryHandler;->setToQueueMode(Z)V

    .line 967
    :cond_0
    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mTransactionCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/CarouselActivity;->mTransactionCounter:I

    .line 968
    return-void
.end method

.method public endTransaction()V
    .locals 1

    .prologue
    .line 972
    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mTransactionCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/CarouselActivity;->mTransactionCounter:I

    .line 973
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0, p0}, Lcom/htc/widget/CarouselModel;->startProcessingOperations(Landroid/content/Context;)V

    .line 975
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->getWidgetAdapterCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mMemoryMode:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->startQuery()V

    .line 977
    :cond_0
    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mTransactionCounter:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/CarouselActivity;->mTransactionCounter:I

    .line 978
    :cond_1
    return-void
.end method

.method protected enterEditMode()V
    .locals 1

    .prologue
    .line 1102
    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->isMemoryMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->switchPanelToPositive()V

    .line 1106
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->openDrawer()V

    .line 1107
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->showCarousel()V

    .line 1109
    :cond_0
    return-void
.end method

.method protected exitEditMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1113
    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->isMemoryMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1115
    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->setDragDropAnimationInitState()V

    .line 1116
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->close()V

    .line 1118
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1122
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->hideCarouselWithDialog()V

    .line 1127
    :cond_0
    :goto_0
    return-void

    .line 1124
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->showCarousel()V

    goto :goto_0
.end method

.method getBinAdapterCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    invoke-virtual {v0}, Lcom/htc/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 830
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    invoke-virtual {v0}, Lcom/htc/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public getCarouselHost()Lcom/htc/widget/CarouselHost;
    .locals 1

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->ensureCarouselHost()V

    .line 641
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    return-object v0
.end method

.method public getCarouselWidget()Lcom/htc/widget/CarouselWidget;
    .locals 1

    .prologue
    .line 650
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->ensureCarouselHost()V

    .line 651
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->getCarouselWidget()Lcom/htc/widget/CarouselWidget;

    move-result-object v0

    return-object v0
.end method

.method getCubeSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->cubeSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method getModel()Lcom/htc/widget/CarouselModel;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    return-object v0
.end method

.method getStateMode()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mStateMode:I

    return v0
.end method

.method getWidgetAdapterCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 835
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method isDestroy()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mIsDestroy:Z

    return v0
.end method

.method protected isInEditMode()Z
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    .line 1134
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMemoryMode()Z
    .locals 1

    .prologue
    .line 680
    iget-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mMemoryMode:Z

    return v0
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "childActivity"
    .parameter "title"

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 627
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    .line 628
    .local v0, tabView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 629
    check-cast v0, Landroid/widget/TextView;

    .end local v0           #tabView:Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 953
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 954
    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->setDragDropAnimationInitState()V

    .line 955
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 510
    invoke-super {p0}, Landroid/app/ActivityGroup;->onContentChanged()V

    .line 511
    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    .line 512
    .local v0, features:I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    .line 513
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->onCarouselCheck()V

    .line 515
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mIsDestroy:Z

    .line 328
    const-string v0, "CarouselActivity"

    const-string v1, "CarouselActivity onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 330
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 332
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mTaskUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mGID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mTaskUri:Landroid/net/Uri;

    .line 334
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mTaskUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselModel;->setUri(Landroid/net/Uri;)V

    .line 336
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0, p0}, Lcom/htc/widget/CarouselModel;->isProviderAP(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mIsProviderAp:Z

    .line 337
    if-eqz p1, :cond_0

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mRestoring:Z

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->beginTransaction()V

    .line 344
    return-void
.end method

.method public onCurrentTabChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "currentTab"

    .prologue
    .line 813
    const-string v0, "CarouselActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onCurrentTabChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 407
    const-string v0, "CarouselActivity"

    const-string v1, "CarouselActivity onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 410
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0, v3}, Lcom/htc/widget/BinAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0, v3}, Lcom/htc/widget/BinAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 412
    :cond_1
    iput-boolean v2, p0, Lcom/htc/widget/CarouselActivity;->mRestoring:Z

    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mMemoryMode:Z

    .line 414
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselModel;->cleanTasks()V

    .line 415
    iput-boolean v2, p0, Lcom/htc/widget/CarouselActivity;->mIsDestroy:Z

    .line 416
    return-void
.end method

.method onEditDrawerAboutToOpen()V
    .locals 0

    .prologue
    .line 982
    return-void
.end method

.method onEditDrawerClosed()V
    .locals 5

    .prologue
    const/16 v2, 0x3e9

    .line 763
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselSlidingDrawer;->clearFocus()V

    .line 765
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselHost;->removeTipBubble()V

    .line 766
    iput v2, p0, Lcom/htc/widget/CarouselActivity;->mStateMode:I

    .line 767
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselWidget;->setStateMode(I)V

    .line 768
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    iget-object v2, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v2}, Lcom/htc/widget/CarouselHost;->getCurrentTab()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselWidget;->onDrawerClosed(I)V

    .line 771
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v1, :cond_0

    .line 772
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    .line 773
    .local v0, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v1, "system_server"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "activity_tabCount"

    invoke-interface {v1, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "tab_count"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v4}, Lcom/htc/widget/BinAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 776
    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 777
    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 779
    .end local v0           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :cond_0
    return-void
.end method

.method onEditDrawerCompleteClose()V
    .locals 0

    .prologue
    .line 984
    return-void
.end method

.method onEditDrawerOpened()V
    .locals 9

    .prologue
    const/16 v8, 0x3ea

    const/4 v2, 0x0

    .line 745
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter;->getHandler()Lcom/htc/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    const/16 v1, 0x384

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mTaskUri:Landroid/net/Uri;

    const-string v5, "is_host=0"

    const-string v7, "task_order"

    move-object v4, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/content/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->setTipInDB()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->createTipBubble()V

    .line 753
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->showTipBubble()V

    .line 756
    :cond_1
    iput v8, p0, Lcom/htc/widget/CarouselActivity;->mStateMode:I

    .line 757
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0, v8}, Lcom/htc/widget/CarouselWidget;->setStateMode(I)V

    .line 758
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->onDrawerOpened()V

    .line 759
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->requestFocus()Z

    .line 760
    return-void
.end method

.method onEditScrollEnded()V
    .locals 0

    .prologue
    .line 782
    return-void
.end method

.method onEditScrollStarted()V
    .locals 1

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->setDragDropAnimationInitState()V

    .line 786
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->removeTipBubble()V

    .line 787
    return-void
.end method

.method onExceptionHandle(ILjava/lang/Object;ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "type"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 840
    const-string v1, "CarouselActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "datebase error: dismiss window type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " uri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " values "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " selection "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " selectionArgs "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p7, :cond_1

    invoke-virtual {p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    return-void

    .line 840
    :cond_0
    const-string v0, " null "

    goto :goto_0

    :cond_1
    const-string v0, " null"

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 378
    const-string v0, "CarouselActivity"

    const-string v1, "CarouselActivity onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 381
    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->isMemoryMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 382
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGridAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter;->getHandler()Lcom/htc/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    const/16 v1, 0x384

    invoke-virtual {v0, v1}, Lcom/htc/content/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_1

    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mIsStartQueryCalled:Z

    .line 385
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter;->getHandler()Lcom/htc/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    const/16 v1, 0x385

    invoke-virtual {v0, v1}, Lcom/htc/content/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 388
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->setDragDropAnimationInitState()V

    .line 391
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 393
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->close()V

    .line 394
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 395
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 396
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->hideCarousel()V

    .line 403
    :cond_2
    :goto_0
    return-void

    .line 398
    :cond_3
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->showCarousel()V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 444
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 445
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->ensureCarouselHost()V

    .line 446
    const-string v1, "currentTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, cur:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 448
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v1, v0}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselHost;->getCurrentTab()I

    move-result v1

    if-gez v1, :cond_1

    .line 451
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTab:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 452
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    iget-object v2, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 458
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    if-eqz v1, :cond_2

    const-string v1, "drawerOpened"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 459
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselSlidingDrawer;->setVisibility(I)V

    .line 460
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselSlidingDrawer;->open()V

    .line 462
    :cond_2
    return-void

    .line 453
    :cond_3
    iget v1, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTabIndex:I

    if-ltz v1, :cond_1

    .line 454
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    iget v2, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTabIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselHost;->setCurrentTabUtil(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 369
    const-string v0, "CarouselActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarouselActivity onResume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/widget/CarouselActivity;->mRestoring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 372
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->startQuery()V

    .line 374
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 466
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 467
    const/4 v0, 0x0

    .line 468
    .local v0, currentTabTag:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    if-eqz v1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 472
    :cond_0
    if-eqz v0, :cond_1

    .line 473
    const-string v1, "currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    if-eqz v1, :cond_2

    .line 477
    const-string v1, "drawerOpened"

    iget-object v2, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v2}, Lcom/htc/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 479
    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 360
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStart()V

    .line 363
    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->endTransaction()V

    .line 365
    return-void
.end method

.method public onTabEndSliding(Ljava/lang/String;)V
    .locals 0
    .parameter "endTag"

    .prologue
    .line 805
    return-void
.end method

.method public onTabStartSliding(Ljava/lang/String;)V
    .locals 0
    .parameter "startTag"

    .prologue
    .line 796
    return-void
.end method

.method onTaskSync()V
    .locals 2

    .prologue
    .line 675
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    invoke-virtual {v1}, Lcom/htc/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 676
    .local v0, adapter:Landroid/widget/BaseAdapter;
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v1, p0, v0}, Lcom/htc/widget/CarouselModel;->syncTasks(Landroid/content/Context;Landroid/widget/BaseAdapter;)V

    .line 677
    return-void
.end method

.method removeTagFromDB(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0, p0, p1}, Lcom/htc/widget/CarouselModel;->removeTagFromDB(Landroid/content/Context;Ljava/lang/String;)V

    .line 660
    return-void
.end method

.method public final requestCarouselFeature(I)Z
    .locals 1
    .parameter "featureId"

    .prologue
    .line 867
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 868
    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    .line 870
    :cond_0
    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    .line 871
    const/4 v0, 0x1

    return v0
.end method

.method setAlternativeTabName(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "tag"
    .parameter "text"

    .prologue
    .line 671
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0, p0, p1, p2}, Lcom/htc/widget/CarouselModel;->setAlternativeTabName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 672
    return-void
.end method

.method setBinAdapterCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 817
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    invoke-virtual {v0}, Lcom/htc/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/BinAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 818
    return-void
.end method

.method public final setCarouselFeatureInt(II)V
    .locals 5
    .parameter "featureId"
    .parameter "value"

    .prologue
    .line 886
    move v1, p1

    .line 889
    .local v1, featureMask:I
    iget v2, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    and-int/2addr v2, v1

    if-nez v2, :cond_1

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 896
    const v2, 0x202006a

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 899
    .local v0, customContainer:Landroid/widget/FrameLayout;
    const-string v2, "Carousel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "customViewContainer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/htc/widget/CarouselActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v2, :cond_0

    .line 903
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 904
    iget-object v2, p0, Lcom/htc/widget/CarouselActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

.method public final setContentView(I)V
    .locals 4
    .parameter "layoutResID"

    .prologue
    .line 912
    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    .line 913
    .local v0, features:I
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    .line 914
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->setContentView(I)V

    .line 926
    :goto_0
    return-void

    .line 916
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselActivity;->requestCarouselFeature(I)Z

    .line 917
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->ensureCarouselHost()V

    .line 918
    const v2, 0x2020069

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 919
    .local v1, root:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_1

    .line 920
    iget-object v2, p0, Lcom/htc/widget/CarouselActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 921
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->onCarouselCheck()V

    goto :goto_0

    .line 923
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "something wrong in the layout!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, -0x1

    .line 930
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/CarouselActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 931
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .parameter "view"
    .parameter "params"

    .prologue
    .line 935
    iget v0, p0, Lcom/htc/widget/CarouselActivity;->mFeatures:I

    .line 936
    .local v0, features:I
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    .line 937
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 950
    :goto_0
    return-void

    .line 939
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselActivity;->requestCarouselFeature(I)Z

    .line 940
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->ensureCarouselHost()V

    .line 941
    const v2, 0x2020069

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 942
    .local v1, root:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_1

    .line 943
    invoke-virtual {v1, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 944
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->onCarouselCheck()V

    goto :goto_0

    .line 946
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "something wrong in the layout!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "tag"
    .parameter "text"

    .prologue
    .line 667
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0, p0, p1, p2}, Lcom/htc/widget/CarouselModel;->setCountText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method setCountVisibility(Ljava/lang/String;Z)I
    .locals 1
    .parameter "tag"
    .parameter "enable"

    .prologue
    .line 663
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mModel:Lcom/htc/widget/CarouselModel;

    invoke-virtual {v0, p0, p1, p2}, Lcom/htc/widget/CarouselModel;->setCountTextVisible(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public setDefaultTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTab:Ljava/lang/String;

    .line 439
    iput p1, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTabIndex:I

    .line 440
    return-void
.end method

.method public setDefaultTab(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTab:Ljava/lang/String;

    .line 429
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/CarouselActivity;->mDefaultTabIndex:I

    .line 430
    return-void
.end method

.method setDragDropAnimationInitState()V
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDragLayer:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->cancelDrag()V

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    if-eqz v0, :cond_1

    .line 732
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mBinGridView:Lcom/htc/widget/BinGridView;

    invoke-virtual {v0}, Lcom/htc/widget/BinGridView;->initFlags()V

    .line 734
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v0, :cond_2

    .line 735
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->forceStopPartialFling()V

    .line 737
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->cancelAnimation()V

    .line 739
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->initFlags()V

    .line 740
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->requestLayout()V

    .line 742
    :cond_2
    return-void
.end method

.method public setGId(I)V
    .locals 2
    .parameter "gId"

    .prologue
    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGID:Ljava/lang/String;

    .line 489
    return-void
.end method

.method public setGId(Ljava/lang/String;)V
    .locals 0
    .parameter "gId"

    .prologue
    .line 498
    iput-object p1, p0, Lcom/htc/widget/CarouselActivity;->mGID:Ljava/lang/String;

    .line 499
    return-void
.end method

.method setMemoryMode(Z)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 684
    iput-boolean p1, p0, Lcom/htc/widget/CarouselActivity;->mMemoryMode:Z

    .line 685
    iget-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mMemoryMode:Z

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->close()V

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0, p1}, Lcom/htc/widget/CarouselWidget;->setMemoryMode(Z)V

    .line 690
    iget-object v1, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/widget/CarouselWidget;->setEditorMode(Z)V

    .line 691
    return-void

    .line 690
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setWidgetAdapterCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 821
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/BinAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 823
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 824
    invoke-direct {p0}, Lcom/htc/widget/CarouselActivity;->hideCarousel()V

    .line 826
    :cond_0
    return-void
.end method

.method startQuery()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 347
    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->isMemoryMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselActivity;->getWidgetAdapterCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mIsStartQueryCalled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mMemoryMode:Z

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter;->getHandler()Lcom/htc/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    const/16 v1, 0x385

    iget-object v3, p0, Lcom/htc/widget/CarouselActivity;->mTaskUri:Landroid/net/Uri;

    const-string v5, "is_host=1"

    const-string v7, "task_order"

    move-object v4, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/content/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/CarouselActivity;->mIsStartQueryCalled:Z

    .line 356
    :cond_1
    return-void
.end method

.method updateWidget(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 845
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity;->mGalleryWidget:Lcom/htc/widget/CarouselWidget;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselWidget;->setSelection(I)V

    .line 846
    return-void
.end method
