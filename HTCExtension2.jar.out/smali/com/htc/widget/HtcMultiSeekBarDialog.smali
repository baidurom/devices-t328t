.class public Lcom/htc/widget/HtcMultiSeekBarDialog;
.super Landroid/app/AlertDialog;
.source "HtcMultiSeekBarDialog.java"


# instance fields
.field private mPortraitIconWidth:I

.field private mRoot:Landroid/view/ViewGroup;

.field private mSuiteCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mPortraitIconWidth:I

    .line 47
    invoke-direct {p0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->init()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mPortraitIconWidth:I

    .line 59
    invoke-direct {p0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->init()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .parameter "context"
    .parameter "cancelable"
    .parameter "cancelListener"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mPortraitIconWidth:I

    .line 72
    invoke-direct {p0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->init()V

    .line 73
    return-void
.end method

.method private addHorizontalDivider()Landroid/widget/ImageView;
    .locals 5

    .prologue
    .line 93
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 94
    .local v0, iv:Landroid/widget/ImageView;
    const v1, 0x2080035

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 96
    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 100
    .end local v0           #iv:Landroid/widget/ImageView;
    :goto_0
    return-object v0

    .line 99
    .restart local v0       #iv:Landroid/widget/ImageView;
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mRoot:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private findViewById(II)Landroid/view/View;
    .locals 2
    .parameter "nIndex"
    .parameter "nID"

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcMultiSeekBarDialog;->findViewGroupById(I)Landroid/view/ViewGroup;

    move-result-object v1

    .line 198
    .local v1, vg:Landroid/view/ViewGroup;
    if-nez v1, :cond_0

    .line 199
    const/4 v0, 0x0

    .line 202
    :goto_0
    return-object v0

    .line 201
    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 202
    .local v0, v:Landroid/view/View;
    goto :goto_0
.end method

.method private findViewGroupById(I)Landroid/view/ViewGroup;
    .locals 7
    .parameter "nIndex"

    .prologue
    const/4 v5, 0x0

    .line 171
    iget-object v6, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mRoot:Landroid/view/ViewGroup;

    if-nez v6, :cond_1

    move-object v4, v5

    .line 187
    :cond_0
    :goto_0
    return-object v4

    .line 174
    :cond_1
    iget-object v6, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 175
    .local v1, nCount:I
    const/4 v2, 0x0

    .line 176
    .local v2, nSuiteIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 177
    iget-object v6, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 178
    .local v3, v:Landroid/view/View;
    instance-of v6, v3, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    move-object v4, v3

    .line 179
    check-cast v4, Landroid/view/ViewGroup;

    .line 180
    .local v4, vg:Landroid/view/ViewGroup;
    if-eq v2, p1, :cond_0

    .line 183
    add-int/lit8 v2, v2, 0x1

    .line 176
    .end local v4           #vg:Landroid/view/ViewGroup;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v3           #v:Landroid/view/View;
    :cond_3
    move-object v4, v5

    .line 187
    goto :goto_0
.end method

.method private getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mSuiteCount:I

    .line 37
    invoke-direct {p0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->initRoot()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mRoot:Landroid/view/ViewGroup;

    .line 38
    iget v0, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mSuiteCount:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->addNewSuite(I)V

    .line 39
    return-void
.end method

.method private initRoot()Landroid/view/ViewGroup;
    .locals 3

    .prologue
    .line 79
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, ll:Landroid/widget/LinearLayout;
    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t allocate the root view"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v0, 0x0

    .line 86
    .end local v0           #ll:Landroid/widget/LinearLayout;
    :goto_0
    return-object v0

    .line 85
    .restart local v0       #ll:Landroid/widget/LinearLayout;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0
.end method

.method private setDialogLayout()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 396
    invoke-virtual {p0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 397
    .local v5, w:Landroid/view/Window;
    if-nez v5, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 401
    .local v0, c:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 405
    .local v3, r:Landroid/content/res/Resources;
    if-eqz v3, :cond_0

    .line 408
    const-string v6, "parentPanel"

    const-string v7, "id"

    const-string v8, "android"

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 409
    .local v1, id:I
    invoke-virtual {v5, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 410
    .local v4, v:Landroid/view/View;
    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    .line 411
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 412
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v9, v6, v9, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 415
    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    const-string v6, "customPanel"

    const-string v7, "id"

    const-string v8, "android"

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 416
    invoke-virtual {v5, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 417
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 418
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v4, v9, v6, v9, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method private setDialogWindow()V
    .locals 8

    .prologue
    .line 423
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 424
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 425
    .local v2, w:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 426
    invoke-direct {p0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 428
    .local v3, wmlp:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2050003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    .line 429
    .local v1, margin:I
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 430
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v4

    const-wide v6, 0x3fd999999999999aL

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 435
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setWindowLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 436
    invoke-direct {p0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setDialogLayout()V

    .line 437
    return-void

    .line 432
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_0

    .line 433
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method private setWindowLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .parameter "wmlp"

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 380
    return-void
.end method

.method private setupIcon()V
    .locals 10

    .prologue
    .line 440
    const/4 v8, -0x1

    iget v9, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mPortraitIconWidth:I

    if-ne v8, v9, :cond_0

    .line 441
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 442
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 443
    .local v7, w:Landroid/view/Window;
    invoke-virtual {v7}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 444
    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v8, v9, :cond_2

    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    div-int/lit8 v8, v8, 0x6

    iput v8, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mPortraitIconWidth:I

    .line 449
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    .end local v7           #w:Landroid/view/Window;
    :cond_0
    iget-object v8, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 450
    .local v3, nCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 451
    iget-object v8, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 452
    .local v4, v:Landroid/view/View;
    instance-of v8, v4, Landroid/view/ViewGroup;

    if-eqz v8, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    move-object v6, v4

    .line 454
    check-cast v6, Landroid/view/ViewGroup;

    .line 455
    .local v6, vg:Landroid/view/ViewGroup;
    const v8, 0x202004c

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 456
    .local v5, vMod:Landroid/view/View;
    if-nez v5, :cond_3

    .line 450
    .end local v5           #vMod:Landroid/view/View;
    .end local v6           #vg:Landroid/view/ViewGroup;
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 444
    .end local v1           #i:I
    .end local v3           #nCount:I
    .end local v4           #v:Landroid/view/View;
    .restart local v0       #dm:Landroid/util/DisplayMetrics;
    .restart local v7       #w:Landroid/view/Window;
    :cond_2
    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 459
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    .end local v7           #w:Landroid/view/Window;
    .restart local v1       #i:I
    .restart local v3       #nCount:I
    .restart local v4       #v:Landroid/view/View;
    .restart local v5       #vMod:Landroid/view/View;
    .restart local v6       #vg:Landroid/view/ViewGroup;
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 460
    .local v2, llp:Landroid/widget/LinearLayout$LayoutParams;
    iget v8, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mPortraitIconWidth:I

    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 461
    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 465
    .end local v2           #llp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #v:Landroid/view/View;
    .end local v5           #vMod:Landroid/view/View;
    .end local v6           #vg:Landroid/view/ViewGroup;
    :cond_4
    iget-object v8, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->requestLayout()V

    .line 466
    return-void
.end method


# virtual methods
.method public addNewSuite()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->addNewSuite(I)V

    .line 132
    return-void
.end method

.method public addNewSuite(I)V
    .locals 7
    .parameter "nSuiteCount"

    .prologue
    .line 113
    iget-object v3, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mRoot:Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    .line 124
    :cond_0
    return-void

    .line 116
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 117
    iget-object v3, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 118
    invoke-direct {p0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->addHorizontalDivider()Landroid/widget/ImageView;

    .line 120
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 121
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x2090064

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 122
    .local v2, v:Landroid/view/View;
    iget-object v3, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mRoot:Landroid/view/ViewGroup;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getImageView(I)Landroid/widget/ImageView;
    .locals 2
    .parameter "nIndex"

    .prologue
    .line 239
    const v1, 0x202004c

    invoke-direct {p0, p1, v1}, Lcom/htc/widget/HtcMultiSeekBarDialog;->findViewById(II)Landroid/view/View;

    move-result-object v0

    .line 240
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 241
    check-cast v0, Landroid/widget/ImageView;

    .line 242
    .end local v0           #v:Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0       #v:Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSeekbar(I)Landroid/widget/SeekBar;
    .locals 2
    .parameter "nIndex"

    .prologue
    .line 251
    const v1, 0x2020135

    invoke-direct {p0, p1, v1}, Lcom/htc/widget/HtcMultiSeekBarDialog;->findViewById(II)Landroid/view/View;

    move-result-object v0

    .line 252
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    .line 253
    check-cast v0, Landroid/widget/SeekBar;

    .line 254
    .end local v0           #v:Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0       #v:Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextView(I)Landroid/widget/TextView;
    .locals 2
    .parameter "nIndex"

    .prologue
    .line 227
    const v1, 0x20200d4

    invoke-direct {p0, p1, v1}, Lcom/htc/widget/HtcMultiSeekBarDialog;->findViewById(II)Landroid/view/View;

    move-result-object v0

    .line 228
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 229
    check-cast v0, Landroid/widget/TextView;

    .line 230
    .end local v0           #v:Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0       #v:Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 147
    iget-object v2, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setView(Landroid/view/View;)V

    .line 149
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setCancelable(Z)V

    .line 150
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setInverseBackgroundForced(Z)V

    .line 151
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-virtual {p0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 154
    .local v1, w:Landroid/view/Window;
    const v2, 0x1020241

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 155
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 156
    const v2, 0x106000d

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mRoot:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mRoot:Landroid/view/ViewGroup;

    const v3, 0x20802ef

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 163
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setDialogWindow()V

    .line 164
    return-void
.end method

.method public setImageViewDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "nIndex"
    .parameter "drawable"

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 290
    .local v0, iv:Landroid/widget/ImageView;
    if-nez v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setImageViewResource(II)V
    .locals 1
    .parameter "nIndex"
    .parameter "resId"

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 303
    .local v0, iv:Landroid/widget/ImageView;
    if-nez v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setRootClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "ocl"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    :cond_0
    return-void
.end method

.method public setSeekbarSeekListener(ILandroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1
    .parameter "nIndex"
    .parameter "listener"

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getSeekbar(I)Landroid/widget/SeekBar;

    move-result-object v0

    .line 264
    .local v0, sb:Landroid/widget/SeekBar;
    if-nez v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_0
.end method

.method public setSuiteClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "nIndex"
    .parameter "ocl"

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcMultiSeekBarDialog;->findViewGroupById(I)Landroid/view/ViewGroup;

    move-result-object v0

    .line 369
    .local v0, vg:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    :cond_0
    return-void
.end method

.method public setSuiteVisibilty(II)V
    .locals 13
    .parameter "nIndex"
    .parameter "nVisibility"

    .prologue
    const/16 v12, 0x8

    .line 310
    iget-object v10, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mRoot:Landroid/view/ViewGroup;

    if-eqz v10, :cond_0

    if-eqz p2, :cond_1

    if-eq v12, p2, :cond_1

    const/4 v10, 0x4

    if-eq v10, p2, :cond_1

    .line 347
    :cond_0
    return-void

    .line 316
    :cond_1
    iget-object v10, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 317
    .local v1, nCount:I
    const/4 v2, 0x0

    .line 318
    .local v2, nSuiteIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 319
    iget-object v10, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 320
    .local v3, v:Landroid/view/View;
    instance-of v10, v3, Landroid/view/ViewGroup;

    if-eqz v10, :cond_5

    move-object v7, v3

    .line 321
    check-cast v7, Landroid/view/ViewGroup;

    .line 322
    .local v7, vg:Landroid/view/ViewGroup;
    if-ne v2, p1, :cond_4

    .line 323
    invoke-virtual {v7, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 330
    .end local v3           #v:Landroid/view/View;
    .end local v7           #vg:Landroid/view/ViewGroup;
    :cond_2
    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v10, v1, -0x1

    if-ge v0, v10, :cond_0

    .line 331
    iget-object v10, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mRoot:Landroid/view/ViewGroup;

    add-int/lit8 v11, v0, -0x1

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 332
    .local v6, vPrev:Landroid/view/View;
    iget-object v10, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 333
    .local v4, vCenter:Landroid/view/View;
    iget-object v10, p0, Lcom/htc/widget/HtcMultiSeekBarDialog;->mRoot:Landroid/view/ViewGroup;

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 334
    .local v5, vNext:Landroid/view/View;
    instance-of v10, v6, Landroid/view/ViewGroup;

    if-eqz v10, :cond_3

    instance-of v10, v4, Landroid/view/ViewGroup;

    if-nez v10, :cond_3

    instance-of v10, v5, Landroid/view/ViewGroup;

    if-eqz v10, :cond_3

    move-object v9, v6

    .line 337
    check-cast v9, Landroid/view/ViewGroup;

    .local v9, vgPrev:Landroid/view/ViewGroup;
    move-object v8, v5

    .line 338
    check-cast v8, Landroid/view/ViewGroup;

    .line 339
    .local v8, vgNext:Landroid/view/ViewGroup;
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v10

    if-nez v10, :cond_6

    .line 341
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 330
    .end local v8           #vgNext:Landroid/view/ViewGroup;
    .end local v9           #vgPrev:Landroid/view/ViewGroup;
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 326
    .end local v4           #vCenter:Landroid/view/View;
    .end local v5           #vNext:Landroid/view/View;
    .end local v6           #vPrev:Landroid/view/View;
    .restart local v3       #v:Landroid/view/View;
    .restart local v7       #vg:Landroid/view/ViewGroup;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 318
    .end local v7           #vg:Landroid/view/ViewGroup;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    .end local v3           #v:Landroid/view/View;
    .restart local v4       #vCenter:Landroid/view/View;
    .restart local v5       #vNext:Landroid/view/View;
    .restart local v6       #vPrev:Landroid/view/View;
    .restart local v8       #vgNext:Landroid/view/ViewGroup;
    .restart local v9       #vgPrev:Landroid/view/ViewGroup;
    :cond_6
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public setTextViewText(ILjava/lang/String;)V
    .locals 1
    .parameter "nIndex"
    .parameter "s"

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    .line 277
    .local v0, tv:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public show()V
    .locals 0

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setupIcon()V

    .line 475
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 476
    return-void
.end method

.method public showByGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 388
    .local v0, wmlp:Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_0

    .line 389
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 390
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setWindowLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->show()V

    .line 393
    return-void
.end method
