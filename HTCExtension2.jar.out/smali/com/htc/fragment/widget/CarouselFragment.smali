.class public Lcom/htc/fragment/widget/CarouselFragment;
.super Landroid/app/Fragment;
.source "CarouselFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;,
        Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;
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

.field static final disableLandscape:Z

.field private static tabViewId:I


# instance fields
.field private final animDuration:I

.field private deferredActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private deferredSetting:Ljava/lang/Runnable;

.field private display:Landroid/view/Display;

.field private editModeListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;

.field eresources:Landroid/content/res/Resources;

.field private isPortrait:Z

.field private final mAuthority:Ljava/lang/String;

.field private mBinGridView:Lcom/htc/fragment/widget/BinGridView;

.field private mBundleKeyPrefix:Ljava/lang/String;

.field private mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

.field mContentAdapter:Lcom/htc/fragment/widget/CarouselContentAdapter;

.field mContentRoot:Lcom/htc/fragment/widget/CarouselContentGallery;

.field private mDefaultTab:Ljava/lang/String;

.field private mDefaultTabIndex:I

.field private mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

.field private mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

.field private mDrawerStatusListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;

.field private mFeatures:I

.field private mGID:Ljava/lang/String;

.field mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

.field private mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

.field mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

.field private mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

.field private mHostOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field mIsDestroy:Z

.field private mIsProviderAp:Z

.field private mIsStartQueryCalled:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

.field private mMemoryMode:Z

.field private final mModel:Lcom/htc/fragment/widget/CarouselModel;

.field private mQueuedActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mRestoring:Z

.field private mRootView:Landroid/view/View;

.field private mStateMode:I

.field private mTaskUri:Landroid/net/Uri;

.field private mTransactionCounter:I

.field private tabContentViewIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 247
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    sput-boolean v0, Lcom/htc/fragment/widget/CarouselFragment;->disableLandscape:Z

    .line 1496
    const/high16 v0, 0x4000

    sput v0, Lcom/htc/fragment/widget/CarouselFragment;->tabViewId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "authority"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 263
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 138
    new-instance v0, Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-direct {v0, p0}, Lcom/htc/fragment/app/LocalFragmentManager;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    .line 139
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRootView:Landroid/view/View;

    .line 141
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHostOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

    .line 144
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTab:Ljava/lang/String;

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTabIndex:I

    .line 147
    iput-boolean v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRestoring:Z

    .line 152
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGID:Ljava/lang/String;

    .line 156
    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mMemoryMode:Z

    .line 198
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    .line 199
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    .line 200
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    .line 201
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    .line 205
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    .line 207
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    .line 211
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    .line 217
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mStateMode:I

    .line 239
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    .line 250
    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsDestroy:Z

    .line 253
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentRoot:Lcom/htc/fragment/widget/CarouselContentGallery;

    .line 255
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentAdapter:Lcom/htc/fragment/widget/CarouselContentAdapter;

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBundleKeyPrefix:Ljava/lang/String;

    .line 836
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->deferredActions:Ljava/util/Map;

    .line 1223
    iput v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTransactionCounter:I

    .line 1334
    iput-boolean v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->isPortrait:Z

    .line 1335
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->display:Landroid/view/Display;

    .line 1347
    const/16 v0, 0x12c

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->animDuration:I

    .line 1489
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->editModeListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;

    .line 1503
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->tabContentViewIds:Ljava/util/Map;

    .line 264
    new-instance v0, Lcom/htc/fragment/widget/CarouselModel;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/CarouselModel;-><init>(Lcom/htc/fragment/widget/CarouselFragment;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    .line 265
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mAuthority:Ljava/lang/String;

    .line 266
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

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    .line 267
    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mMemoryMode:Z

    .line 268
    new-instance v0, Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;-><init>(Lcom/htc/fragment/widget/CarouselFragment;Lcom/htc/fragment/widget/CarouselFragment$1;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawerStatusListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;

    .line 269
    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsStartQueryCalled:Z

    .line 270
    return-void
.end method

.method static synthetic access$102(Lcom/htc/fragment/widget/CarouselFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselFragment;->deferredSetting:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/fragment/widget/CarouselFragment;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->deferredActions:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/fragment/widget/CarouselFragment;)Lcom/htc/fragment/widget/CarouselModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/fragment/widget/CarouselFragment;)Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->editModeListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;

    return-object v0
.end method

.method private addSlidingDrawer()V
    .locals 7

    .prologue
    .line 274
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v3}, Lcom/htc/fragment/widget/CarouselHost;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 277
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v3, v1}, Lcom/htc/fragment/widget/CarouselHost;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 278
    .local v0, child:Landroid/view/View;
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v3, v0}, Lcom/htc/fragment/widget/CarouselHost;->removeView(Landroid/view/View;)V

    .line 279
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    instance-of v3, v0, Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v3, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 282
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x2090024

    iget-object v5, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 286
    .end local v0           #child:Landroid/view/View;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 287
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 288
    .restart local v0       #child:Landroid/view/View;
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v3, v0}, Lcom/htc/fragment/widget/CarouselHost;->addView(Landroid/view/View;)V

    .line 286
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 276
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 290
    .end local v0           #child:Landroid/view/View;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 291
    return-void
