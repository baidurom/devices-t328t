.class public Lcom/htc/app/mf/Animation;
.super Ljava/lang/Object;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/mf/Animation$ViewCacheHdr;,
        Lcom/htc/app/mf/Animation$LayoutWrapper;,
        Lcom/htc/app/mf/Animation$WindowCallback;,
        Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAnimEnd_Runner;,
        Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;,
        Lcom/htc/app/mf/Animation$Ent_ActWin_OnAnimEnd_Runner;,
        Lcom/htc/app/mf/Animation$Ent_ActWin_OnAttached_Runner;,
        Lcom/htc/app/mf/Animation$Ent_ReAttachActWin_Runner;,
        Lcom/htc/app/mf/Animation$Ent_CacheWin_OnAttached_Runner;,
        Lcom/htc/app/mf/Animation$StartFragmentParams;,
        Lcom/htc/app/mf/Animation$ResizeParams;,
        Lcom/htc/app/mf/Animation$Params;
    }
.end annotation


# instance fields
.field private mCacheWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/Window;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/app/mf/Animation;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/mf/Animation;->mCacheWindows:Ljava/util/ArrayList;

    .line 822
    return-void
.end method

.method static synthetic access$000(Lcom/htc/app/mf/Animation;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/app/mf/Animation;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/app/mf/Animation;Landroid/view/WindowManager;Landroid/view/Window;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/app/mf/Animation;->reAddWindowInForeground(Landroid/view/WindowManager;Landroid/view/Window;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/app/mf/Animation;Landroid/view/WindowManager;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/app/mf/Animation;->removeOneCacheWindow(Landroid/view/WindowManager;)V

    return-void
.end method

.method static synthetic access$600(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-static {p0, p1}, Lcom/htc/app/mf/Animation;->newCacheView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private addWindowToBackground(Landroid/view/WindowManager;Landroid/view/Window;I)V
    .locals 3
    .parameter "wm"
    .parameter "w"
    .parameter "animations"

    .prologue
    .line 987
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/Window;->setType(I)V

    .line 988
    invoke-virtual {p2, p3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 990
    iget-object v1, p0, Lcom/htc/app/mf/Animation;->mCacheWindows:Ljava/util/ArrayList;

    monitor-enter v1

    .line 991
    :try_start_0
    iget-object v0, p0, Lcom/htc/app/mf/Animation;->mCacheWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 992
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 993
    monitor-exit v1

    .line 994
    return-void

    .line 993
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addWindowToForeground(Landroid/view/WindowManager;Landroid/view/Window;I)V
    .locals 2
    .parameter "wm"
    .parameter "w"
    .parameter "animations"

    .prologue
    .line 999
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/view/Window;->setType(I)V

    .line 1000
    invoke-virtual {p2, p3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 1001
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1002
    return-void
.end method

.method static createAnimSet(Ljava/util/ArrayList;)Landroid/animation/Animator;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .line 1082
    .local p0, anims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1083
    .local v0, animSet:Landroid/animation/AnimatorSet;
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1084
    return-object v0
.end method

.method static createObjAnim(Ljava/lang/Object;Ljava/lang/String;I)Landroid/animation/Animator;
    .locals 3
    .parameter "obj"
    .parameter "s"
    .parameter "to"

    .prologue
    .line 1076
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1077
    .local v0, oa:Landroid/animation/ObjectAnimator;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "anim "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 1078
    return-object v0
.end method

.method private static newCacheView(Landroid/view/View;I)Landroid/view/View;
    .locals 11
    .parameter "v"
    .parameter "top"

    .prologue
    const/4 v10, 0x0

    .line 900
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 902
    .local v1, c:Landroid/content/Context;
    if-nez v1, :cond_0

    .line 903
    const/4 v2, 0x0

    .line 946
    :goto_0
    return-object v2

    .line 906
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 908
    .local v6, start:J
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 910
    .local v2, cache:Landroid/widget/ImageView;
    invoke-virtual {p0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v5

    .line 912
    .local v5, oriEnabled:Z
    invoke-virtual {p0, v10}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 913
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 914
    const/high16 v8, 0x8

    invoke-virtual {p0, v8}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 923
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 925
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 927
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v9, p1

    invoke-static {v0, v10, p1, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 930
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 942
    :goto_1
    invoke-virtual {p0, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 944
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cache view, time="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v6

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 932
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 934
    .local v4, metrics:Landroid/util/DisplayMetrics;
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledMaximumDrawingCacheSize()I

    move-result v3

    .line 937
    .local v3, maxCacheSize:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "drawing cache is null, maxCacheSize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", device.w"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", device.h"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/app/mf/MfLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static newCacheWindow(Landroid/app/Activity;Landroid/view/Window;)Landroid/view/Window;
    .locals 9
    .parameter "a"
    .parameter "ow"

    .prologue
    const/4 v8, 0x1

    .line 952
    invoke-static {p0}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v5

    .line 954
    .local v5, w:Landroid/view/Window;
    invoke-virtual {v5, v8}, Landroid/view/Window;->requestFeature(I)Z

    .line 956
    const/16 v1, 0x18

    .line 961
    .local v1, flag:I
    invoke-virtual {v5, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 963
    const/16 v7, 0x8

    invoke-virtual {p1, v7}, Landroid/view/Window;->hasFeature(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const v4, 0x10202e8

    .line 967
    .local v4, topVId:I
    :goto_0
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 969
    .local v3, topV:Landroid/view/View;
    const/4 v6, 0x0

    .line 971
    .local v6, y:I
    if-eqz v3, :cond_0

    .line 972
    const/4 v7, 0x2

    new-array v2, v7, [I

    .line 973
    .local v2, locs:[I
    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 974
    aget v6, v2, v8

    .line 977
    .end local v2           #locs:[I
    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/htc/app/mf/Animation;->newCacheView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 979
    .local v0, cacheV:Landroid/view/View;
    invoke-virtual {v5, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 981
    return-object v5

    .line 963
    .end local v0           #cacheV:Landroid/view/View;
    .end local v3           #topV:Landroid/view/View;
    .end local v4           #topVId:I
    .end local v6           #y:I
    :cond_1
    const v4, 0x1020002

    goto :goto_0
.end method

.method private reAddWindowInForeground(Landroid/view/WindowManager;Landroid/view/Window;I)V
    .locals 3
    .parameter "wm"
    .parameter "w"
    .parameter "animations"

    .prologue
    .line 1007
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1008
    .local v0, decor:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1010
    .local v1, lps:Landroid/view/WindowManager$LayoutParams;
    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1012
    invoke-virtual {p2, p3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 1013
    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Landroid/view/Window;->setType(I)V

    .line 1015
    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1016
    return-void
.end method

.method private removeOneCacheWindow(Landroid/view/WindowManager;)V
    .locals 5
    .parameter "wm"

    .prologue
    .line 887
    iget-object v3, p0, Lcom/htc/app/mf/Animation;->mCacheWindows:Ljava/util/ArrayList;

    monitor-enter v3

    .line 888
    :try_start_0
    iget-object v2, p0, Lcom/htc/app/mf/Animation;->mCacheWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 889
    iget-object v2, p0, Lcom/htc/app/mf/Animation;->mCacheWindows:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Window;

    .line 890
    .local v1, w:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 892
    .local v0, decor:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 893
    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 896
    .end local v0           #decor:Landroid/view/View;
    .end local v1           #w:Landroid/view/Window;
    :cond_0
    monitor-exit v3

    .line 897
    return-void

    .line 896
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static setTiming(Landroid/animation/Animator;JJ)V
    .locals 2
    .parameter "anim"
    .parameter "refresh"
    .parameter "duration"

    .prologue
    .line 1089
    invoke-static {p1, p2}, Landroid/animation/ObjectAnimator;->setFrameDelay(J)V

    .line 1090
    invoke-virtual {p0, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1091
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x4040

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1092
    return-void
.end method


# virtual methods
.method cancelWindowTransition(Landroid/app/Activity;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 1070
    invoke-virtual {p0, p1}, Lcom/htc/app/mf/Animation;->removeCacheWindows(Landroid/app/Activity;)V

    .line 1072
    return-void
.end method

.method doWindowEnterTransition(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 6
    .parameter "a"
    .parameter "whenActWinAttached"
    .parameter "whenActWinAnimEnd"

    .prologue
    .line 1021
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    .line 1023
    .local v4, wm:Landroid/view/WindowManager;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1025
    .local v3, realW:Landroid/view/Window;
    invoke-static {p1, v3}, Lcom/htc/app/mf/Animation;->newCacheWindow(Landroid/app/Activity;Landroid/view/Window;)Landroid/view/Window;

    move-result-object v0

    .line 1027
    .local v0, cacheW:Landroid/view/Window;
    new-instance v2, Lcom/htc/app/mf/Animation$Ent_CacheWin_OnAttached_Runner;

    invoke-direct {v2, p0, v3, p2, p3}, Lcom/htc/app/mf/Animation$Ent_CacheWin_OnAttached_Runner;-><init>(Lcom/htc/app/mf/Animation;Landroid/view/Window;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1030
    .local v2, r:Ljava/lang/Runnable;
    new-instance v1, Lcom/htc/app/mf/Animation$WindowCallback;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5}, Lcom/htc/app/mf/Animation$WindowCallback;-><init>(Lcom/htc/app/mf/Animation;Landroid/view/Window$Callback;)V

    .line 1031
    .local v1, cb:Lcom/htc/app/mf/Animation$WindowCallback;
    invoke-virtual {v1, v2}, Lcom/htc/app/mf/Animation$WindowCallback;->setOnAttachedRunner(Ljava/lang/Runnable;)V

    .line 1033
    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 1035
    invoke-virtual {v0, v1}, Landroid/view/Window;->setHtcCallback(Landroid/view/Window$HtcCallback;)V

    .line 1037
    const v5, 0x20300d0

    invoke-direct {p0, v4, v0, v5}, Lcom/htc/app/mf/Animation;->addWindowToBackground(Landroid/view/WindowManager;Landroid/view/Window;I)V

    .line 1038
    return-void
.end method

.method doWindowExitTransition(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 6
    .parameter "a"
    .parameter "whenCacheWinAttached"
    .parameter "whenCacheWinAnimEnd"

    .prologue
    .line 1043
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    .line 1045
    .local v4, wm:Landroid/view/WindowManager;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1047
    .local v3, realW:Landroid/view/Window;
    invoke-static {p1, v3}, Lcom/htc/app/mf/Animation;->newCacheWindow(Landroid/app/Activity;Landroid/view/Window;)Landroid/view/Window;

    move-result-object v0

    .line 1049
    .local v0, cacheW:Landroid/view/Window;
    new-instance v2, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;

    invoke-direct {v2, p0, v0, v3, p2}, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;-><init>(Lcom/htc/app/mf/Animation;Landroid/view/Window;Landroid/view/Window;Ljava/lang/Runnable;)V

    .line 1052
    .local v2, r:Ljava/lang/Runnable;
    new-instance v1, Lcom/htc/app/mf/Animation$WindowCallback;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5}, Lcom/htc/app/mf/Animation$WindowCallback;-><init>(Lcom/htc/app/mf/Animation;Landroid/view/Window$Callback;)V

    .line 1054
    .local v1, cb:Lcom/htc/app/mf/Animation$WindowCallback;
    new-instance v5, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;

    invoke-direct {v5, p0, v0, v3, p2}, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAttached_Runner;-><init>(Lcom/htc/app/mf/Animation;Landroid/view/Window;Landroid/view/Window;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v5}, Lcom/htc/app/mf/Animation$WindowCallback;->setOnAttachedRunner(Ljava/lang/Runnable;)V

    .line 1057
    new-instance v5, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAnimEnd_Runner;

    invoke-direct {v5, p0, p3}, Lcom/htc/app/mf/Animation$Ext_CacheWin_OnAnimEnd_Runner;-><init>(Lcom/htc/app/mf/Animation;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v5}, Lcom/htc/app/mf/Animation$WindowCallback;->setOnAnimationEndRunner(Ljava/lang/Runnable;)V

    .line 1060
    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 1062
    invoke-virtual {v0, v1}, Landroid/view/Window;->setHtcCallback(Landroid/view/Window$HtcCallback;)V

    .line 1064
    const v5, 0x20300ce

    invoke-direct {p0, v4, v0, v5}, Lcom/htc/app/mf/Animation;->addWindowToForeground(Landroid/view/WindowManager;Landroid/view/Window;I)V

    .line 1065
    return-void
.end method

.method removeCacheWindows(Landroid/app/Activity;)V
    .locals 6
    .parameter "a"

    .prologue
    .line 873
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 874
    .local v2, wm:Landroid/view/WindowManager;
    iget-object v4, p0, Lcom/htc/app/mf/Animation;->mCacheWindows:Ljava/util/ArrayList;

    monitor-enter v4

    .line 875
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/app/mf/Animation;->mCacheWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 876
    iget-object v3, p0, Lcom/htc/app/mf/Animation;->mCacheWindows:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Window;

    .line 877
    .local v1, w:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 879
    .local v0, decor:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 880
    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 883
    .end local v0           #decor:Landroid/view/View;
    .end local v1           #w:Landroid/view/Window;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 884
    return-void
.end method
