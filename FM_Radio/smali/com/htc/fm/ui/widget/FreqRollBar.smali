.class public Lcom/htc/fm/ui/widget/FreqRollBar;
.super Landroid/widget/LinearLayout;
.source "FreqRollBar.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/htc/fm/ui/helper/RollBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FMRadio_FreqRollBar"


# instance fields
.field private final SETFREQUENCY:I

.field private final SETSEEKFREQUENCY:I

.field private containershandler:Landroid/os/Handler;

.field private dfdepthZ:F

.field private dfoffsetY:F

.field dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

.field dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

.field dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

.field dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

.field private fddepthZ:F

.field private fdoffsetY:F

.field fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

.field fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

.field fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

.field fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

.field private fudepthZ:F

.field private fuoffsetY:F

.field furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

.field furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

.field furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

.field furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

.field private handleranimation:Z

.field private handlerfreq:I

.field private mActionHandler:Landroid/os/Handler;

.field private mImageIds:[I

.field private mImageIds2:[I

.field private mImageIds3:[I

.field private mImageIds4:[I

.field private mMirrorFace:Lcom/htc/fm/ui/widget/MirrorFace;

.field private mSwitcher:Landroid/widget/ImageSwitcher;

.field private mSwitcher2:Landroid/widget/ImageSwitcher;

.field private mSwitcher3:Landroid/widget/ImageSwitcher;

.field private mSwitcher4:Landroid/widget/ImageSwitcher;

.field private mcontext:Landroid/content/Context;

.field mforwordcurrentindex:I

.field mforwordcurrentindex2:I

.field mforwordcurrentindex3:I

.field mforwordcurrentindex4:I

.field mfreq:I

.field private rotatetime:I

.field private rotatetime2:I

.field private rotatetime3:I

.field private rotatetime4:I

.field private ufdepthZ:F

.field private ufoffsetY:F

.field ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

.field ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

.field ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

.field ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xa

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 537
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->SETFREQUENCY:I

    .line 538
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->SETSEEKFREQUENCY:I

    .line 539
    iput v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->handlerfreq:I

    .line 540
    iput-boolean v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->handleranimation:Z

    .line 541
    new-instance v0, Lcom/htc/fm/ui/widget/FreqRollBar$1;

    invoke-direct {v0, p0}, Lcom/htc/fm/ui/widget/FreqRollBar$1;-><init>(Lcom/htc/fm/ui/widget/FreqRollBar;)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mActionHandler:Landroid/os/Handler;

    .line 702
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds:[I

    .line 704
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds2:[I

    .line 706
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds3:[I

    .line 708
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds4:[I

    .line 63
    iput-object p1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mcontext:Landroid/content/Context;

    .line 64
    const-string v0, "FMRadio_FreqRollBar"

    const-string v1, "[FreqRollBar] constructor "

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void

    .line 702
    nop

    :array_0
    .array-data 0x4
        0x7t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
    .end array-data

    .line 704
    :array_1
    .array-data 0x4
        0x7t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
    .end array-data

    .line 706
    :array_2
    .array-data 0x4
        0x7t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
    .end array-data

    .line 708
    :array_3
    .array-data 0x4
        0x1bt 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attributeset"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xa

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 537
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->SETFREQUENCY:I

    .line 538
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->SETSEEKFREQUENCY:I

    .line 539
    iput v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->handlerfreq:I

    .line 540
    iput-boolean v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->handleranimation:Z

    .line 541
    new-instance v0, Lcom/htc/fm/ui/widget/FreqRollBar$1;

    invoke-direct {v0, p0}, Lcom/htc/fm/ui/widget/FreqRollBar$1;-><init>(Lcom/htc/fm/ui/widget/FreqRollBar;)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mActionHandler:Landroid/os/Handler;

    .line 702
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds:[I

    .line 704
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds2:[I

    .line 706
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds3:[I

    .line 708
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds4:[I

    .line 70
    iput-object p1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mcontext:Landroid/content/Context;

    .line 71
    return-void

    .line 702
    :array_0
    .array-data 0x4
        0x7t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
    .end array-data

    .line 704
    :array_1
    .array-data 0x4
        0x7t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
    .end array-data

    .line 706
    :array_2
    .array-data 0x4
        0x7t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
    .end array-data

    .line 708
    :array_3
    .array-data 0x4
        0x1bt 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$100(Lcom/htc/fm/ui/widget/FreqRollBar;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/fm/ui/widget/FreqRollBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->handlerfreq:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/fm/ui/widget/FreqRollBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->handleranimation:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/fm/ui/widget/FreqRollBar;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/htc/fm/ui/widget/FreqRollBar;->setFreqInternal(IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/fm/ui/widget/FreqRollBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/htc/fm/ui/widget/FreqRollBar;->setFreqbySeekInternal(I)V

    return-void
.end method

.method private setFreqInternal(IZ)V
    .locals 24
    .parameter "freq"
    .parameter "useAnimation"

    .prologue
    .line 574
    const-string v20, "FMRadio_FreqRollBar"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[setFreq]:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mfreq:I

    .line 578
    .local v13, originalfreq:I
    move/from16 v0, p1

    if-eq v13, v0, :cond_1

    .line 580
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fm/ui/widget/FreqRollBar;->mfreq:I

    .line 582
    move/from16 v0, p1

    if-ge v13, v0, :cond_0

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 615
    :goto_0
    move/from16 v0, p1

    div-int/lit16 v14, v0, 0x3e8

    .line 616
    .local v14, p1:I
    move/from16 v0, p1

    rem-int/lit16 v15, v0, 0x3e8

    .line 622
    .local v15, r:I
    div-int/lit8 v5, v15, 0x64

    .line 624
    .local v5, forwordcurrentindex:I
    rem-int/lit8 v6, v14, 0xa

    .line 625
    .local v6, forwordcurrentindex2:I
    div-int/lit8 v20, v14, 0xa

    rem-int/lit8 v7, v20, 0xa

    .line 626
    .local v7, forwordcurrentindex3:I
    div-int/lit8 v8, v14, 0x64

    .line 628
    .local v8, forwordcurrentindex4:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1f

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 631
    .local v9, msg:Landroid/os/Message;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 633
    .local v3, TimeStampOfUiStartingAdjust:J
    new-instance v16, Lcom/htc/fm/ui/widget/RotateSeed;

    invoke-direct/range {v16 .. v16}, Lcom/htc/fm/ui/widget/RotateSeed;-><init>()V

    .line 634
    .local v16, seed:Lcom/htc/fm/ui/widget/RotateSeed;
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/fm/ui/widget/RotateSeed;->Switcher:I

    .line 635
    move-object/from16 v0, v16

    iput v5, v0, Lcom/htc/fm/ui/widget/RotateSeed;->number:I

    .line 636
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 637
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    .line 640
    move-object/from16 v0, v16

    iput-wide v3, v0, Lcom/htc/fm/ui/widget/RotateSeed;->TimeStampOfUIStartingAdjust:J

    .line 642
    move-object/from16 v0, v16

    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 645
    const-string v20, "FMRadio_FreqRollBar"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[setFreq]TimeStampOfUIStartingAdjust:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/htc/fm/ui/widget/RotateSeed;->TimeStampOfUIStartingAdjust:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1f

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 651
    .local v10, msg2:Landroid/os/Message;
    new-instance v17, Lcom/htc/fm/ui/widget/RotateSeed;

    invoke-direct/range {v17 .. v17}, Lcom/htc/fm/ui/widget/RotateSeed;-><init>()V

    .line 652
    .local v17, seed2:Lcom/htc/fm/ui/widget/RotateSeed;
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/fm/ui/widget/RotateSeed;->Switcher:I

    .line 653
    move-object/from16 v0, v17

    iput v6, v0, Lcom/htc/fm/ui/widget/RotateSeed;->number:I

    .line 654
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime2:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 655
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    .line 656
    move-object/from16 v0, v17

    iput-wide v3, v0, Lcom/htc/fm/ui/widget/RotateSeed;->TimeStampOfUIStartingAdjust:J

    .line 657
    move-object/from16 v0, v17

    iput-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 659
    if-eqz p2, :cond_2

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x50

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v10, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 664
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1f

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 666
    .local v11, msg3:Landroid/os/Message;
    new-instance v18, Lcom/htc/fm/ui/widget/RotateSeed;

    invoke-direct/range {v18 .. v18}, Lcom/htc/fm/ui/widget/RotateSeed;-><init>()V

    .line 667
    .local v18, seed3:Lcom/htc/fm/ui/widget/RotateSeed;
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/fm/ui/widget/RotateSeed;->Switcher:I

    .line 668
    move-object/from16 v0, v18

    iput v7, v0, Lcom/htc/fm/ui/widget/RotateSeed;->number:I

    .line 669
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime3:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 670
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    .line 671
    move-object/from16 v0, v18

    iput-wide v3, v0, Lcom/htc/fm/ui/widget/RotateSeed;->TimeStampOfUIStartingAdjust:J

    .line 672
    move-object/from16 v0, v18

    iput-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 674
    if-eqz p2, :cond_3

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0xa0

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v11, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 679
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1f

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 681
    .local v12, msg4:Landroid/os/Message;
    new-instance v19, Lcom/htc/fm/ui/widget/RotateSeed;

    invoke-direct/range {v19 .. v19}, Lcom/htc/fm/ui/widget/RotateSeed;-><init>()V

    .line 682
    .local v19, seed4:Lcom/htc/fm/ui/widget/RotateSeed;
    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/htc/fm/ui/widget/RotateSeed;->Switcher:I

    .line 683
    move-object/from16 v0, v19

    iput v8, v0, Lcom/htc/fm/ui/widget/RotateSeed;->number:I

    .line 684
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime4:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/htc/fm/ui/widget/RotateSeed;->RotateDuration:I

    .line 685
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/fm/ui/widget/RotateSeed;->InterpolatorType:I

    .line 686
    move-object/from16 v0, v19

    iput-wide v3, v0, Lcom/htc/fm/ui/widget/RotateSeed;->TimeStampOfUIStartingAdjust:J

    .line 687
    move-object/from16 v0, v19

    iput-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 691
    if-eqz p2, :cond_4

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0xd2

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 695
    .end local v3           #TimeStampOfUiStartingAdjust:J
    .end local v5           #forwordcurrentindex:I
    .end local v6           #forwordcurrentindex2:I
    .end local v7           #forwordcurrentindex3:I
    .end local v8           #forwordcurrentindex4:I
    .end local v9           #msg:Landroid/os/Message;
    .end local v10           #msg2:Landroid/os/Message;
    .end local v11           #msg3:Landroid/os/Message;
    .end local v12           #msg4:Landroid/os/Message;
    .end local v14           #p1:I
    .end local v15           #r:I
    .end local v16           #seed:Lcom/htc/fm/ui/widget/RotateSeed;
    .end local v17           #seed2:Lcom/htc/fm/ui/widget/RotateSeed;
    .end local v18           #seed3:Lcom/htc/fm/ui/widget/RotateSeed;
    .end local v19           #seed4:Lcom/htc/fm/ui/widget/RotateSeed;
    :goto_3
    return-void

    .line 597
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 611
    :cond_1
    const-string v20, "FMRadio_FreqRollBar"

    const-string v21, "[FMRadio][RollBar] Don\'t have to update"

    invoke-static/range {v20 .. v21}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 662
    .restart local v3       #TimeStampOfUiStartingAdjust:J
    .restart local v5       #forwordcurrentindex:I
    .restart local v6       #forwordcurrentindex2:I
    .restart local v7       #forwordcurrentindex3:I
    .restart local v8       #forwordcurrentindex4:I
    .restart local v9       #msg:Landroid/os/Message;
    .restart local v10       #msg2:Landroid/os/Message;
    .restart local v14       #p1:I
    .restart local v15       #r:I
    .restart local v16       #seed:Lcom/htc/fm/ui/widget/RotateSeed;
    .restart local v17       #seed2:Lcom/htc/fm/ui/widget/RotateSeed;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v10, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 677
    .restart local v11       #msg3:Landroid/os/Message;
    .restart local v18       #seed3:Lcom/htc/fm/ui/widget/RotateSeed;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v11, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 694
    .restart local v12       #msg4:Landroid/os/Message;
    .restart local v19       #seed4:Lcom/htc/fm/ui/widget/RotateSeed;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3
.end method

.method private setFreqbySeekInternal(I)V
    .locals 23
    .parameter "freq"

    .prologue
    .line 416
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mfreq:I

    .line 417
    .local v13, originalfreq:I
    const-string v20, "FMRadio_FreqRollBar"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[setFreqbySeek] :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    move/from16 v0, p1

    if-eq v13, v0, :cond_6

    .line 420
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/fm/ui/widget/FreqRollBar;->mfreq:I

    .line 422
    move/from16 v0, p1

    if-ge v13, v0, :cond_4

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 450
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mMirrorFace:Lcom/htc/fm/ui/widget/MirrorFace;

    move-object/from16 v21, v0

    move/from16 v0, p1

    if-ge v13, v0, :cond_5

    const/16 v20, 0x1

    :goto_1
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/MirrorFace;->setRotateDirection(Z)V

    .line 457
    move/from16 v0, p1

    div-int/lit16 v14, v0, 0x3e8

    .line 458
    .local v14, p1:I
    move/from16 v0, p1

    rem-int/lit16 v15, v0, 0x3e8

    .line 464
    .local v15, r:I
    div-int/lit8 v5, v15, 0x64

    .line 466
    .local v5, forwordcurrentindex:I
    rem-int/lit8 v6, v14, 0xa

    .line 467
    .local v6, forwordcurrentindex2:I
    div-int/lit8 v20, v14, 0xa

    rem-int/lit8 v7, v20, 0xa

    .line 468
    .local v7, forwordcurrentindex3:I
    div-int/lit8 v8, v14, 0x64

    .line 472
    .local v8, forwordcurrentindex4:I
    div-int/lit16 v14, v13, 0x3e8

    .line 473
    rem-int/lit16 v15, v13, 0x3e8

    .line 479
    div-int/lit8 v9, v15, 0x64

    .line 481
    .local v9, nowcurrentindex:I
    rem-int/lit8 v10, v14, 0xa

    .line 482
    .local v10, nowcurrentindex2:I
    div-int/lit8 v20, v14, 0xa

    rem-int/lit8 v11, v20, 0xa

    .line 483
    .local v11, nowcurrentindex3:I
    div-int/lit8 v12, v14, 0x64

    .line 485
    .local v12, nowcurrentindex4:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 486
    .local v3, TimeStampOfUIStartingAdjust:J
    const-string v20, "FMRadio_FreqRollBar"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[setFreqbySeek]TimeStampOfUIStartingAdjust:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    if-eq v9, v5, :cond_0

    .line 490
    new-instance v16, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;-><init>(Lcom/htc/fm/ui/widget/FreqRollBar;Lcom/htc/fm/ui/widget/FreqRollBar$1;)V

    .line 491
    .local v16, rotatethread:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    const/16 v21, 0x0

    move/from16 v0, p1

    if-ge v13, v0, :cond_7

    const/16 v20, 0x1

    :goto_2
    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v9, v5}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->setSwitcher(IZII)V

    .line 492
    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->setTimeStampOfUIStartingAdjust(J)V

    .line 493
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->setNextRotateTime(I)V

    .line 494
    invoke-virtual/range {v16 .. v16}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->start()V

    .line 497
    .end local v16           #rotatethread:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    :cond_0
    if-eq v10, v6, :cond_1

    .line 498
    new-instance v17, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;-><init>(Lcom/htc/fm/ui/widget/FreqRollBar;Lcom/htc/fm/ui/widget/FreqRollBar$1;)V

    .line 499
    .local v17, rotatethread2:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    const/16 v21, 0x1

    move/from16 v0, p1

    if-ge v13, v0, :cond_8

    const/16 v20, 0x1

    :goto_3
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v10, v6}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->setSwitcher(IZII)V

    .line 500
    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->setTimeStampOfUIStartingAdjust(J)V

    .line 501
    const/16 v20, 0x50

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->setNextRotateTime(I)V

    .line 502
    invoke-virtual/range {v17 .. v17}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->start()V

    .line 505
    .end local v17           #rotatethread2:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    :cond_1
    if-eq v11, v7, :cond_2

    .line 506
    new-instance v18, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;-><init>(Lcom/htc/fm/ui/widget/FreqRollBar;Lcom/htc/fm/ui/widget/FreqRollBar$1;)V

    .line 507
    .local v18, rotatethread3:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    const/16 v21, 0x2

    move/from16 v0, p1

    if-ge v13, v0, :cond_9

    const/16 v20, 0x1

    :goto_4
    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v11, v7}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->setSwitcher(IZII)V

    .line 508
    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->setTimeStampOfUIStartingAdjust(J)V

    .line 509
    const/16 v20, 0xa0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->setNextRotateTime(I)V

    .line 510
    invoke-virtual/range {v18 .. v18}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->start()V

    .line 513
    .end local v18           #rotatethread3:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    :cond_2
    if-eq v12, v8, :cond_3

    .line 514
    new-instance v19, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;-><init>(Lcom/htc/fm/ui/widget/FreqRollBar;Lcom/htc/fm/ui/widget/FreqRollBar$1;)V

    .line 515
    .local v19, rotatethread4:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    const/16 v21, 0x3

    move/from16 v0, p1

    if-ge v13, v0, :cond_a

    const/16 v20, 0x1

    :goto_5
    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v12, v8}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->setSwitcher(IZII)V

    .line 516
    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->setTimeStampOfUIStartingAdjust(J)V

    .line 517
    const/16 v20, 0xd2

    invoke-virtual/range {v19 .. v20}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->setNextRotateTime(I)V

    .line 518
    invoke-virtual/range {v19 .. v19}, Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;->start()V

    .line 522
    .end local v3           #TimeStampOfUIStartingAdjust:J
    .end local v5           #forwordcurrentindex:I
    .end local v6           #forwordcurrentindex2:I
    .end local v7           #forwordcurrentindex3:I
    .end local v8           #forwordcurrentindex4:I
    .end local v9           #nowcurrentindex:I
    .end local v10           #nowcurrentindex2:I
    .end local v11           #nowcurrentindex3:I
    .end local v12           #nowcurrentindex4:I
    .end local v14           #p1:I
    .end local v15           #r:I
    .end local v19           #rotatethread4:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    :cond_3
    :goto_6
    return-void

    .line 437
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 450
    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 453
    :cond_6
    const-string v20, "FMRadio_FreqRollBar"

    const-string v21, "[FMRadio][RollBar] Don\'t have to update"

    invoke-static/range {v20 .. v21}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 491
    .restart local v3       #TimeStampOfUIStartingAdjust:J
    .restart local v5       #forwordcurrentindex:I
    .restart local v6       #forwordcurrentindex2:I
    .restart local v7       #forwordcurrentindex3:I
    .restart local v8       #forwordcurrentindex4:I
    .restart local v9       #nowcurrentindex:I
    .restart local v10       #nowcurrentindex2:I
    .restart local v11       #nowcurrentindex3:I
    .restart local v12       #nowcurrentindex4:I
    .restart local v14       #p1:I
    .restart local v15       #r:I
    .restart local v16       #rotatethread:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 499
    .end local v16           #rotatethread:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    .restart local v17       #rotatethread2:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    :cond_8
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 507
    .end local v17           #rotatethread2:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    .restart local v18       #rotatethread3:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 515
    .end local v18           #rotatethread3:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    .restart local v19       #rotatethread4:Lcom/htc/fm/ui/widget/FreqRollBar$RotateThread;
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_5
.end method


# virtual methods
.method public OnCreate(ZI)V
    .locals 10
    .parameter "bIsPortrait"
    .parameter "freq"

    .prologue
    .line 128
    const/16 v0, 0x46

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime:I

    .line 129
    const/16 v0, 0x46

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime2:I

    .line 130
    const/16 v0, 0x46

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime3:I

    .line 131
    const/16 v0, 0x46

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime4:I

    .line 133
    const v0, 0x7f050013

    invoke-virtual {p0, v0}, Lcom/htc/fm/ui/widget/FreqRollBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    .line 134
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 137
    const v0, 0x7f050012

    invoke-virtual {p0, v0}, Lcom/htc/fm/ui/widget/FreqRollBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    .line 138
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 141
    const v0, 0x7f050011

    invoke-virtual {p0, v0}, Lcom/htc/fm/ui/widget/FreqRollBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    .line 142
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 145
    const v0, 0x7f050010

    invoke-virtual {p0, v0}, Lcom/htc/fm/ui/widget/FreqRollBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    .line 146
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 149
    const/4 v3, 0x0

    .line 150
    .local v3, upCenterX:F
    const/4 v4, 0x0

    .line 152
    .local v4, upCenterY:F
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/htc/fm/ui/widget/FreqRollBar;->getInt(I)I

    move-result v0

    int-to-float v4, v0

    .line 154
    new-instance v0, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fddepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    .line 155
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setDuration(J)V

    .line 156
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setFillAfter(Z)V

    .line 157
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 159
    new-instance v0, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fddepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    .line 160
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime2:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setDuration(J)V

    .line 161
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setFillAfter(Z)V

    .line 162
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 164
    new-instance v0, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fddepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    .line 165
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime3:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setDuration(J)V

    .line 166
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setFillAfter(Z)V

    .line 167
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 169
    new-instance v0, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fddepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    .line 170
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime4:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setDuration(J)V

    .line 171
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setFillAfter(Z)V

    .line 172
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 174
    new-instance v0, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    .line 175
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setDuration(J)V

    .line 176
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setFillAfter(Z)V

    .line 177
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 179
    new-instance v0, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    .line 180
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime2:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setDuration(J)V

    .line 181
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setFillAfter(Z)V

    .line 182
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 184
    new-instance v0, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    .line 185
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime3:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setDuration(J)V

    .line 186
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setFillAfter(Z)V

    .line 187
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 189
    new-instance v0, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    .line 190
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime4:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setDuration(J)V

    .line 191
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setFillAfter(Z)V

    .line 192
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 194
    new-instance v0, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b4

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fudepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fuoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    .line 195
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setDuration(J)V

    .line 196
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setFillAfter(Z)V

    .line 197
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 199
    new-instance v0, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b4

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fudepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fuoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    .line 200
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime2:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setDuration(J)V

    .line 201
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setFillAfter(Z)V

    .line 202
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 204
    new-instance v0, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b4

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fudepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fuoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    .line 205
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime3:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setDuration(J)V

    .line 206
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setFillAfter(Z)V

    .line 207
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 209
    new-instance v0, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b4

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fudepthZ:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fuoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    .line 210
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime4:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setDuration(J)V

    .line 211
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setFillAfter(Z)V

    .line 212
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 214
    new-instance v0, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    const/high16 v1, -0x3d4c

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    .line 215
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setDuration(J)V

    .line 216
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setFillAfter(Z)V

    .line 217
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 219
    new-instance v0, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    const/high16 v1, -0x3d4c

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    .line 220
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime2:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setDuration(J)V

    .line 221
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setFillAfter(Z)V

    .line 222
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 224
    new-instance v0, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    const/high16 v1, -0x3d4c

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    .line 225
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime3:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setDuration(J)V

    .line 226
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setFillAfter(Z)V

    .line 227
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 229
    new-instance v0, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    const/high16 v1, -0x3d4c

    const/4 v2, 0x0

    iget v5, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfdepthZ:F

    const/4 v6, 0x1

    iget v7, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfoffsetY:F

    invoke-direct/range {v0 .. v7}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;-><init>(FFFFFZF)V

    iput-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    .line 230
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    iget v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime4:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setDuration(J)V

    .line 231
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setFillAfter(Z)V

    .line 232
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 234
    iput p2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mfreq:I

    .line 236
    iget v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mfreq:I

    div-int/lit16 v8, v0, 0x3e8

    .line 237
    .local v8, p1:I
    iget v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mfreq:I

    rem-int/lit16 v9, v0, 0x3e8

    .line 243
    .local v9, r:I
    div-int/lit8 v0, v9, 0x64

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex:I

    .line 245
    rem-int/lit8 v0, v8, 0xa

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex2:I

    .line 246
    div-int/lit8 v0, v8, 0xa

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex3:I

    .line 247
    div-int/lit8 v0, v8, 0x64

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex4:I

    .line 249
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 250
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 252
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 253
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 255
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 256
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 258
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 259
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 261
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds:[I

    iget v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 262
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds2:[I

    iget v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex2:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 263
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds3:[I

    iget v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex3:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 264
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds4:[I

    iget v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex4:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 266
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime:I

    .line 267
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime2:I

    .line 268
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime3:I

    .line 269
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime4:I

    .line 270
    return-void
.end method

.method public RotateSwitcher(IIII)Z
    .locals 5
    .parameter "SWITCHER"
    .parameter "forwordcurrentindex"
    .parameter "duration"
    .parameter "InterpolatorType"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 276
    const-string v2, "FMRadio_FreqRollBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RotateSwitcher]+SWITCHER "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " duration:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    if-nez p1, :cond_1

    .line 278
    const-string v2, "FMRadio_FreqRollBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RotateSwitcher] mforwordcurrentindex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " forwordcurrentindex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex:I

    if-eq v2, p2, :cond_0

    .line 281
    iput p2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex:I

    .line 282
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setDuration(J)V

    .line 283
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setDuration(J)V

    .line 284
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setDuration(J)V

    .line 285
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setDuration(J)V

    .line 286
    invoke-virtual {p0, p1, p4}, Lcom/htc/fm/ui/widget/FreqRollBar;->setSwitcherInterpolatorType(II)V

    .line 287
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds:[I

    iget v3, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 336
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 290
    goto :goto_0

    .line 293
    :cond_1
    if-ne p1, v0, :cond_3

    .line 294
    iget v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex2:I

    if-eq v2, p2, :cond_2

    .line 295
    iput p2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex2:I

    .line 296
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setDuration(J)V

    .line 297
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setDuration(J)V

    .line 298
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setDuration(J)V

    .line 299
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setDuration(J)V

    .line 300
    invoke-virtual {p0, p1, p4}, Lcom/htc/fm/ui/widget/FreqRollBar;->setSwitcherInterpolatorType(II)V

    .line 301
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher2:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds2:[I

    iget v3, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex2:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 304
    goto :goto_0

    .line 307
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 308
    iget v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex3:I

    if-eq v2, p2, :cond_4

    .line 309
    iput p2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex3:I

    .line 310
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setDuration(J)V

    .line 311
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setDuration(J)V

    .line 312
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setDuration(J)V

    .line 313
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setDuration(J)V

    .line 314
    invoke-virtual {p0, p1, p4}, Lcom/htc/fm/ui/widget/FreqRollBar;->setSwitcherInterpolatorType(II)V

    .line 315
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher3:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds3:[I

    iget v3, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex3:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 318
    goto :goto_0

    .line 321
    :cond_5
    const/4 v2, 0x3

    if-ne p1, v2, :cond_7

    .line 322
    const-string v2, "FMRadio_FreqRollBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RotateSwitcher] mforwordcurrentindex4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex4:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " forwordcurrentindex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex4:I

    if-eq v2, p2, :cond_6

    .line 324
    iput p2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex4:I

    .line 325
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setDuration(J)V

    .line 326
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setDuration(J)V

    .line 327
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setDuration(J)V

    .line 328
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setDuration(J)V

    .line 329
    invoke-virtual {p0, p1, p4}, Lcom/htc/fm/ui/widget/FreqRollBar;->setSwitcherInterpolatorType(II)V

    .line 330
    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mSwitcher4:Landroid/widget/ImageSwitcher;

    iget-object v2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mImageIds4:[I

    iget v3, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mforwordcurrentindex4:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 333
    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 336
    goto/16 :goto_0
.end method

.method public SetXasisRotationAngle(IFF)V
    .locals 0
    .parameter "direction"
    .parameter "DepthZ"
    .parameter "OffsetY"

    .prologue
    .line 106
    packed-switch p1, :pswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 108
    :pswitch_0
    iput p2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufdepthZ:F

    .line 109
    iput p3, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufoffsetY:F

    goto :goto_0

    .line 112
    :pswitch_1
    iput p2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fddepthZ:F

    .line 113
    iput p3, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdoffsetY:F

    goto :goto_0

    .line 116
    :pswitch_2
    iput p2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfdepthZ:F

    .line 117
    iput p3, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfoffsetY:F

    goto :goto_0

    .line 120
    :pswitch_3
    iput p2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fudepthZ:F

    .line 121
    iput p3, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fuoffsetY:F

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getFrequency()I
    .locals 1

    .prologue
    .line 905
    iget v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mfreq:I

    return v0
.end method

.method getInt(I)I
    .locals 1
    .parameter "integer"

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/htc/fm/ui/widget/FreqRollBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getRotateTime()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime:I

    return v0
.end method

.method public makeView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 74
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mcontext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 75
    .local v0, i:Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 76
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 78
    return-object v0
.end method

.method public setFreq(I)V
    .locals 1
    .parameter "freq"

    .prologue
    .line 526
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/fm/ui/widget/FreqRollBar;->setFreq(IZ)V

    .line 527
    return-void
.end method

.method public setFreq(IZ)V
    .locals 2
    .parameter "freq"
    .parameter "useAnimation"

    .prologue
    .line 530
    iget v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->handlerfreq:I

    if-ne v0, p1, :cond_0

    .line 535
    :goto_0
    return-void

    .line 532
    :cond_0
    iput p1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->handlerfreq:I

    .line 533
    iput-boolean p2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->handleranimation:Z

    .line 534
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mActionHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setFreqbySeek(I)V
    .locals 2
    .parameter "freq"

    .prologue
    .line 405
    iput p1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->handlerfreq:I

    .line 406
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mActionHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 407
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->containershandler:Landroid/os/Handler;

    .line 91
    return-void
.end method

.method public setMirror(Lcom/htc/fm/ui/widget/MirrorFace;)V
    .locals 0
    .parameter "Mirrorface"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->mMirrorFace:Lcom/htc/fm/ui/widget/MirrorFace;

    .line 83
    return-void
.end method

.method public setRotateTime(IIII)V
    .locals 0
    .parameter "Rotatetime"
    .parameter "Rotatetime2"
    .parameter "Rotatetime3"
    .parameter "Rotatetime4"

    .prologue
    .line 94
    iput p1, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime:I

    .line 95
    iput p2, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime2:I

    .line 96
    iput p3, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime3:I

    .line 97
    iput p4, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->rotatetime4:I

    .line 98
    return-void
.end method

.method public setSwitcherInterpolatorType(II)V
    .locals 3
    .parameter "Switcher"
    .parameter "InterpolatorType"

    .prologue
    const/high16 v2, 0x4000

    .line 341
    packed-switch p2, :pswitch_data_0

    .line 402
    :goto_0
    return-void

    .line 343
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 345
    :pswitch_1
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 346
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 347
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 348
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 351
    :pswitch_2
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 352
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 353
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 354
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 357
    :pswitch_3
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 358
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 359
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 360
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 363
    :pswitch_4
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 364
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 365
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 366
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 373
    :pswitch_5
    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    .line 375
    :pswitch_6
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 376
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 377
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 378
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 381
    :pswitch_7
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation2:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 382
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation2:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 383
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation2:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 384
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation2:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 387
    :pswitch_8
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation3:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 388
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation3:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 389
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation3:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 390
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation3:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 393
    :pswitch_9
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->ufrotation4:Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateUpToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 394
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->fdrotation4:Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 395
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->dfrotation4:Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateDownToFrontAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 396
    iget-object v0, p0, Lcom/htc/fm/ui/widget/FreqRollBar;->furotation4:Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/widget/RotateFrontToUpAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
    .end packed-switch

    .line 343
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 373
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
