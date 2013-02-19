.class public Lcom/htc/weather/ConditionIcon;
.super Landroid/widget/AbsoluteLayout;
.source "ConditionIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/weather/ConditionIcon$AnimationView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConditionIcon"

.field private static final localLOGV:Z


# instance fields
.field private USE_JAVA_ANIMATION:Z

.field private bCountFPS:Z

.field private bNeedFPS:Z

.field private isAnimationReady:Z

.field private mConditionId:I

.field private mDrawCount:I

.field private mEnv:Lcom/htc/weather/EnvSetting$Env;

.field private mImageViews:[Landroid/widget/ImageView;

.field private mInAnimationCount:I

.field private mInAnimationEnd:I

.field private mInAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

.field private mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mInAnimationSets:[Landroid/view/animation/AnimationSet;

.field private mInAnimationStart:I

.field mListMap:Lcom/htc/weather/AnimationList;

.field private mOutAnimationCount:I

.field private mOutAnimationEnd:I

.field private mOutAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

.field private mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mOutAnimationSets:[Landroid/view/animation/AnimationSet;

.field private mOutAnimationStart:I

.field private mRestAnimationSets:[Landroid/view/animation/AnimationSet;

.field private mStartTime:J

.field private mWeatherAnimationData:Lcom/htc/weather/animations/WeatherAnimationData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/AnimationList;)V
    .locals 3
    .parameter "context"
    .parameter "list"

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->USE_JAVA_ANIMATION:Z

    .line 31
    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->isAnimationReady:Z

    .line 32
    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->bNeedFPS:Z

    .line 33
    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->bCountFPS:Z

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/weather/ConditionIcon;->mStartTime:J

    .line 35
    iput v2, p0, Lcom/htc/weather/ConditionIcon;->mDrawCount:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/weather/ConditionIcon;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    .line 78
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/weather/ConditionIcon;->mConditionId:I

    .line 650
    new-instance v0, Lcom/htc/weather/ConditionIcon$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/ConditionIcon$1;-><init>(Lcom/htc/weather/ConditionIcon;)V

    iput-object v0, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    .line 688
    new-instance v0, Lcom/htc/weather/ConditionIcon$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/ConditionIcon$2;-><init>(Lcom/htc/weather/ConditionIcon;)V

    iput-object v0, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    .line 57
    iput-object p2, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    .line 58
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->checkNeedFPS()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/AnimationList;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "list"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, p1, p3}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->USE_JAVA_ANIMATION:Z

    .line 31
    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->isAnimationReady:Z

    .line 32
    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->bNeedFPS:Z

    .line 33
    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->bCountFPS:Z

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/weather/ConditionIcon;->mStartTime:J

    .line 35
    iput v2, p0, Lcom/htc/weather/ConditionIcon;->mDrawCount:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/weather/ConditionIcon;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    .line 78
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/weather/ConditionIcon;->mConditionId:I

    .line 650
    new-instance v0, Lcom/htc/weather/ConditionIcon$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/ConditionIcon$1;-><init>(Lcom/htc/weather/ConditionIcon;)V

    iput-object v0, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    .line 688
    new-instance v0, Lcom/htc/weather/ConditionIcon$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/ConditionIcon$2;-><init>(Lcom/htc/weather/ConditionIcon;)V

    iput-object v0, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    .line 65
    iput-object p2, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    .line 66
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->checkNeedFPS()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/AnimationList;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "list"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0, p1, p3, p4}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->USE_JAVA_ANIMATION:Z

    .line 31
    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->isAnimationReady:Z

    .line 32
    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->bNeedFPS:Z

    .line 33
    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->bCountFPS:Z

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/weather/ConditionIcon;->mStartTime:J

    .line 35
    iput v2, p0, Lcom/htc/weather/ConditionIcon;->mDrawCount:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/weather/ConditionIcon;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    .line 78
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/weather/ConditionIcon;->mConditionId:I

    .line 650
    new-instance v0, Lcom/htc/weather/ConditionIcon$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/ConditionIcon$1;-><init>(Lcom/htc/weather/ConditionIcon;)V

    iput-object v0, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    .line 688
    new-instance v0, Lcom/htc/weather/ConditionIcon$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/ConditionIcon$2;-><init>(Lcom/htc/weather/ConditionIcon;)V

    iput-object v0, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    .line 73
    iput-object p2, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    .line 74
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->checkNeedFPS()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/htc/weather/ConditionIcon;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationEnd:I

    return v0
.end method

.method static synthetic access$008(Lcom/htc/weather/ConditionIcon;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationEnd:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationEnd:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/weather/ConditionIcon;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/weather/ConditionIcon;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/weather/ConditionIcon;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationStart:I

    return v0
.end method

.method static synthetic access$1108(Lcom/htc/weather/ConditionIcon;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationStart:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationStart:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/weather/ConditionIcon;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->bCountFPS:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/weather/ConditionIcon;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->endCountFPS()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/weather/ConditionIcon;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/weather/ConditionIcon;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationStart:I

    return v0
.end method

.method static synthetic access$508(Lcom/htc/weather/ConditionIcon;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationStart:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationStart:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/weather/ConditionIcon;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->bNeedFPS:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/weather/ConditionIcon;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->startCountFPS()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/weather/ConditionIcon;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationEnd:I

    return v0
.end method

.method static synthetic access$808(Lcom/htc/weather/ConditionIcon;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationEnd:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationEnd:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/weather/ConditionIcon;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    return v0
.end method

.method private checkNeedFPS()V
    .locals 3

    .prologue
    .line 766
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/conditionicon.cfg"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 768
    .local v1, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->bNeedFPS:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    const/4 v1, 0x0

    .line 773
    :goto_0
    return-void

    .line 770
    :catch_0
    move-exception v0

    .line 771
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->bNeedFPS:Z

    goto :goto_0
.end method

.method private clearAnimationGroupListener()V
    .locals 2

    .prologue
    .line 617
    iget-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->bNeedFPS:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->bCountFPS:Z

    if-eqz v0, :cond_0

    .line 618
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->endCountFPS()V

    .line 619
    const-string v0, "ConditionIcon"

    const-string v1, "...end count FPS - clearAnimation..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_0
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->clearInAnimationListener()V

    .line 622
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->clearOutAnimationListener()V

    .line 623
    return-void
.end method

.method private clearInAnimationListener()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 590
    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    .line 591
    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationStart:I

    .line 592
    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationEnd:I

    .line 593
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_1

    .line 594
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 595
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 596
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 594
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 600
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method private clearOutAnimationListener()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 603
    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    .line 604
    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationStart:I

    .line 605
    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationEnd:I

    .line 607
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_1

    .line 608
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 609
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 610
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 608
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 614
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method private endCountFPS()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    .line 751
    iget-boolean v5, p0, Lcom/htc/weather/ConditionIcon;->bCountFPS:Z

    if-eqz v5, :cond_1

    .line 752
    const/4 v2, 0x0

    .line 753
    .local v2, fps:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 754
    .local v3, now:J
    iget-wide v5, p0, Lcom/htc/weather/ConditionIcon;->mStartTime:J

    sub-long v0, v3, v5

    .line 755
    .local v0, dur:J
    cmp-long v5, v0, v10

    if-lez v5, :cond_0

    .line 756
    const/high16 v5, 0x447a

    iget v6, p0, Lcom/htc/weather/ConditionIcon;->mDrawCount:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    long-to-float v6, v0

    div-float v2, v5, v6

    .line 758
    :cond_0
    const-string v5, "ConditionIcon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startTime "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/htc/weather/ConditionIcon;->mStartTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ==> FPS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iput-wide v10, p0, Lcom/htc/weather/ConditionIcon;->mStartTime:J

    .line 760
    iput-boolean v9, p0, Lcom/htc/weather/ConditionIcon;->bCountFPS:Z

    .line 761
    iput v9, p0, Lcom/htc/weather/ConditionIcon;->mDrawCount:I

    .line 763
    .end local v0           #dur:J
    .end local v2           #fps:F
    .end local v3           #now:J
    :cond_1
    return-void
.end method

.method private playResetAnimation()V
    .locals 3

    .prologue
    .line 287
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mRestAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_0
    return-void
.end method

.method private setAnimationGroupListener()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 626
    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    .line 627
    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationStart:I

    .line 628
    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationEnd:I

    .line 629
    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    .line 630
    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationStart:I

    .line 631
    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationEnd:I

    .line 632
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_1

    .line 633
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 634
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 636
    iget v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    .line 633
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 640
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_3

    .line 641
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 642
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 643
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 644
    iget v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    .line 641
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 648
    .end local v0           #i:I
    :cond_3
    return-void
.end method

.method private startCountFPS()V
    .locals 2

    .prologue
    .line 745
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/weather/ConditionIcon;->mDrawCount:I

    .line 746
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->bCountFPS:Z

    .line 747
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/weather/ConditionIcon;->mStartTime:J

    .line 748
    return-void
.end method


# virtual methods
.method public destroyConditionIcon()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 556
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->isAnimationReady:Z

    .line 557
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->clearAnimationGroupListener()V

    .line 558
    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    .line 559
    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    .line 560
    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 561
    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 563
    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->getChildCount()I

    move-result v1

    .line 564
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 566
    invoke-virtual {p0, v0}, Lcom/htc/weather/ConditionIcon;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 564
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 568
    :cond_0
    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->clearAnimation()V

    .line 570
    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->removeAllViews()V

    .line 572
    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    .line 573
    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    .line 574
    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mRestAnimationSets:[Landroid/view/animation/AnimationSet;

    .line 575
    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    .line 577
    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    .line 578
    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    .line 579
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 737
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 739
    iget-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->bCountFPS:Z

    if-eqz v0, :cond_0

    .line 740
    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mDrawCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/weather/ConditionIcon;->mDrawCount:I

    .line 742
    :cond_0
    return-void
.end method

.method public isAnimationReady()Z
    .locals 1

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->isAnimationReady:Z

    return v0
.end method

.method public pauseAnimation(ZZ)V
    .locals 0
    .parameter "pauseIn"
    .parameter "pauseOut"

    .prologue
    .line 312
    if-eqz p2, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->pauseOutAnimation()V

    .line 314
    :cond_0
    if-eqz p1, :cond_1

    .line 315
    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->pauseInAnimation()V

    .line 316
    :cond_1
    return-void
.end method

.method public pauseInAnimation()V
    .locals 4

    .prologue
    .line 319
    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 330
    :cond_0
    return-void

    .line 322
    :cond_1
    iget v2, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    if-eqz v2, :cond_0

    .line 323
    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    array-length v1, v2

    .line 324
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 325
    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 326
    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->scaleCurrentDuration(F)V

    .line 324
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public pauseOutAnimation()V
    .locals 4

    .prologue
    .line 337
    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 348
    :cond_0
    return-void

    .line 340
    :cond_1
    iget v2, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    if-eqz v2, :cond_0

    .line 341
    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    array-length v1, v2

    .line 342
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 343
    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 344
    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->scaleCurrentDuration(F)V

    .line 342
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public playInAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 203
    iput v3, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationEnd:I

    .line 204
    iput v3, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationStart:I

    .line 207
    iget v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    if-nez v1, :cond_2

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 233
    :cond_1
    return-void

    .line 212
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 214
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 216
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 212
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public playOutAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 239
    iput v3, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationEnd:I

    .line 240
    iput v3, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationStart:I

    .line 244
    iget v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    if-nez v1, :cond_2

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 279
    :cond_1
    return-void

    .line 249
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 252
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 249
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public resumeAnimation(ZZ)V
    .locals 1
    .parameter "resumeIn"
    .parameter "resumeOut"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mConditionId:I

    if-gez v0, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    if-eqz p1, :cond_2

    .line 361
    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->resumeInAnimation()V

    .line 362
    :cond_2
    if-eqz p2, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->resumeOutAnimation()V

    goto :goto_0
.end method

.method public resumeInAnimation()V
    .locals 7

    .prologue
    .line 367
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    if-nez v4, :cond_1

    .line 401
    :cond_0
    return-void

    .line 370
    :cond_1
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    array-length v0, v4

    .line 371
    .local v0, animCount:I
    if-eqz v0, :cond_0

    .line 374
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    iget v5, p0, Lcom/htc/weather/ConditionIcon;->mConditionId:I

    invoke-virtual {v4, v5}, Lcom/htc/weather/AnimationList;->getWeatherAnimationData(I)Lcom/htc/weather/animations/WeatherAnimationData;

    move-result-object v3

    .line 375
    .local v3, weatherAnimationData:Lcom/htc/weather/animations/WeatherAnimationData;
    if-eqz v3, :cond_0

    .line 377
    invoke-virtual {v3}, Lcom/htc/weather/animations/WeatherAnimationData;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v2

    .line 378
    .local v2, imagesAndAnimationSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-eqz v4, :cond_0

    .line 382
    iget v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationEnd:I

    iget v5, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    if-ge v4, v5, :cond_2

    .line 384
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v4, :cond_2

    .line 385
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 389
    :cond_2
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->clearInAnimationListener()V

    .line 392
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 393
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v4, v4, v1

    if-eqz v4, :cond_3

    .line 394
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v5, v2, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->getInAnimationSet(Z)Landroid/view/animation/AnimationSet;

    move-result-object v5

    aput-object v5, v4, v1

    .line 396
    :cond_3
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v4, v4, v1

    if-eqz v4, :cond_4

    .line 397
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 398
    iget v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    .line 392
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public resumeOutAnimation()V
    .locals 7

    .prologue
    .line 408
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    if-nez v4, :cond_1

    .line 442
    :cond_0
    return-void

    .line 411
    :cond_1
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    array-length v0, v4

    .line 412
    .local v0, animCount:I
    if-eqz v0, :cond_0

    .line 415
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    iget v5, p0, Lcom/htc/weather/ConditionIcon;->mConditionId:I

    invoke-virtual {v4, v5}, Lcom/htc/weather/AnimationList;->getWeatherAnimationData(I)Lcom/htc/weather/animations/WeatherAnimationData;

    move-result-object v3

    .line 416
    .local v3, weatherAnimationData:Lcom/htc/weather/animations/WeatherAnimationData;
    if-eqz v3, :cond_0

    .line 418
    invoke-virtual {v3}, Lcom/htc/weather/animations/WeatherAnimationData;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v2

    .line 419
    .local v2, imagesAndAnimationSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-eqz v4, :cond_0

    .line 423
    iget v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationEnd:I

    iget v5, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    if-ge v4, v5, :cond_2

    .line 425
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v4, :cond_2

    .line 426
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 430
    :cond_2
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->clearOutAnimationListener()V

    .line 433
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 434
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v4, v4, v1

    if-eqz v4, :cond_3

    .line 435
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v5, v2, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->getOutAnimationSet(Z)Landroid/view/animation/AnimationSet;

    move-result-object v5

    aput-object v5, v4, v1

    .line 437
    :cond_3
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v4, v4, v1

    if-eqz v4, :cond_4

    .line 438
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 439
    iget v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    .line 433
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setConditionId(I)V
    .locals 2
    .parameter "conditionId"

    .prologue
    .line 84
    iput p1, p0, Lcom/htc/weather/ConditionIcon;->mConditionId:I

    .line 86
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    invoke-virtual {v1, p1}, Lcom/htc/weather/AnimationList;->getWeatherAnimationData(I)Lcom/htc/weather/animations/WeatherAnimationData;

    move-result-object v0

    .line 89
    .local v0, weatherAnimationData:Lcom/htc/weather/animations/WeatherAnimationData;
    invoke-virtual {p0, v0}, Lcom/htc/weather/ConditionIcon;->setWeatherAnimationData(Lcom/htc/weather/animations/WeatherAnimationData;)V

    .line 91
    .end local v0           #weatherAnimationData:Lcom/htc/weather/animations/WeatherAnimationData;
    :cond_0
    return-void
.end method

.method public setEnv(Lcom/htc/weather/EnvSetting$Env;)V
    .locals 0
    .parameter "env"

    .prologue
    .line 546
    iput-object p1, p0, Lcom/htc/weather/ConditionIcon;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    .line 547
    return-void
.end method

.method public setInAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 582
    iput-object p1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 583
    return-void
.end method

.method public setOutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 586
    iput-object p1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 587
    return-void
.end method

.method public setWeatherAnimationData(Lcom/htc/weather/animations/WeatherAnimationData;)V
    .locals 6
    .parameter "weatherAnimationData"

    .prologue
    const/4 v5, 0x4

    .line 155
    invoke-virtual {p0, v5}, Lcom/htc/weather/ConditionIcon;->setVisibility(I)V

    .line 157
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->clearAnimationGroupListener()V

    .line 159
    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->getChildCount()I

    move-result v2

    .line 160
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 162
    invoke-virtual {p0, v0}, Lcom/htc/weather/ConditionIcon;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->clearAnimation()V

    .line 167
    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->removeAllViews()V

    .line 169
    if-nez p1, :cond_1

    .line 192
    :goto_1
    return-void

    .line 172
    :cond_1
    invoke-virtual {p1}, Lcom/htc/weather/animations/WeatherAnimationData;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v1

    .line 174
    .local v1, imagesAndAnimationSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    array-length v3, v1

    new-array v3, v3, [Landroid/view/animation/AnimationSet;

    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    .line 175
    array-length v3, v1

    new-array v3, v3, [Landroid/view/animation/AnimationSet;

    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    .line 176
    array-length v3, v1

    new-array v3, v3, [Landroid/view/animation/AnimationSet;

    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mRestAnimationSets:[Landroid/view/animation/AnimationSet;

    .line 177
    array-length v3, v1

    new-array v3, v3, [Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    .line 179
    const/4 v0, 0x0

    :goto_2
    array-length v3, v1

    if-ge v0, v3, :cond_3

    .line 180
    iget-object v3, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->getInAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v4

    aput-object v4, v3, v0

    .line 181
    iget-object v3, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->getOutAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v4

    aput-object v4, v3, v0

    .line 182
    iget-object v3, p0, Lcom/htc/weather/ConditionIcon;->mRestAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->getRestAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v4

    aput-object v4, v3, v0

    .line 183
    iget-object v3, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    aput-object v4, v3, v0

    .line 184
    iget-object v3, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    iget-object v3, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v3, v4, :cond_2

    .line 186
    iget-object v3, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 188
    :cond_2
    iget-object v3, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/htc/weather/ConditionIcon;->addView(Landroid/view/View;)V

    .line 189
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/weather/ConditionIcon;->setVisibility(I)V

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 191
    :cond_3
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->setAnimationGroupListener()V

    goto :goto_1
.end method
