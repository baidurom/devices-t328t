.class public Lcom/htc/app/HtcProgressDialog;
.super Lcom/htc/widget/HtcAlertDialog;
.source "HtcProgressDialog.java"


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDismissTime:J

.field private mHasStarted:Z

.field private mHasTitle:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressNumber:Landroid/widget/TextView;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mShowTime:J

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 65
    iput v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgressStyle:I

    .line 85
    iput-boolean v0, p0, Lcom/htc/app/HtcProgressDialog;->mHasTitle:Z

    .line 91
    invoke-virtual {p0}, Lcom/htc/app/HtcProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mContext:Landroid/content/Context;

    .line 92
    const-string v0, "%d/%d"

    iput-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "theme"

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 65
    iput v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgressStyle:I

    .line 85
    iput-boolean v0, p0, Lcom/htc/app/HtcProgressDialog;->mHasTitle:Z

    .line 97
    invoke-virtual {p0}, Lcom/htc/app/HtcProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mContext:Landroid/content/Context;

    .line 99
    const-string v0, "%d/%d"

    iput-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/htc/app/HtcProgressDialog;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/app/HtcProgressDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/app/HtcProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/app/HtcProgressDialog;)Ljava/text/NumberFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/app/HtcProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method private adjustIndeterminateProgressDB()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 256
    invoke-virtual {p0}, Lcom/htc/app/HtcProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 257
    .local v2, w:Landroid/view/Window;
    if-nez v2, :cond_1

    .line 258
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "window not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget v3, p0, Lcom/htc/app/HtcProgressDialog;->mProgressStyle:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/htc/app/HtcProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 264
    .local v0, m2:I
    const v3, 0x202004f

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 266
    .local v1, v:Landroid/view/View;
    if-nez v1, :cond_2

    .line 267
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "View \"contentPanel\" not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_1
    const v3, 0x2020050

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 274
    if-nez v1, :cond_3

    .line 275
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "View \"scrollView\" not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, v0, v3, v0, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 270
    invoke-virtual {v1, v5}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_1

    .line 277
    :cond_3
    invoke-virtual {v1, v0, v5, v0, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method private getDialogThemeId(Landroid/content/Context;ILjava/lang/String;)I
    .locals 0
    .parameter "context"
    .parameter "themeId"
    .parameter "skinDialogThemeName"

    .prologue
    .line 286
    if-nez p3, :cond_0

    .line 305
    :cond_0
    return p2
.end method

.method private onProgressChanged()V
    .locals 2

    .prologue
    .line 446
    iget v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 447
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 449
    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "context"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/htc/app/HtcProgressDialog;
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "indeterminate"

    .prologue
    .line 109
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "indeterminate"
    .parameter "cancelable"

    .prologue
    .line 114
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "indeterminate"
    .parameter "cancelable"
    .parameter "cancelListener"

    .prologue
    .line 121
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 122
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {v0, p1}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v0, p2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {v0, p3}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 125
    invoke-virtual {v0, p4}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 126
    invoke-virtual {v0, p5}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 127
    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 128
    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 475
    const/16 v3, 0x12c

    .line 476
    .local v3, nMinDuration:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/htc/app/HtcProgressDialog;->mDismissTime:J

    .line 477
    iget-wide v6, p0, Lcom/htc/app/HtcProgressDialog;->mDismissTime:J

    iget-wide v8, p0, Lcom/htc/app/HtcProgressDialog;->mShowTime:J

    sub-long v0, v6, v8

    .line 478
    .local v0, delta:J
    int-to-long v6, v3

    sub-long v4, v6, v0

    .line 479
    .local v4, rest:J
    cmp-long v6, v10, v0

    if-gez v6, :cond_0

    cmp-long v6, v10, v4

    if-gez v6, :cond_0

    .line 481
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 488
    iput-wide v10, p0, Lcom/htc/app/HtcProgressDialog;->mShowTime:J

    .line 489
    iput-wide v10, p0, Lcom/htc/app/HtcProgressDialog;->mDismissTime:J

    .line 490
    return-void

    .line 482
    :catch_0
    move-exception v2

    .line 483
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 357
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/app/HtcProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 343
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public getSecondaryProgress()I
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    .line 350
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/app/HtcProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method

.method public incrementProgressBy(I)V
    .locals 1
    .parameter "diff"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 372
    invoke-direct {p0}, Lcom/htc/app/HtcProgressDialog;->onProgressChanged()V

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    iget v0, p0, Lcom/htc/app/HtcProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/htc/app/HtcProgressDialog;->mIncrementBy:I

    goto :goto_0
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1
    .parameter "diff"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 381
    invoke-direct {p0}, Lcom/htc/app/HtcProgressDialog;->onProgressChanged()V

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    iget v0, p0, Lcom/htc/app/HtcProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/htc/app/HtcProgressDialog;->mIncrementSecondaryBy:I

    goto :goto_0
.end method

.method public isIndeterminate()Z
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    .line 415
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/htc/app/HtcProgressDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 133
    iget-object v5, p0, Lcom/htc/app/HtcProgressDialog;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 134
    .local v2, inflater:Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/htc/app/HtcProgressDialog;->mProgressStyle:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 139
    new-instance v5, Lcom/htc/app/HtcProgressDialog$1;

    invoke-direct {v5, p0}, Lcom/htc/app/HtcProgressDialog$1;-><init>(Lcom/htc/app/HtcProgressDialog;)V

    iput-object v5, p0, Lcom/htc/app/HtcProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 161
    const v5, 0x209000e

    invoke-virtual {v2, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 162
    .local v4, view:Landroid/view/View;
    const v5, 0x202005b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 163
    const v5, 0x202005d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/htc/app/HtcProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    .line 165
    const v5, 0x202005c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/htc/app/HtcProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    .line 166
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/app/HtcProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 167
    iget-object v5, p0, Lcom/htc/app/HtcProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 169
    iget-boolean v5, p0, Lcom/htc/app/HtcProgressDialog;->mHasTitle:Z

    if-eqz v5, :cond_2

    .line 171
    :try_start_0
    iget-object v5, p0, Lcom/htc/app/HtcProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 172
    iget-object v5, p0, Lcom/htc/app/HtcProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/app/HtcProgressDialog;->mContext:Landroid/content/Context;

    const v7, 0x2030042

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 174
    :cond_0
    iget-object v5, p0, Lcom/htc/app/HtcProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 175
    iget-object v5, p0, Lcom/htc/app/HtcProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/app/HtcProgressDialog;->mContext:Landroid/content/Context;

    const v7, 0x2030042

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 178
    :cond_1
    iget-object v5, p0, Lcom/htc/app/HtcProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x206008b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 179
    .local v3, textColor:I
    iget-object v5, p0, Lcom/htc/app/HtcProgressDialog;->mMessageView:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 180
    iget-object v5, p0, Lcom/htc/app/HtcProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v3           #textColor:I
    :cond_2
    :goto_0
    invoke-virtual {p0, v4}, Lcom/htc/app/HtcProgressDialog;->setView(Landroid/view/View;)V

    .line 221
    :goto_1
    iget v5, p0, Lcom/htc/app/HtcProgressDialog;->mMax:I

    if-lez v5, :cond_3

    .line 222
    iget v5, p0, Lcom/htc/app/HtcProgressDialog;->mMax:I

    invoke-virtual {p0, v5}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 224
    :cond_3
    iget v5, p0, Lcom/htc/app/HtcProgressDialog;->mProgressVal:I

    if-lez v5, :cond_4

    .line 225
    iget v5, p0, Lcom/htc/app/HtcProgressDialog;->mProgressVal:I

    invoke-virtual {p0, v5}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 227
    :cond_4
    iget v5, p0, Lcom/htc/app/HtcProgressDialog;->mSecondaryProgressVal:I

    if-lez v5, :cond_5

    .line 228
    iget v5, p0, Lcom/htc/app/HtcProgressDialog;->mSecondaryProgressVal:I

    invoke-virtual {p0, v5}, Lcom/htc/app/HtcProgressDialog;->setSecondaryProgress(I)V

    .line 230
    :cond_5
    iget v5, p0, Lcom/htc/app/HtcProgressDialog;->mIncrementBy:I

    if-lez v5, :cond_6

    .line 231
    iget v5, p0, Lcom/htc/app/HtcProgressDialog;->mIncrementBy:I

    invoke-virtual {p0, v5}, Lcom/htc/app/HtcProgressDialog;->incrementProgressBy(I)V

    .line 233
    :cond_6
    iget v5, p0, Lcom/htc/app/HtcProgressDialog;->mIncrementSecondaryBy:I

    if-lez v5, :cond_7

    .line 234
    iget v5, p0, Lcom/htc/app/HtcProgressDialog;->mIncrementSecondaryBy:I

    invoke-virtual {p0, v5}, Lcom/htc/app/HtcProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 236
    :cond_7
    iget-object v5, p0, Lcom/htc/app/HtcProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_8

    .line 237
    iget-object v5, p0, Lcom/htc/app/HtcProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5}, Lcom/htc/app/HtcProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    :cond_8
    iget-object v5, p0, Lcom/htc/app/HtcProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_9

    .line 240
    iget-object v5, p0, Lcom/htc/app/HtcProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5}, Lcom/htc/app/HtcProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    :cond_9
    iget-object v5, p0, Lcom/htc/app/HtcProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v5, :cond_a

    .line 243
    iget-object v5, p0, Lcom/htc/app/HtcProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 245
    :cond_a
    iget-boolean v5, p0, Lcom/htc/app/HtcProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v5}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 246
    invoke-direct {p0}, Lcom/htc/app/HtcProgressDialog;->onProgressChanged()V

    .line 247
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 249
    invoke-direct {p0}, Lcom/htc/app/HtcProgressDialog;->adjustIndeterminateProgressDB()V

    .line 250
    return-void

    .line 189
    .end local v4           #view:Landroid/view/View;
    :cond_b
    const v5, 0x2090074

    invoke-virtual {v2, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 190
    .restart local v4       #view:Landroid/view/View;
    const v5, 0x102000d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 191
    const v5, 0x102000b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/htc/app/HtcProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 194
    invoke-virtual {p0}, Lcom/htc/app/HtcProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "progress_indeterminate"

    const-string v7, "drawable"

    const-string v8, "com.htc"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 195
    .local v1, id:I
    if-eqz v1, :cond_c

    .line 196
    iget-object v5, p0, Lcom/htc/app/HtcProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 197
    .local v0, blackIndeterminateDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v5, :cond_c

    .line 198
    iget-object v5, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    .end local v0           #blackIndeterminateDrawable:Landroid/graphics/drawable/Drawable;
    :cond_c
    iget-boolean v5, p0, Lcom/htc/app/HtcProgressDialog;->mHasTitle:Z

    if-eqz v5, :cond_d

    .line 219
    :cond_d
    invoke-virtual {p0, v4}, Lcom/htc/app/HtcProgressDialog;->setView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 182
    .end local v1           #id:I
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 311
    invoke-super {p0}, Lcom/htc/widget/HtcAlertDialog;->onStart()V

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/HtcProgressDialog;->mHasStarted:Z

    .line 313
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 317
    invoke-super {p0}, Lcom/htc/widget/HtcAlertDialog;->onStop()V

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/HtcProgressDialog;->mHasStarted:Z

    .line 319
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1
    .parameter "indeterminate"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 409
    :goto_0
    return-void

    .line 407
    :cond_0
    iput-boolean p1, p0, Lcom/htc/app/HtcProgressDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 401
    :goto_0
    return-void

    .line 399
    :cond_0
    iput-object p1, p0, Lcom/htc/app/HtcProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 363
    invoke-direct {p0}, Lcom/htc/app/HtcProgressDialog;->onProgressChanged()V

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    iput p1, p0, Lcom/htc/app/HtcProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 421
    iget v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 422
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 429
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 427
    :cond_1
    iput-object p1, p0, Lcom/htc/app/HtcProgressDialog;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/htc/app/HtcProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 324
    invoke-direct {p0}, Lcom/htc/app/HtcProgressDialog;->onProgressChanged()V

    .line 328
    :goto_0
    return-void

    .line 326
    :cond_0
    iput p1, p0, Lcom/htc/app/HtcProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 393
    :goto_0
    return-void

    .line 391
    :cond_0
    iput-object p1, p0, Lcom/htc/app/HtcProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .locals 0
    .parameter "format"

    .prologue
    .line 442
    iput-object p1, p0, Lcom/htc/app/HtcProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 443
    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0
    .parameter "style"

    .prologue
    .line 432
    iput p1, p0, Lcom/htc/app/HtcProgressDialog;->mProgressStyle:I

    .line 433
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1
    .parameter "secondaryProgress"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/htc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 333
    invoke-direct {p0}, Lcom/htc/app/HtcProgressDialog;->onProgressChanged()V

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_0
    iput p1, p0, Lcom/htc/app/HtcProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    const/4 v1, 0x1

    .line 454
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 455
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/app/HtcProgressDialog;->mHasTitle:Z

    .line 456
    iget-boolean v0, p0, Lcom/htc/app/HtcProgressDialog;->mHasTitle:Z

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p0, v1}, Lcom/htc/app/HtcProgressDialog;->setInverseBackgroundForced(Z)V

    .line 458
    :cond_0
    return-void

    .line 455
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 466
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/app/HtcProgressDialog;->mShowTime:J

    .line 467
    invoke-super {p0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 468
    return-void
.end method