.end method

.method private createTabContentViewId()I
    .locals 2

    .prologue
    .line 1498
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1499
    .local v0, activity:Landroid/app/Activity;
    :cond_0
    sget v1, Lcom/htc/fragment/widget/CarouselFragment;->tabViewId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/htc/fragment/widget/CarouselFragment;->tabViewId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1501
    sget v1, Lcom/htc/fragment/widget/CarouselFragment;->tabViewId:I

    return v1
.end method

.method private enqueueSettingActionIfRequired()V
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->deferredSetting:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 839
    new-instance v0, Lcom/htc/fragment/widget/CarouselFragment$1;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/CarouselFragment$1;-><init>(Lcom/htc/fragment/widget/CarouselFragment;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->deferredSetting:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->enqueueAction(Ljava/lang/Runnable;)V

    .line 852
    :cond_0
    return-void
.end method

.method private ensureCarouselHost(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ensureCarouselHost() mTaskUri: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->v(Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-nez v0, :cond_2

    .line 761
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const v0, 0x2090018

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/fragment/widget/CarouselFragment;->super_setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V

    .line 767
    const v0, 0x1020012

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselHost;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    .line 768
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/htc/fragment/widget/CarouselHost;->enableCustomView(Z)V

    .line 773
    :goto_2
    return-void

    .line 761
    :cond_0
    const v0, 0x2090025

    goto :goto_0

    :cond_1
    move v0, v2

    .line 768
    goto :goto_1

    .line 770
    :cond_2
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->initLayout()V

    .line 771
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselHost;->enableCustomView(Z)V

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method private final findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private hideCarouselWithDialog()V
    .locals 3

    .prologue
    .line 1421
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->hideCarousel()V

    .line 1422
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x20400bf

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20400c0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x2040151

    new-instance v2, Lcom/htc/fragment/widget/CarouselFragment$5;

    invoke-direct {v2, p0}, Lcom/htc/fragment/widget/CarouselFragment$5;-><init>(Lcom/htc/fragment/widget/CarouselFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 1431
    return-void
.end method

.method private initalPoolNWidget()V
    .locals 11

    .prologue
    const v2, 0x2090022

    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 303
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    .line 304
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 306
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->addSlidingDrawer()V

    .line 308
    const v0, 0x1020012

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselHost;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    .line 311
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    iput-object v1, v0, Lcom/htc/fragment/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    .line 316
    :cond_0
    const v0, 0x2020064

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinGridView;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    .line 317
    const v0, 0x1020013

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselWidget;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    .line 318
    const v0, 0x2020063

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    .line 320
    const v0, 0x1020011

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselContentGallery;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentRoot:Lcom/htc/fragment/widget/CarouselContentGallery;

    .line 323
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    iput-object p0, v0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->carousel:Lcom/htc/fragment/widget/CarouselFragment;

    .line 326
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->actionBar:Landroid/app/ActionBar;

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselModel;->getHandler(Landroid/content/Context;)Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    .line 330
    new-instance v0, Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    new-array v5, v10, [Ljava/lang/String;

    new-array v6, v10, [I

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    invoke-direct/range {v0 .. v7}, Lcom/htc/fragment/widget/BinAdapter;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/fragment/content/NotifyingAsyncQueryHandler;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    .line 334
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    iput-object v1, v0, Lcom/htc/fragment/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/BinGridView;->setDragger(Lcom/htc/fragment/widget/DragController;)V

    .line 341
    new-instance v0, Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    new-array v5, v10, [Ljava/lang/String;

    new-array v6, v10, [I

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    iget-object v8, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-direct/range {v0 .. v9}, Lcom/htc/fragment/widget/BinAdapter;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/fragment/content/NotifyingAsyncQueryHandler;Lcom/htc/fragment/widget/CarouselModel;I)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    .line 345
    new-instance v1, Lcom/htc/fragment/widget/CarouselContentAdapter;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x2090023

    new-array v5, v10, [Ljava/lang/String;

    new-array v6, v10, [I

    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-direct/range {v1 .. v7}, Lcom/htc/fragment/widget/CarouselContentAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/fragment/widget/CarouselModel;)V

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentAdapter:Lcom/htc/fragment/widget/CarouselContentAdapter;

    .line 348
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    if-eqz v0, :cond_3

    .line 350
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    iput-object v1, v0, Lcom/htc/fragment/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    .line 352
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentAdapter:Lcom/htc/fragment/widget/CarouselContentAdapter;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    iput-object v1, v0, Lcom/htc/fragment/widget/CarouselContentAdapter;->eresources:Landroid/content/res/Resources;

    .line 356
    :cond_3
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->setDragger(Lcom/htc/fragment/widget/DragController;)V

    .line 357
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->setDrawer(Lcom/htc/fragment/widget/CarouselSlidingDrawer;)V

    .line 358
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, p0}, Lcom/htc/fragment/widget/CarouselWidget;->setFragment(Lcom/htc/fragment/widget/CarouselFragment;)V

    .line 360
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/BinGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 361
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 363
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentRoot:Lcom/htc/fragment/widget/CarouselContentGallery;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->setContentGallery(Lcom/htc/fragment/widget/CarouselContentGallery;)V

    .line 364
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentRoot:Lcom/htc/fragment/widget/CarouselContentGallery;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentAdapter:Lcom/htc/fragment/widget/CarouselContentAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselContentGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 367
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawerStatusListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->setOnDrawerOpenListener(Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerOpenListener;)V

    .line 368
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawerStatusListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->setOnDrawerCloseListener(Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerCloseListener;)V

    .line 369
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawerStatusListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->setOnDrawerScrollListener(Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerScrollListener;)V

    .line 370
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawerStatusListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->setOnEditModeDrawerStateListener(Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;)V

    .line 372
    const v0, 0x20401d2

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->setDrawerTitle(I)V

    .line 374
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->initLayout()V

    .line 380
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 381
    invoke-virtual {p0, v9}, Lcom/htc/fragment/widget/CarouselFragment;->setMemoryMode(Z)V

    .line 382
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    invoke-virtual {v0, v9}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->setNoEditorMode(Z)V

    .line 387
    :goto_0
    return-void

    .line 384
    :cond_4
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, v9}, Lcom/htc/fragment/widget/CarouselWidget;->setEditorMode(Z)V

    .line 385
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    invoke-virtual {v0, v10}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->setNoEditorMode(Z)V

    goto :goto_0
.end method

.method private onCarouselCheck()V
    .locals 2

    .prologue
    .line 720
    const v0, 0x1020012

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/CarouselHost;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    .line 722
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHostOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHostOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselHost;->setOnTabChangedListener(Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;)V

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->eresources:Landroid/content/res/Resources;

    iput-object v1, v0, Lcom/htc/fragment/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-nez v0, :cond_2

    .line 733
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/fragment/widget/CarouselFragment;->printViewTree(Landroid/view/ViewGroup;I)V

    .line 735
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a CarouselHost whose id attribute is \'android.R.id.tabhost\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 740
    :cond_2
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselHost;->setup(Lcom/htc/fragment/app/LocalFragmentManager;)V

    .line 741
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsProviderAp:Z

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselHost;->setIsProviderAp(Z)V

    .line 742
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0, p0}, Lcom/htc/fragment/widget/CarouselHost;->setCarousel(Lcom/htc/fragment/widget/CarouselFragment;)V

    .line 745
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsProviderAp:Z

    if-nez v0, :cond_3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->requestCarouselFeature(I)Z

    .line 748
    :cond_3
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->initalPoolNWidget()V

    .line 749
    return-void
.end method

.method private onContentChanged()V
    .locals 2

    .prologue
    .line 699
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    .line 700
    .local v0, features:I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    .line 701
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->onCarouselCheck()V

    .line 703
    :cond_0
    return-void
.end method

.method private printViewTree(Landroid/view/ViewGroup;I)V
    .locals 5
    .parameter "container"
    .parameter "level"

    .prologue
    .line 706
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 708
    .local v1, count:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CarouselTraceView] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    .line 709
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 710
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 711
    .local v0, child:Landroid/view/View;
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 712
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #child:Landroid/view/View;
    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v0, v3}, Lcom/htc/fragment/widget/CarouselFragment;->printViewTree(Landroid/view/ViewGroup;I)V

    .line 709
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 714
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CarouselTraceView] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 717
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private final setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "layoutResID"

    .prologue
    .line 1152
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    .line 1153
    .local v0, features:I
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    .line 1154
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/fragment/widget/CarouselFragment;->super_setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V

    .line 1166
    :goto_0
    return-void

    .line 1156
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselFragment;->requestCarouselFeature(I)Z

    .line 1157
    invoke-direct {p0, p1, p2}, Lcom/htc/fragment/widget/CarouselFragment;->ensureCarouselHost(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 1158
    const v2, 0x2020069

    invoke-direct {p0, v2}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1159
    .local v1, root:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_1

    .line 1160
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1161
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->onCarouselCheck()V

    goto :goto_0

    .line 1163
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "something wrong in the layout!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private final setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "view"

    .prologue
    const/4 v1, -0x1

    .line 1169
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/fragment/widget/CarouselFragment;->setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1170
    return-void
.end method

.method private setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "view"
    .parameter "params"

    .prologue
    .line 1173
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    .line 1174
    .local v0, features:I
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    .line 1175
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/fragment/widget/CarouselFragment;->super_setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1188
    :goto_0
    return-void

    .line 1177
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselFragment;->requestCarouselFeature(I)Z

    .line 1178
    invoke-direct {p0, p1, p2}, Lcom/htc/fragment/widget/CarouselFragment;->ensureCarouselHost(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 1179
    const v2, 0x2020069

    invoke-direct {p0, v2}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1180
    .local v1, root:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_1

    .line 1181
    invoke-virtual {v1, p3, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1182
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->onCarouselCheck()V

    goto :goto_0

    .line 1184
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "something wrong in the layout!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setDrawerTitle(I)V
    .locals 2
    .parameter "titleId"

    .prologue
    .line 952
    const v1, 0x2020065

    invoke-direct {p0, v1}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 953
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 954
    return-void
.end method

.method private setOrientation()V
    .locals 2

    .prologue
    .line 1338
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1345
    :goto_0
    return-void

    .line 1340
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->display:Landroid/view/Display;

    if-nez v0, :cond_1

    .line 1341
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->display:Landroid/view/Display;

    .line 1342
    :cond_1
    sget-boolean v0, Lcom/htc/fragment/widget/CarouselFragment;->disableLandscape:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->isPortrait:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setTipInDB()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 925
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 926
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

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

    .line 927
    .local v1, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 929
    .local v8, toShow:Z
    const/4 v6, 0x0

    .line 931
    .local v6, c:Landroid/database/Cursor;
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 932
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 933
    const/4 v8, 0x1

    .line 934
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 935
    .local v9, values:Landroid/content/ContentValues;
    const-string v2, "first_time"

    const-string v3, "1"

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 938
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v2, v8

    .line 944
    :goto_0
    return v2

    .line 939
    :catch_0
    move-exception v7

    .line 940
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v2, v10

    .line 941
    goto :goto_0
.end method

.method private final super_setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "layoutResID"

    .prologue
    .line 1192
    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRootView:Landroid/view/View;

    .line 1193
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->onContentChanged()V

    .line 1194
    return-void
.end method

.method private final super_setContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "view"
    .parameter "params"

    .prologue
    .line 1197
    iput-object p3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRootView:Landroid/view/View;

    .line 1198
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1199
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->onContentChanged()V

    .line 1200
    return-void
.end method


# virtual methods
.method addAndSyncTask(Lcom/htc/fragment/widget/TaskInfo;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 824
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/htc/fragment/widget/CarouselModel;->addTaskToDatabase(Landroid/content/Context;Lcom/htc/fragment/widget/TaskInfo;)V

    .line 825
    return-void
.end method

.method public beginTransaction()V
    .locals 2

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTransactionCounter:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHandler:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->setToQueueMode(Z)V

    .line 1230
    :cond_0
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTransactionCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTransactionCounter:I

    .line 1231
    return-void
.end method

.method public dispatchRestart()V
    .locals 2

    .prologue
    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dispatchRestart()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v0}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchRestart()V

    .line 436
    return-void
.end method

.method public endTransaction()V
    .locals 2

    .prologue
    .line 1239
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTransactionCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTransactionCounter:I

    .line 1240
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselModel;->startProcessingOperations(Landroid/content/Context;)V

    .line 1242
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getWidgetAdapterCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mMemoryMode:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->startQuery()V

    .line 1244
    :cond_0
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTransactionCounter:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTransactionCounter:I

    .line 1245
    :cond_1
    return-void
.end method

.method enqueueAction(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 1528
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mQueuedActions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mQueuedActions:Ljava/util/List;

    .line 1531
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mQueuedActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1532
    return-void
.end method

.method protected enterEditMode()V
    .locals 1

    .prologue
    .line 1439
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->isMemoryMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1442
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->switchPanelToPositive()V

    .line 1443
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->openDrawer()V

    .line 1444
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->showCarousel()V

    .line 1446
    :cond_0
    return-void
.end method

.method executeQueuedActions()V
    .locals 7

    .prologue
    .line 1537
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselFragment;->mQueuedActions:Ljava/util/List;

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->isDetached()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->isAdded()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->isRemoving()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1551
    :cond_0
    return-void

    .line 1541
    :cond_1
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselFragment;->mQueuedActions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v1, v6, [Ljava/lang/Runnable;

    .line 1542
    .local v1, actions:[Ljava/lang/Runnable;
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselFragment;->mQueuedActions:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1543
    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselFragment;->mQueuedActions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1544
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getView()Landroid/view/View;

    move-result-object v5

    .line 1546
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1547
    move-object v2, v1

    .local v2, arr$:[Ljava/lang/Runnable;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 1548
    .local v0, action:Ljava/lang/Runnable;
    invoke-virtual {v5, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1547
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected exitEditMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1453
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->isMemoryMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1455
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->setDragDropAnimationInitState()V

    .line 1456
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->close()V

    .line 1458
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1461
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1464
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->hideCarousel()V

    .line 1469
    :cond_0
    :goto_0
    return-void

    .line 1466
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->showCarousel()V

    goto :goto_0
.end method

.method getBinAdapterCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1068
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;
    .locals 3

    .prologue
    .line 795
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-nez v0, :cond_1

    .line 796
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarouselFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreateView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    return-object v0
.end method

.method public getCarouselWidget()Lcom/htc/fragment/widget/CarouselWidget;
    .locals 3

    .prologue
    .line 816
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->getCarouselWidget()Lcom/htc/fragment/widget/CarouselWidget;

    move-result-object v0

    if-nez v0, :cond_1

    .line 817
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarouselFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreateView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->getCarouselWidget()Lcom/htc/fragment/widget/CarouselWidget;

    move-result-object v0

    return-object v0
.end method

.method getGId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGID:Ljava/lang/String;

    return-object v0
.end method

.method getLocalFragmentManager()Lcom/htc/fragment/app/LocalFragmentManager;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    return-object v0
.end method

.method getModel()Lcom/htc/fragment/widget/CarouselModel;
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    return-object v0
.end method

.method getStateMode()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mStateMode:I

    return v0
.end method

.method getTabContentViewId(Ljava/lang/String;)I
    .locals 5
    .parameter "tag"

    .prologue
    .line 1507
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v3, p1}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 1508
    .local v1, f:Landroid/app/Fragment;
    if-eqz v1, :cond_0

    .line 1509
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v3, v1}, Lcom/htc/fragment/app/LocalFragmentManager;->getContainerId(Landroid/app/Fragment;)I

    move-result v0

    .line 1510
    .local v0, containerId:I
    if-lez v0, :cond_0

    .line 1511
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->tabContentViewIds:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    .end local v0           #containerId:I
    :goto_0
    return v0

    .line 1515
    :cond_0
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->tabContentViewIds:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1516
    .local v2, id:Ljava/lang/Integer;
    if-nez v2, :cond_1

    .line 1517
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->tabContentViewIds:Ljava/util/Map;

    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->createTabContentViewId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method getWidgetAdapterCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1073
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method hideCarousel()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/high16 v3, 0x3f80

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1387
    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselWidget;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 1389
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->setOrientation()V

    .line 1390
    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/htc/fragment/widget/CarouselWidget;->setVisibility(I)V

    .line 1393
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1396
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/ActionBarImpl;

    .line 1398
    .local v9, actionBarImpl:Lcom/android/internal/app/ActionBarImpl;
    invoke-virtual {v9}, Lcom/android/internal/app/ActionBarImpl;->isEnableHTCActionBar()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1399
    invoke-virtual {v9, v12}, Lcom/android/internal/app/ActionBarImpl;->enableHTCLandscape(Z)V

    .line 1404
    .end local v9           #actionBarImpl:Lcom/android/internal/app/ActionBarImpl;
    :cond_0
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1405
    .local v10, animation1:Landroid/view/animation/Animation;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-boolean v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->isPortrait:Z

    if-eqz v4, :cond_2

    move v4, v2

    :goto_0
    iget-boolean v5, p0, Lcom/htc/fragment/widget/CarouselFragment;->isPortrait:Z

    if-eqz v5, :cond_3

    move v8, v3

    :goto_1
    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1411
    .local v0, animation2:Landroid/view/animation/Animation;
    new-instance v11, Landroid/view/animation/AnimationSet;

    invoke-direct {v11, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1412
    .local v11, animationset:Landroid/view/animation/AnimationSet;
    invoke-virtual {v11, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1413
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1414
    const-wide/16 v1, 0x12c

    invoke-virtual {v11, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1415
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v1, v11}, Lcom/htc/fragment/widget/CarouselWidget;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1417
    .end local v0           #animation2:Landroid/view/animation/Animation;
    .end local v10           #animation1:Landroid/view/animation/Animation;
    .end local v11           #animationset:Landroid/view/animation/AnimationSet;
    :cond_1
    return-void

    .restart local v10       #animation1:Landroid/view/animation/Animation;
    :cond_2
    move v4, v3

    .line 1405
    goto :goto_0

    :cond_3
    move v8, v2

    goto :goto_1
.end method

.method isDestroy()Z
    .locals 1

    .prologue
    .line 574
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsDestroy:Z

    return v0
.end method

.method protected isInEditMode()Z
    .locals 1

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    if-eqz v0, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    .line 1480
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMemoryMode()Z
    .locals 1

    .prologue
    .line 911
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mMemoryMode:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 1212
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1213
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->setDragDropAnimationInitState()V

    .line 1214
    return-void
.end method

.method onContentCursorBuildComplete(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentAdapter:Lcom/htc/fragment/widget/CarouselContentAdapter;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentAdapter:Lcom/htc/fragment/widget/CarouselContentAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/CarouselContentAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 299
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsDestroy:Z

    .line 401
    const-string v0, "CarouselFragment onCreate"

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->v(Ljava/lang/String;)V

    .line 402
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 403
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 405
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    .line 407
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselModel;->setUri(Landroid/net/Uri;)V

    .line 409
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselModel;->isProviderAP(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsProviderAp:Z

    .line 410
    if-eqz p1, :cond_0

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRestoring:Z

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->beginTransaction()V

    .line 417
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "saved"

    .prologue
    .line 603
    invoke-direct {p0, p1, p2}, Lcom/htc/fragment/widget/CarouselFragment;->ensureCarouselHost(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 604
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dispatchCreateView()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    .line 606
    if-nez p3, :cond_2

    const/4 v0, 0x0

    .line 607
    .local v0, cur:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 608
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v3, v0}, Lcom/htc/fragment/widget/CarouselHost;->setBackupCurrentTag(Ljava/lang/String;)V

    .line 609
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v3, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->setCurrentId(Ljava/lang/String;)V

    .line 612
    :cond_0
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    if-eqz v3, :cond_1

    if-eqz p3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBundleKeyPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "drawerOpened"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 613
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->setVisibility(I)V

    .line 614
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v3}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->open()V

    .line 617
    :cond_1
    const-string v1, ""

    .line 618
    .local v1, globalId:Ljava/lang/String;
    if-nez p3, :cond_4

    .line 619
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 620
    .local v2, tag:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 621
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 625
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getGId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 629
    .end local v2           #tag:Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v3, v1}, Lcom/htc/fragment/app/LocalFragmentManager;->setGlobalId(Ljava/lang/String;)V

    .line 631
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v3, p3}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchCreateView(Landroid/os/Bundle;)V

    .line 633
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRootView:Landroid/view/View;

    return-object v3

    .line 606
    .end local v0           #cur:Ljava/lang/String;
    .end local v1           #globalId:Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBundleKeyPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "currentTab"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 623
    .restart local v0       #cur:Ljava/lang/String;
    .restart local v1       #globalId:Ljava/lang/String;
    .restart local v2       #tag:Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->hashCode()I

    move-result v4

    const/16 v5, 0x24

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 627
    .end local v2           #tag:Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBundleKeyPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "globalId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public onCurrentTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "currentTab"

    .prologue
    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCurrentTabChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->v(Ljava/lang/String;)V

    .line 1046
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 557
    const-string v0, "CarouselFragment onDestroy"

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->v(Ljava/lang/String;)V

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " dispatchDestroy("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    .line 561
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchDestroy(Z)V

    .line 562
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 565
    iput-boolean v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRestoring:Z

    .line 566
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mMemoryMode:Z

    .line 569
    iput-boolean v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsDestroy:Z

    .line 570
    return-void

    :cond_2
    move v0, v1

    .line 560
    goto :goto_0

    :cond_3
    move v0, v1

    .line 561
    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dispatchDestroyView()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v0}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchDestroyView()V

    .line 539
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 541
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselModel;->cleanTasks()V

    .line 545
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0, v2}, Lcom/htc/fragment/widget/BinAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0, v2}, Lcom/htc/fragment/widget/BinAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentAdapter:Lcom/htc/fragment/widget/CarouselContentAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mContentAdapter:Lcom/htc/fragment/widget/CarouselContentAdapter;

    invoke-virtual {v0, v2}, Lcom/htc/fragment/widget/CarouselContentAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 549
    :cond_2
    return-void
.end method

.method onEditDrawerAboutToOpen()V
    .locals 0

    .prologue
    .line 1250
    return-void
.end method

.method onEditDrawerClosed()V
    .locals 5

    .prologue
    const/16 v2, 0x3e9

    .line 995
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->clearFocus()V

    .line 997
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost;->removeTipBubble()V

    .line 998
    iput v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mStateMode:I

    .line 999
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setStateMode(I)V

    .line 1000
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentTab()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/CarouselWidget;->onDrawerClosed(I)V

    .line 1003
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v1, :cond_0

    .line 1004
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    .line 1005
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

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v4}, Lcom/htc/fragment/widget/BinAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 1008
    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 1009
    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 1011
    .end local v0           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :cond_0
    return-void
.end method

.method onEditDrawerCompleteClose()V
    .locals 0

    .prologue
    .line 1253
    return-void
.end method

.method onEditDrawerOpened()V
    .locals 9

    .prologue
    const/16 v8, 0x3ea

    const/4 v2, 0x0

    .line 977
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getHandler()Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    const/16 v1, 0x384

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    const-string v5, "is_host=0"

    const-string v7, "task_order"

    move-object v4, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    :cond_0
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->setTipInDB()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 984
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->createTipBubble()V

    .line 985
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->showTipBubble()V

    .line 988
    :cond_1
    iput v8, p0, Lcom/htc/fragment/widget/CarouselFragment;->mStateMode:I

    .line 989
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, v8}, Lcom/htc/fragment/widget/CarouselWidget;->setStateMode(I)V

    .line 990
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->onDrawerOpened()V

    .line 991
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->requestFocus()Z

    .line 992
    return-void
.end method

.method onEditScrollEnded()V
    .locals 0

    .prologue
    .line 1014
    return-void
.end method

.method onEditScrollStarted()V
    .locals 1

    .prologue
    .line 1017
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->setDragDropAnimationInitState()V

    .line 1018
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->removeTipBubble()V

    .line 1019
    return-void
.end method

.method onExceptionHandle(ILjava/lang/Object;ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "type"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "datebase error: dismiss window type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " values "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " selection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " selectionArgs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p7, :cond_1

    invoke-virtual {p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    .line 1080
    return-void

    .line 1078
    :cond_0
    const-string v0, " null "

    goto :goto_0

    :cond_1
    const-string v0, " null"

    goto :goto_1
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .parameter "hidden"

    .prologue
    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dispatchHiddenChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchHiddenChanged(Z)V

    .line 529
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 490
    const-string v0, "CarouselFragment onPause"

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->v(Ljava/lang/String;)V

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " dispatchPause()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    .line 493
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchPause(Z)V

    .line 494
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 496
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->isMemoryMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 497
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGridAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getHandler()Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    const/16 v3, 0x384

    invoke-virtual {v0, v3}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_2

    .line 499
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsStartQueryCalled:Z

    .line 500
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getHandler()Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    const/16 v1, 0x385

    invoke-virtual {v0, v1}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 503
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->setDragDropAnimationInitState()V

    .line 506
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 508
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->close()V

    .line 509
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 510
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 511
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->hideCarousel()V

    .line 518
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v0, v1

    .line 493
    goto :goto_0

    .line 513
    :cond_5
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->showCarousel()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarouselFragment onResume "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mRestoring:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->v(Ljava/lang/String;)V

    .line 476
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 478
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->startQuery()V

    .line 480
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dispatchResume()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v0}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchResume()V

    .line 482
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 642
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 643
    const/4 v0, 0x0

    .line 644
    .local v0, currentTabTag:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v1, :cond_0

    .line 645
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 648
    :cond_0
    if-eqz v0, :cond_1

    .line 649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBundleKeyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "currentTab"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    :cond_1
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    if-eqz v1, :cond_2

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBundleKeyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "drawerOpened"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 656
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBundleKeyPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "globalId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v2}, Lcom/htc/fragment/app/LocalFragmentManager;->getGlobalId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v1, p1}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 659
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 444
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 448
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v1, :cond_1

    .line 449
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost;->getBackUpCurrentTag()Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, cur:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 451
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v1, v0}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 453
    :cond_0
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentTab()I

    move-result v1

    if-gez v1, :cond_1

    .line 454
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTab:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 455
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 463
    .end local v0           #cur:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->endTransaction()V

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dispatchStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    .line 466
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    invoke-virtual {v1}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchStart()V

    .line 467
    return-void

    .line 456
    .restart local v0       #cur:Ljava/lang/String;
    :cond_2
    iget v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTabIndex:I

    if-ltz v1, :cond_1

    .line 457
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTabIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabUtil(I)V

    goto :goto_0
.end method

.method public onTabEndSliding(Ljava/lang/String;)V
    .locals 0
    .parameter "endTag"

    .prologue
    .line 1037
    return-void
.end method

.method public onTabStartSliding(Ljava/lang/String;)V
    .locals 0
    .parameter "startTag"

    .prologue
    .line 1028
    return-void
.end method

.method onTaskSync()V
    .locals 3

    .prologue
    .line 906
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 907
    .local v0, adapter:Landroid/widget/BaseAdapter;
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/htc/fragment/widget/CarouselModel;->syncTasks(Landroid/content/Context;Landroid/widget/BaseAdapter;)V

    .line 908
    return-void
.end method

.method removeTagFromDB(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 828
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/htc/fragment/widget/CarouselModel;->removeTagFromDB(Landroid/content/Context;Ljava/lang/String;)V

    .line 829
    return-void
.end method

.method public final requestCarouselFeature(I)Z
    .locals 1
    .parameter "featureId"

    .prologue
    .line 1105
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 1106
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    .line 1108
    :cond_0
    iget v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    .line 1109
    const/4 v0, 0x1

    return v0
.end method

.method setAlternativeTabName(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "tag"
    .parameter "text"

    .prologue
    .line 889
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->enqueueSettingActionIfRequired()V

    .line 891
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->deferredActions:Ljava/util/Map;

    const-string v1, "alternativeTabName"

    new-instance v2, Lcom/htc/fragment/widget/CarouselFragment$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/htc/fragment/widget/CarouselFragment$4;-><init>(Lcom/htc/fragment/widget/CarouselFragment;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    :goto_0
    return-void

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/fragment/widget/CarouselModel;->setAlternativeTabName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method setBinAdapterCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 1052
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1053
    .local v0, adapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v1, :cond_0

    .line 1054
    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/BinAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1056
    :cond_0
    return-void
.end method

.method public final setCarouselFeatureInt(II)V
    .locals 4
    .parameter "featureId"
    .parameter "value"

    .prologue
    .line 1128
    move v1, p1

    .line 1131
    .local v1, featureMask:I
    iget v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mFeatures:I

    and-int/2addr v2, v1

    if-nez v2, :cond_1

    .line 1148
    :cond_0
    :goto_0
    return-void

    .line 1134
    :cond_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 1138
    const v2, 0x202006a

    invoke-direct {p0, v2}, Lcom/htc/fragment/widget/CarouselFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1140
    .local v0, customContainer:Landroid/widget/FrameLayout;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "customViewContainer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/fragment/widget/CarouselLog;->i(Ljava/lang/String;)V

    .line 1142
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v2, :cond_0

    .line 1144
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1145
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

.method setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)I
    .locals 3
    .parameter "tag"
    .parameter "text"

    .prologue
    .line 872
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->enqueueSettingActionIfRequired()V

    .line 874
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->deferredActions:Ljava/util/Map;

    const-string v1, "countText"

    new-instance v2, Lcom/htc/fragment/widget/CarouselFragment$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/htc/fragment/widget/CarouselFragment$3;-><init>(Lcom/htc/fragment/widget/CarouselFragment;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    const/4 v0, -0x1

    .line 885
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/fragment/widget/CarouselModel;->setCountText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0
.end method

.method setCountVisibility(Ljava/lang/String;Z)I
    .locals 3
    .parameter "tag"
    .parameter "enable"

    .prologue
    .line 855
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->enqueueSettingActionIfRequired()V

    .line 857
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->deferredActions:Ljava/util/Map;

    const-string v1, "countVisibility"

    new-instance v2, Lcom/htc/fragment/widget/CarouselFragment$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/htc/fragment/widget/CarouselFragment$2;-><init>(Lcom/htc/fragment/widget/CarouselFragment;Ljava/lang/String;Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    const/4 v0, -0x1

    .line 868
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/fragment/widget/CarouselModel;->setCountTextVisible(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    goto :goto_0
.end method

.method public setDefaultTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 593
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTab:Ljava/lang/String;

    .line 594
    iput p1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTabIndex:I

    .line 595
    return-void
.end method

.method public setDefaultTab(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 583
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTab:Ljava/lang/String;

    .line 584
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDefaultTabIndex:I

    .line 585
    return-void
.end method

.method setDragDropAnimationInitState()V
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDragLayer:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->cancelDrag()V

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    if-eqz v0, :cond_1

    .line 964
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mBinGridView:Lcom/htc/fragment/widget/BinGridView;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinGridView;->initFlags()V

    .line 966
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v0, :cond_2

    .line 967
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->forceStopPartialFling()V

    .line 969
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->cancelAnimation()V

    .line 971
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->initFlags()V

    .line 972
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->requestLayout()V

    .line 974
    :cond_2
    return-void
.end method

.method public setEditModeListener(Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1492
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselFragment;->editModeListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;

    .line 1493
    return-void
.end method

.method public setGId(I)V
    .locals 1
    .parameter "gId"

    .prologue
    .line 668
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->setGId(Ljava/lang/String;)V

    .line 669
    return-void
.end method

.method public setGId(Ljava/lang/String;)V
    .locals 3
    .parameter "gId"

    .prologue
    .line 679
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    const-string v1, "gId"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 680
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please invoke setGID() before onCreate(). Invoking in constructor is recommended."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_0
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGID:Ljava/lang/String;

    .line 684
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getGId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/app/LocalFragmentManager;->setGlobalId(Ljava/lang/String;)V

    .line 685
    return-void
.end method

.method setMemoryMode(Z)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 915
    iput-boolean p1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mMemoryMode:Z

    .line 916
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mMemoryMode:Z

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->close()V

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->setMemoryMode(Z)V

    .line 921
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/fragment/widget/CarouselWidget;->setEditorMode(Z)V

    .line 922
    return-void

    .line 921
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnTabChangedListener(Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-nez v0, :cond_0

    .line 1327
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHostOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

    .line 1331
    :goto_0
    return-void

    .line 1329
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mHostOnTabChangeListener:Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/CarouselHost;->setOnTabChangedListener(Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;)V

    goto :goto_0
.end method

.method setWidgetAdapterCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/BinAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1061
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1062
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->hideCarousel()V

    .line 1064
    :cond_0
    return-void
.end method

.method showCarousel()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/high16 v3, 0x3f80

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1352
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselWidget;->getVisibility()I

    move-result v2

    const/16 v5, 0x8

    if-ne v2, v5, :cond_1

    .line 1354
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselFragment;->setOrientation()V

    .line 1355
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v2, v12}, Lcom/htc/fragment/widget/CarouselWidget;->setVisibility(I)V

    .line 1358
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1361
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/ActionBarImpl;

    .line 1363
    .local v9, actionBarImpl:Lcom/android/internal/app/ActionBarImpl;
    invoke-virtual {v9}, Lcom/android/internal/app/ActionBarImpl;->isEnableHTCActionBar()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1364
    invoke-virtual {v9, v1}, Lcom/android/internal/app/ActionBarImpl;->enableHTCLandscape(Z)V

    .line 1369
    .end local v9           #actionBarImpl:Lcom/android/internal/app/ActionBarImpl;
    :cond_0
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1370
    .local v10, animation1:Landroid/view/animation/Animation;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselFragment;->isPortrait:Z

    if-eqz v2, :cond_2

    move v2, v4

    :goto_0
    iget-boolean v5, p0, Lcom/htc/fragment/widget/CarouselFragment;->isPortrait:Z

    if-eqz v5, :cond_3

    move v6, v3

    :goto_1
    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1376
    .local v0, animation2:Landroid/view/animation/Animation;
    new-instance v11, Landroid/view/animation/AnimationSet;

    invoke-direct {v11, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1377
    .local v11, animationset:Landroid/view/animation/AnimationSet;
    invoke-virtual {v11, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1378
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1379
    const-wide/16 v1, 0x12c

    invoke-virtual {v11, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1380
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    invoke-virtual {v1, v11}, Lcom/htc/fragment/widget/CarouselWidget;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1382
    .end local v0           #animation2:Landroid/view/animation/Animation;
    .end local v10           #animation1:Landroid/view/animation/Animation;
    .end local v11           #animationset:Landroid/view/animation/AnimationSet;
    :cond_1
    return-void

    .restart local v10       #animation1:Landroid/view/animation/Animation;
    :cond_2
    move v2, v3

    .line 1370
    goto :goto_0

    :cond_3
    move v6, v4

    goto :goto_1
.end method

.method startQuery()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 421
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->isMemoryMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getWidgetAdapterCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsStartQueryCalled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mMemoryMode:Z

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryAdapter:Lcom/htc/fragment/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter;->getHandler()Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    const/16 v1, 0x385

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselFragment;->mTaskUri:Landroid/net/Uri;

    const-string v5, "is_host=1"

    const-string v7, "task_order"

    move-object v4, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mIsStartQueryCalled:Z

    .line 430
    :cond_1
    return-void
.end method

.method updateWidget(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment;->mGalleryWidget:Lcom/htc/fragment/widget/CarouselWidget;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->setSelection(I)V

    .line 1084
    return-void
.end method
