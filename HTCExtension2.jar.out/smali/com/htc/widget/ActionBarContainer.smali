.class public Lcom/htc/widget/ActionBarContainer;
.super Landroid/view/ViewGroup;
.source "ActionBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/ActionBarContainer$BackUpView;,
        Lcom/htc/widget/ActionBarContainer$OnResourceUpdateListener;,
        Lcom/htc/widget/ActionBarContainer$LayoutParams;
    }
.end annotation


# static fields
.field public static final MODE_AUTOMOTIVE:I = 0x2

.field public static final MODE_EXTERNAL:I = 0x1

.field static final enableDebug:Z


# instance fields
.field private backupListener:Landroid/view/View$OnClickListener;

.field private backupView:Landroid/widget/ImageView;

.field private centerGravity:I

.field private centerView:Landroid/view/View;

.field private childDivider:Landroid/graphics/drawable/Drawable;

.field private commonOffset:I

.field private containerHeight:I

.field private counter:I

.field private counterView:Landroid/widget/TextView;

.field private dividerLLoc:[I

.field private dividerOffset:I

.field private dividerRLoc:[I

.field private dragDrawable:Landroid/graphics/drawable/Drawable;

.field private dragEnable:Z

.field private dragOffset:I

.field private dragReset:Z

.field private enableLeftDivider:Z

.field private enableRightDivider:Z

.field private lastDividerEnable:Z

.field private leftCounter:Z

.field private leftViewCount:I

.field private final maxChildCount:I

.field private progressView:Landroid/view/View;

.field private resource:Landroid/content/res/Resources;

.field private rightViewCount:I

.field private supportMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/16 v4, 0x8

    const/high16 v3, -0x8000

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object v1, p0, Lcom/htc/widget/ActionBarContainer;->resource:Landroid/content/res/Resources;

    .line 152
    iput v4, p0, Lcom/htc/widget/ActionBarContainer;->maxChildCount:I

    .line 154
    iput-object v1, p0, Lcom/htc/widget/ActionBarContainer;->centerView:Landroid/view/View;

    .line 155
    iput-object v1, p0, Lcom/htc/widget/ActionBarContainer;->progressView:Landroid/view/View;

    .line 158
    iput v3, p0, Lcom/htc/widget/ActionBarContainer;->commonOffset:I

    .line 161
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/htc/widget/ActionBarContainer;->dividerLLoc:[I

    .line 162
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/htc/widget/ActionBarContainer;->dividerRLoc:[I

    .line 164
    iput-boolean v2, p0, Lcom/htc/widget/ActionBarContainer;->enableLeftDivider:Z

    .line 165
    iput-boolean v2, p0, Lcom/htc/widget/ActionBarContainer;->enableRightDivider:Z

    .line 183
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/widget/ActionBarContainer;->centerGravity:I

    .line 226
    iput v2, p0, Lcom/htc/widget/ActionBarContainer;->rightViewCount:I

    .line 227
    iput v2, p0, Lcom/htc/widget/ActionBarContainer;->leftViewCount:I

    .line 646
    iput-object v1, p0, Lcom/htc/widget/ActionBarContainer;->childDivider:Landroid/graphics/drawable/Drawable;

    .line 706
    iput-object v1, p0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    .line 713
    iput v3, p0, Lcom/htc/widget/ActionBarContainer;->counter:I

    .line 758
    iput-boolean v2, p0, Lcom/htc/widget/ActionBarContainer;->leftCounter:Z

    .line 826
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/ActionBarContainer;->lastDividerEnable:Z

    .line 843
    iput-object v1, p0, Lcom/htc/widget/ActionBarContainer;->dragDrawable:Landroid/graphics/drawable/Drawable;

    .line 845
    iput-boolean v2, p0, Lcom/htc/widget/ActionBarContainer;->dragReset:Z

    .line 846
    iput-boolean v2, p0, Lcom/htc/widget/ActionBarContainer;->dragEnable:Z

    .line 848
    iput v3, p0, Lcom/htc/widget/ActionBarContainer;->dragOffset:I

    .line 872
    iput-object v1, p0, Lcom/htc/widget/ActionBarContainer;->backupView:Landroid/widget/ImageView;

    .line 883
    iput-object v1, p0, Lcom/htc/widget/ActionBarContainer;->backupListener:Landroid/view/View$OnClickListener;

    .line 1130
    iput v3, p0, Lcom/htc/widget/ActionBarContainer;->supportMode:I

    .line 1131
    iput v3, p0, Lcom/htc/widget/ActionBarContainer;->dividerOffset:I

    .line 1173
    iput v3, p0, Lcom/htc/widget/ActionBarContainer;->containerHeight:I

    .line 48
    iput-object v1, p0, Lcom/htc/widget/ActionBarContainer;->resource:Landroid/content/res/Resources;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/ActionBarContainer;->resource:Landroid/content/res/Resources;

    .line 51
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer;->resource:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "package resouce null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iget v0, p0, Lcom/htc/widget/ActionBarContainer;->commonOffset:I

    if-gez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer;->resource:Landroid/content/res/Resources;

    const v1, 0x2050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/ActionBarContainer;->commonOffset:I

    .line 56
    :cond_1
    return-void
.end method

.method private setupBackUpView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 898
    iget-object v4, p0, Lcom/htc/widget/ActionBarContainer;->backupView:Landroid/widget/ImageView;

    if-nez v4, :cond_2

    .line 900
    const/4 v3, 0x0

    .line 901
    .local v3, padding:I
    const/4 v1, 0x0

    .line 904
    .local v1, imageResource:I
    iget v4, p0, Lcom/htc/widget/ActionBarContainer;->supportMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 906
    iget-object v4, p0, Lcom/htc/widget/ActionBarContainer;->resource:Landroid/content/res/Resources;

    const v5, 0x20e0007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 907
    .local v2, itemWidth:I
    iget-object v4, p0, Lcom/htc/widget/ActionBarContainer;->resource:Landroid/content/res/Resources;

    const v5, 0x2080142

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 909
    .local v0, iconWidth:I
    sub-int v4, v2, v0

    div-int/lit8 v3, v4, 0x2

    .line 910
    const v1, 0x2080142

    .line 919
    .end local v0           #iconWidth:I
    .end local v2           #itemWidth:I
    :goto_0
    new-instance v4, Lcom/htc/widget/ActionBarContainer$BackUpView;

    iget-object v5, p0, Lcom/htc/widget/ActionBarContainer;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/htc/widget/ActionBarContainer$BackUpView;-><init>(Lcom/htc/widget/ActionBarContainer;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/widget/ActionBarContainer;->backupView:Landroid/widget/ImageView;

    .line 921
    iget-object v4, p0, Lcom/htc/widget/ActionBarContainer;->backupView:Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 922
    iget-object v4, p0, Lcom/htc/widget/ActionBarContainer;->backupView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 923
    iget-object v4, p0, Lcom/htc/widget/ActionBarContainer;->backupView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3, v8, v3, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 924
    iget-object v4, p0, Lcom/htc/widget/ActionBarContainer;->backupView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/htc/widget/ActionBarContainer;->backupListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 925
    iget-object v4, p0, Lcom/htc/widget/ActionBarContainer;->backupView:Landroid/widget/ImageView;

    new-instance v5, Lcom/htc/widget/ActionBarContainer$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Lcom/htc/widget/ActionBarContainer$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 928
    iget-object v4, p0, Lcom/htc/widget/ActionBarContainer;->backupView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v8}, Lcom/htc/widget/ActionBarContainer;->addView(Landroid/view/View;I)V

    .line 933
    .end local v1           #imageResource:I
    .end local v3           #padding:I
    :cond_0
    :goto_1
    return-void

    .line 914
    .restart local v1       #imageResource:I
    .restart local v3       #padding:I
    :cond_1
    iget-object v4, p0, Lcom/htc/widget/ActionBarContainer;->resource:Landroid/content/res/Resources;

    const v5, 0x2050002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 915
    const v1, 0x20800bf

    goto :goto_0

    .line 931
    .end local v1           #imageResource:I
    .end local v3           #padding:I
    :cond_2
    iget-object v4, p0, Lcom/htc/widget/ActionBarContainer;->backupView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_0

    .line 932
    iget-object v4, p0, Lcom/htc/widget/ActionBarContainer;->backupView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/htc/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private setupCounterView()V
    .locals 3

    .prologue
    .line 776
    iget v1, p0, Lcom/htc/widget/ActionBarContainer;->commonOffset:I

    if-gez v1, :cond_0

    .line 777
    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer;->resource:Landroid/content/res/Resources;

    const v2, 0x2050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/ActionBarContainer;->commonOffset:I

    .line 779
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    if-nez v1, :cond_2

    .line 781
    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer;->resource:Landroid/content/res/Resources;

    const v2, 0x20e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 784
    .local v0, size:I
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/widget/ActionBarContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    .line 786
    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 787
    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 788
    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 789
    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 790
    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    const v2, 0x208003d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 792
    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 797
    .end local v0           #size:I
    :cond_1
    :goto_0
    return-void

    .line 795
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 796
    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setupProgressView()V
    .locals 3

    .prologue
    .line 685
    iget v1, p0, Lcom/htc/widget/ActionBarContainer;->commonOffset:I

    if-gez v1, :cond_0

    .line 686
    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer;->resource:Landroid/content/res/Resources;

    const v2, 0x2050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/ActionBarContainer;->commonOffset:I

    .line 688
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer;->progressView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 690
    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer;->resource:Landroid/content/res/Resources;

    const v2, 0x20e0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 692
    .local v0, size:I
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/ActionBarContainer;->progressView:Landroid/view/View;

    .line 693
    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/htc/widget/ActionBarContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/ActionBarContainer;->progressView:Landroid/view/View;

    .line 694
    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer;->progressView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 696
    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer;->progressView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 701
    .end local v0           #size:I
    :cond_1
    :goto_0
    return-void

    .line 699
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer;->progressView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 700
    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer;->progressView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private updateContainerLayout()V
    .locals 3

    .prologue
    .line 1178
    const/4 v0, 0x0

    .line 1181
    .local v0, lparams:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1203
    :goto_0
    return-void

    .line 1185
    :cond_0
    iget v1, p0, Lcom/htc/widget/ActionBarContainer;->containerHeight:I

    if-gez v1, :cond_1

    .line 1186
    iget v1, p0, Lcom/htc/widget/ActionBarContainer;->supportMode:I

    packed-switch v1, :pswitch_data_0

    .line 1197
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1198
    iget v1, p0, Lcom/htc/widget/ActionBarContainer;->containerHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1199
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1201
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarContainer;->requestLayout()V

    .line 1202
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarContainer;->invalidate()V

    goto :goto_0

    .line 1189
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20e0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/ActionBarContainer;->containerHeight:I

    goto :goto_1

    .line 1193
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20e0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/ActionBarContainer;->containerHeight:I

    goto :goto_1

    .line 1186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addCenterView(Landroid/view/View;)V
    .locals 3
    .parameter "childView"

    .prologue
    .line 77
    if-eqz p1, :cond_0

    .line 78
    new-instance v0, Lcom/htc/widget/ActionBarContainer$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/ActionBarContainer$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    :cond_0
    return-void
.end method

.method public addLeftView(Landroid/view/View;)V
    .locals 3
    .parameter "childView"

    .prologue
    .line 63
    if-eqz p1, :cond_0

    .line 64
    new-instance v0, Lcom/htc/widget/ActionBarContainer$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/ActionBarContainer$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    :cond_0
    return-void
.end method

.method public addRightView(Landroid/view/View;)V
    .locals 3
    .parameter "childView"

    .prologue
    .line 70
    if-eqz p1, :cond_0

    .line 71
    new-instance v0, Lcom/htc/widget/ActionBarContainer$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/ActionBarContainer$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "lparams"

    .prologue
    .line 84
    instance-of v0, p1, Lcom/htc/widget/ActionBarContainer$LayoutParams;

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 550
    iget-boolean v10, p0, Lcom/htc/widget/ActionBarContainer;->dragEnable:Z

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/htc/widget/ActionBarContainer;->dragDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/htc/widget/ActionBarContainer;->centerView:Landroid/view/View;

    instance-of v10, v10, Lcom/htc/widget/ActionBarSearch;

    if-nez v10, :cond_1

    .line 552
    iget-boolean v10, p0, Lcom/htc/widget/ActionBarContainer;->dragReset:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 554
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/widget/ActionBarContainer;->dragReset:Z

    .line 556
    iget-object v10, p0, Lcom/htc/widget/ActionBarContainer;->dragDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 557
    .local v4, drawableWidth:I
    iget-object v10, p0, Lcom/htc/widget/ActionBarContainer;->dragDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 559
    .local v3, drawableHeight:I
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarContainer;->getWidth()I

    move-result v10

    sub-int/2addr v10, v4

    div-int/lit8 v5, v10, 0x2

    .line 560
    .local v5, left:I
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarContainer;->getHeight()I

    move-result v10

    iget v11, p0, Lcom/htc/widget/ActionBarContainer;->dragOffset:I

    sub-int v0, v10, v11

    .line 562
    .local v0, bottom:I
    iget-object v10, p0, Lcom/htc/widget/ActionBarContainer;->dragDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v11, v0, v3

    add-int v12, v5, v4

    invoke-virtual {v10, v5, v11, v12, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 564
    .end local v0           #bottom:I
    .end local v3           #drawableHeight:I
    .end local v4           #drawableWidth:I
    .end local v5           #left:I
    :cond_0
    iget-object v10, p0, Lcom/htc/widget/ActionBarContainer;->dragDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 568
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 572
    iget-boolean v10, p0, Lcom/htc/widget/ActionBarContainer;->enableRightDivider:Z

    if-eqz v10, :cond_4

    .line 574
    iget-object v10, p0, Lcom/htc/widget/ActionBarContainer;->childDivider:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_2

    .line 575
    iget-object v10, p0, Lcom/htc/widget/ActionBarContainer;->resource:Landroid/content/res/Resources;

    const v11, 0x2080036

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/widget/ActionBarContainer;->childDivider:Landroid/graphics/drawable/Drawable;

    .line 577
    :cond_2
    iget v10, p0, Lcom/htc/widget/ActionBarContainer;->commonOffset:I

    if-gez v10, :cond_3

    .line 578
    iget-object v10, p0, Lcom/htc/widget/ActionBarContainer;->resource:Landroid/content/res/Resources;

    const v11, 0x2050001

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, p0, Lcom/htc/widget/ActionBarContainer;->commonOffset:I

    .line 580
    :cond_3
    iget-object v10, p0, Lcom/htc/widget/ActionBarContainer;->childDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 582
    .local v2, dividerWidth:I
    iget v10, p0, Lcom/htc/widget/ActionBarContainer;->supportMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_7

    iget v9, p0, Lcom/htc/widget/ActionBarContainer;->dividerOffset:I

    .line 583
    .local v9, topBound:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarContainer;->getHeight()I

    move-result v10

    sub-int v1, v10, v9

    .line 586
    .local v1, bottomBound:I
    const/4 v7, 0x0

    .local v7, loop:I
    :goto_1
    iget v10, p0, Lcom/htc/widget/ActionBarContainer;->rightViewCount:I

    if-ge v7, v10, :cond_4

    .line 588
    iget v10, p0, Lcom/htc/widget/ActionBarContainer;->rightViewCount:I

    add-int/lit8 v10, v10, -0x1

    if-ne v7, v10, :cond_8

    iget-boolean v10, p0, Lcom/htc/widget/ActionBarContainer;->lastDividerEnable:Z

    if-nez v10, :cond_8

    .line 599
    .end local v1           #bottomBound:I
    .end local v2           #dividerWidth:I
    .end local v7           #loop:I
    .end local v9           #topBound:I
    :cond_4
    iget-boolean v10, p0, Lcom/htc/widget/ActionBarContainer;->enableLeftDivider:Z

    if-eqz v10, :cond_a

    .line 601
    iget-object v10, p0, Lcom/htc/widget/ActionBarContainer;->childDivider:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_5

    .line 602
    iget-object v10, p0, Lcom/htc/widget/ActionBarContainer;->resource:Landroid/content/res/Resources;

    const v11, 0x2080036

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/widget/ActionBarContainer;->childDivider:Landroid/graphics/drawable/Drawable;

    .line 604
    :cond_5
    iget v10, p0, Lcom/htc/widget/ActionBarContainer;->commonOffset:I

    if-gez v10, :cond_6

    .line 605
    iget-object v10, p0, Lcom/htc/widget/ActionBarContainer;->resource:Landroid/content/res/Resources;

    const v11, 0x2050001

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, p0, Lcom/htc/widget/ActionBarContainer;->commonOffset:I

    .line 607
    :cond_6
    iget-object v10, p0, Lcom/htc/widget/ActionBarContainer;->childDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 609
    .restart local v2       #dividerWidth:I
    iget v10, p0, Lcom/htc/widget/ActionBarContainer;->supportMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    iget v9, p0, Lcom/htc/widget/ActionBarContainer;->dividerOffset:I

    .line 610
    .restart local v9       #topBound:I
    :goto_2
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarContainer;->getHeight()I

    move-result v10

    sub-int v1, v10, v9

    .line 613
    .restart local v1       #bottomBound:I
    const/4 v7, 0x0

    .restart local v7       #loop:I
    :goto_3
    iget v10, p0, Lcom/htc/widget/ActionBarContainer;->leftViewCount:I

    if-ge v7, v10, :cond_d

    .line 615
    iget-object v10, p0, Lcom/htc/widget/ActionBarContainer;->dividerLLoc:[I

    aget v8, v10, v7

    .line 617
    .local v8, rightBound:I
    iget-object v10, p0, Lcom/htc/widget/ActionBarContainer;->childDivider:Landroid/graphics/drawable/Drawable;

    sub-int v11, v8, v2

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v12, v8, -0x1

    invoke-virtual {v10, v11, v9, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 618
    iget-object v10, p0, Lcom/htc/widget/ActionBarContainer;->childDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 613
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 582
    .end local v1           #bottomBound:I
    .end local v7           #loop:I
    .end local v8           #rightBound:I
    .end local v9           #topBound:I
    :cond_7
    iget v9, p0, Lcom/htc/widget/ActionBarContainer;->commonOffset:I

    goto :goto_0

    .line 591
    .restart local v1       #bottomBound:I
    .restart local v7       #loop:I
    .restart local v9       #topBound:I
    :cond_8
    iget-object v10, p0, Lcom/htc/widget/ActionBarContainer;->dividerRLoc:[I

    aget v6, v10, v7

    .line 593
    .local v6, leftBound:I
    iget-object v10, p0, Lcom/htc/widget/ActionBarContainer;->childDivider:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v11, v6, -0x1

    add-int v12, v6, v2

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v10, v11, v9, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 594
    iget-object v10, p0, Lcom/htc/widget/ActionBarContainer;->childDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 586
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 609
    .end local v1           #bottomBound:I
    .end local v6           #leftBound:I
    .end local v7           #loop:I
    .end local v9           #topBound:I
    :cond_9
    iget v9, p0, Lcom/htc/widget/ActionBarContainer;->commonOffset:I

    goto :goto_2

    .line 625
    .end local v2           #dividerWidth:I
    :cond_a
    iget-object v10, p0, Lcom/htc/widget/ActionBarContainer;->backupView:Landroid/widget/ImageView;

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/htc/widget/ActionBarContainer;->backupView:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_d

    .line 627
    iget-object v10, p0, Lcom/htc/widget/ActionBarContainer;->childDivider:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_b

    .line 628
    iget-object v10, p0, Lcom/htc/widget/ActionBarContainer;->resource:Landroid/content/res/Resources;

    const v11, 0x2080036

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/widget/ActionBarContainer;->childDivider:Landroid/graphics/drawable/Drawable;

    .line 630
    :cond_b
    iget v10, p0, Lcom/htc/widget/ActionBarContainer;->commonOffset:I

    if-gez v10, :cond_c

    .line 631
    iget-object v10, p0, Lcom/htc/widget/ActionBarContainer;->resource:Landroid/content/res/Resources;

    const v11, 0x2050001

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, p0, Lcom/htc/widget/ActionBarContainer;->commonOffset:I

    .line 633
    :cond_c
    iget v10, p0, Lcom/htc/widget/ActionBarContainer;->supportMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_e

    iget v9, p0, Lcom/htc/widget/ActionBarContainer;->dividerOffset:I

    .line 634
    .restart local v9       #topBound:I
    :goto_4
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarContainer;->getHeight()I

    move-result v10

    sub-int v1, v10, v9

    .line 636
    .restart local v1       #bottomBound:I
    iget-object v10, p0, Lcom/htc/widget/ActionBarContainer;->backupView:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getRight()I

    move-result v8

    .line 637
    .restart local v8       #rightBound:I
    iget-object v10, p0, Lcom/htc/widget/ActionBarContainer;->childDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    sub-int v6, v8, v10

    .line 640
    .restart local v6       #leftBound:I
    iget-object v10, p0, Lcom/htc/widget/ActionBarContainer;->childDivider:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v11, v6, 0x1

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v10, v11, v9, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 641
    iget-object v10, p0, Lcom/htc/widget/ActionBarContainer;->childDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 643
    .end local v1           #bottomBound:I
    .end local v6           #leftBound:I
    .end local v8           #rightBound:I
    .end local v9           #topBound:I
    :cond_d
    return-void

    .line 633
    :cond_e
    iget v9, p0, Lcom/htc/widget/ActionBarContainer;->commonOffset:I

    goto :goto_4
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/htc/widget/ActionBarContainer;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/widget/ActionBarContainer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/htc/widget/ActionBarContainer;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/htc/widget/ActionBarContainer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/widget/ActionBarContainer$LayoutParams;
    .locals 2
    .parameter "attrSet"

    .prologue
    .line 96
    new-instance v0, Lcom/htc/widget/ActionBarContainer$LayoutParams;

    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/htc/widget/ActionBarContainer$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/htc/widget/ActionBarContainer$LayoutParams;
    .locals 1
    .parameter "lparams"

    .prologue
    .line 90
    new-instance v0, Lcom/htc/widget/ActionBarContainer$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/widget/ActionBarContainer$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCounter()I
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/high16 v0, -0x8000

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/widget/ActionBarContainer;->counter:I

    goto :goto_0
.end method

.method public getCounterVisibility()I
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public getProgressVisibility()I
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer;->progressView:Landroid/view/View;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer;->progressView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1208
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1210
    iget v0, p0, Lcom/htc/widget/ActionBarContainer;->supportMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/ActionBarContainer;->supportMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1211
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/ActionBarContainer;->updateContainerLayout()V

    .line 1212
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 241
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/widget/ActionBarContainer;->mPaddingLeft:I

    .line 242
    .local v11, currentLeft:I
    sub-int v20, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->mPaddingRight:I

    move/from16 v21, v0

    sub-int v12, v20, v21

    .line 244
    .local v12, currentRight:I
    const/4 v14, 0x1

    .line 246
    .local v14, locateLeftPanel:Z
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/ActionBarContainer;->centerView:Landroid/view/View;

    .line 247
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/ActionBarContainer;->leftViewCount:I

    .line 248
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/ActionBarContainer;->rightViewCount:I

    .line 250
    sub-int v20, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->mPaddingLeft:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->mPaddingRight:I

    move/from16 v21, v0

    sub-int v17, v20, v21

    .line 251
    .local v17, paddingWidth:I
    sub-int v20, p5, p3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->mPaddingTop:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->mPaddingBottom:I

    move/from16 v21, v0

    sub-int v16, v20, v21

    .line 254
    .local v16, paddingHeight:I
    const/4 v15, 0x0

    .local v15, loop:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/ActionBarContainer;->getChildCount()I

    move-result v2

    .local v2, childCount:I
    :goto_0
    if-ge v15, v2, :cond_c

    .line 256
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 258
    .local v5, childView:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 261
    .local v4, childParams:Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v4, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->progressView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-eq v5, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-ne v5, v0, :cond_1

    .line 254
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 265
    :cond_1
    const/4 v14, 0x1

    .line 268
    instance-of v0, v4, Lcom/htc/widget/ActionBarContainer$LayoutParams;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v20, v4

    .line 269
    check-cast v20, Lcom/htc/widget/ActionBarContainer$LayoutParams;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/htc/widget/ActionBarContainer$LayoutParams;->panelGravity:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 288
    :cond_2
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 289
    .local v10, childWidth:I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 292
    .local v3, childHeight:I
    if-eqz v14, :cond_8

    .line 295
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v7, v11, v20

    .line 296
    .local v7, childViewL:I
    add-int v8, v7, v10

    .line 299
    .local v8, childViewR:I
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v20, v0

    add-int v11, v8, v20

    .line 302
    move/from16 v0, v16

    if-le v3, v0, :cond_5

    .line 304
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/ActionBarContainer;->mPaddingTop:I

    .line 305
    .local v9, childViewT:I
    add-int v6, v9, v16

    .line 314
    .local v6, childViewB:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->dividerLLoc:[I

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->leftViewCount:I

    move/from16 v20, v0

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->dividerLLoc:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->leftViewCount:I

    move/from16 v21, v0

    aput v8, v20, v21

    .line 318
    :cond_3
    if-ge v8, v12, :cond_6

    .line 320
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->leftViewCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/ActionBarContainer;->leftViewCount:I

    .line 321
    invoke-virtual {v5, v7, v9, v8, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 272
    .end local v3           #childHeight:I
    .end local v6           #childViewB:I
    .end local v7           #childViewL:I
    .end local v8           #childViewR:I
    .end local v9           #childViewT:I
    .end local v10           #childWidth:I
    :pswitch_0
    const/4 v14, 0x0

    .line 273
    goto :goto_2

    .line 276
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->centerView:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 284
    :cond_4
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/widget/ActionBarContainer;->centerView:Landroid/view/View;

    goto :goto_1

    .line 309
    .restart local v3       #childHeight:I
    .restart local v7       #childViewL:I
    .restart local v8       #childViewR:I
    .restart local v10       #childWidth:I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->mPaddingTop:I

    move/from16 v20, v0

    sub-int v21, v16, v3

    div-int/lit8 v21, v21, 0x2

    add-int v9, v20, v21

    .line 310
    .restart local v9       #childViewT:I
    add-int v6, v9, v3

    .restart local v6       #childViewB:I
    goto :goto_3

    .line 325
    :cond_6
    invoke-virtual {v5, v7, v9, v12, v6}, Landroid/view/View;->layout(IIII)V

    .line 531
    .end local v3           #childHeight:I
    .end local v4           #childParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5           #childView:Landroid/view/View;
    .end local v6           #childViewB:I
    .end local v7           #childViewL:I
    .end local v8           #childViewR:I
    .end local v9           #childViewT:I
    .end local v10           #childWidth:I
    :cond_7
    :goto_4
    return-void

    .line 332
    .restart local v3       #childHeight:I
    .restart local v4       #childParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v5       #childView:Landroid/view/View;
    .restart local v10       #childWidth:I
    :cond_8
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v20, v0

    sub-int v8, v12, v20

    .line 333
    .restart local v8       #childViewR:I
    sub-int v7, v8, v10

    .line 336
    .restart local v7       #childViewL:I
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v20, v0

    sub-int v12, v7, v20

    .line 339
    move/from16 v0, v16

    if-le v3, v0, :cond_a

    .line 341
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/ActionBarContainer;->mPaddingTop:I

    .line 342
    .restart local v9       #childViewT:I
    add-int v6, v9, v16

    .line 351
    .restart local v6       #childViewB:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->dividerRLoc:[I

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->rightViewCount:I

    move/from16 v20, v0

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->dividerRLoc:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->rightViewCount:I

    move/from16 v21, v0

    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v22, v0

    sub-int v22, v7, v22

    aput v22, v20, v21

    .line 355
    :cond_9
    if-le v7, v11, :cond_b

    .line 357
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->rightViewCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/ActionBarContainer;->rightViewCount:I

    .line 358
    invoke-virtual {v5, v7, v9, v8, v6}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    .line 346
    .end local v6           #childViewB:I
    .end local v9           #childViewT:I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->mPaddingTop:I

    move/from16 v20, v0

    sub-int v21, v16, v3

    div-int/lit8 v21, v21, 0x2

    add-int v9, v20, v21

    .line 347
    .restart local v9       #childViewT:I
    add-int v6, v9, v3

    .restart local v6       #childViewB:I
    goto :goto_5

    .line 362
    :cond_b
    invoke-virtual {v5, v11, v9, v8, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 369
    .end local v3           #childHeight:I
    .end local v4           #childParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5           #childView:Landroid/view/View;
    .end local v6           #childViewB:I
    .end local v7           #childViewL:I
    .end local v8           #childViewR:I
    .end local v9           #childViewT:I
    .end local v10           #childWidth:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/ActionBarContainer;->leftCounter:Z

    move/from16 v20, v0

    if-nez v20, :cond_e

    if-ge v11, v12, :cond_e

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    .line 372
    .restart local v10       #childWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    .line 374
    .restart local v3       #childHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->commonOffset:I

    move/from16 v20, v0

    if-gez v20, :cond_d

    .line 375
    new-instance v20, Ljava/lang/RuntimeException;

    const-string v21, "common offset not initialize"

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 378
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->commonOffset:I

    move/from16 v20, v0

    sub-int v8, v12, v20

    .line 379
    .restart local v8       #childViewR:I
    sub-int v7, v8, v10

    .line 380
    .restart local v7       #childViewL:I
    move v12, v7

    .line 383
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->mPaddingTop:I

    move/from16 v20, v0

    sub-int v21, v16, v3

    div-int/lit8 v21, v21, 0x2

    add-int v9, v20, v21

    .line 384
    .restart local v9       #childViewT:I
    add-int v6, v9, v3

    .line 387
    .restart local v6       #childViewB:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-le v7, v11, :cond_f

    .end local v7           #childViewL:I
    :goto_6
    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v9, v8, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 391
    .end local v3           #childHeight:I
    .end local v6           #childViewB:I
    .end local v8           #childViewR:I
    .end local v9           #childViewT:I
    .end local v10           #childWidth:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->progressView:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->progressView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_11

    if-ge v11, v12, :cond_11

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->progressView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 394
    .restart local v10       #childWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->progressView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 396
    .restart local v3       #childHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->commonOffset:I

    move/from16 v20, v0

    if-gez v20, :cond_10

    .line 397
    new-instance v20, Ljava/lang/RuntimeException;

    const-string v21, "common offset not initialize"

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .restart local v6       #childViewB:I
    .restart local v7       #childViewL:I
    .restart local v8       #childViewR:I
    .restart local v9       #childViewT:I
    :cond_f
    move v7, v11

    .line 387
    goto :goto_6

    .line 400
    .end local v6           #childViewB:I
    .end local v7           #childViewL:I
    .end local v8           #childViewR:I
    .end local v9           #childViewT:I
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->commonOffset:I

    move/from16 v20, v0

    sub-int v8, v12, v20

    .line 401
    .restart local v8       #childViewR:I
    sub-int v7, v8, v10

    .line 402
    .restart local v7       #childViewL:I
    move v12, v7

    .line 405
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->mPaddingTop:I

    move/from16 v20, v0

    sub-int v21, v16, v3

    div-int/lit8 v21, v21, 0x2

    add-int v9, v20, v21

    .line 406
    .restart local v9       #childViewT:I
    add-int v6, v9, v3

    .line 409
    .restart local v6       #childViewB:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->progressView:Landroid/view/View;

    move-object/from16 v20, v0

    if-le v7, v11, :cond_12

    .end local v7           #childViewL:I
    :goto_7
    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v9, v8, v6}, Landroid/view/View;->layout(IIII)V

    .line 413
    .end local v3           #childHeight:I
    .end local v6           #childViewB:I
    .end local v8           #childViewR:I
    .end local v9           #childViewT:I
    .end local v10           #childWidth:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->centerView:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->centerView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_19

    if-ge v11, v12, :cond_19

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->centerView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 416
    .restart local v10       #childWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->centerView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 418
    .restart local v3       #childHeight:I
    sub-int v18, v12, v11

    .line 420
    .local v18, remainderSpace:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->commonOffset:I

    move/from16 v20, v0

    if-gez v20, :cond_13

    .line 421
    new-instance v20, Ljava/lang/RuntimeException;

    const-string v21, "common offset not initialize"

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .end local v18           #remainderSpace:I
    .restart local v6       #childViewB:I
    .restart local v7       #childViewL:I
    .restart local v8       #childViewR:I
    .restart local v9       #childViewT:I
    :cond_12
    move v7, v11

    .line 409
    goto :goto_7

    .line 424
    .end local v6           #childViewB:I
    .end local v7           #childViewL:I
    .end local v8           #childViewR:I
    .end local v9           #childViewT:I
    .restart local v18       #remainderSpace:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/ActionBarContainer;->leftCounter:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->centerGravity:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_14

    .line 425
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v21

    sub-int v21, v18, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->commonOffset:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 428
    :cond_14
    move/from16 v0, v18

    if-le v10, v0, :cond_15

    .line 430
    const/high16 v20, 0x4000

    move/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    .line 431
    .local v19, widthMeasure:I
    const/high16 v20, 0x4000

    move/from16 v0, v20

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 433
    .local v13, heightMeasure:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->centerView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Landroid/view/View;->measure(II)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->centerView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->centerView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 440
    .end local v13           #heightMeasure:I
    .end local v19           #widthMeasure:I
    :cond_15
    move/from16 v0, v16

    if-le v3, v0, :cond_17

    .line 442
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/ActionBarContainer;->mPaddingTop:I

    .line 443
    .restart local v9       #childViewT:I
    add-int v6, v9, v16

    .line 452
    .restart local v6       #childViewB:I
    :goto_8
    move/from16 v0, v18

    if-ge v10, v0, :cond_18

    .line 455
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->centerGravity:I

    move/from16 v20, v0

    sparse-switch v20, :sswitch_data_0

    .line 470
    move v7, v11

    .line 471
    .restart local v7       #childViewL:I
    add-int v8, v7, v10

    .line 472
    .restart local v8       #childViewR:I
    move v11, v8

    .line 476
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->centerView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v9, v8, v6}, Landroid/view/View;->layout(IIII)V

    .line 479
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->centerGravity:I

    move/from16 v20, v0

    const/16 v21, 0x11

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->centerGravity:I

    move/from16 v20, v0

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->centerView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/htc/widget/ActionBarDropDown;

    move/from16 v20, v0

    if-eqz v20, :cond_16

    .line 483
    new-instance v20, Landroid/view/TouchDelegate;

    new-instance v21, Landroid/graphics/Rect;

    move-object/from16 v0, v21

    invoke-direct {v0, v11, v9, v12, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->centerView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-direct/range {v20 .. v22}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 494
    .end local v7           #childViewL:I
    .end local v8           #childViewR:I
    :cond_16
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/ActionBarContainer;->leftCounter:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    .line 500
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->mPaddingTop:I

    move/from16 v20, v0

    sub-int v21, v16, v3

    div-int/lit8 v21, v21, 0x2

    add-int v9, v20, v21

    .line 501
    add-int v6, v9, v3

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    add-int v21, v11, v10

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v11, v9, v1, v6}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_4

    .line 447
    .end local v6           #childViewB:I
    .end local v9           #childViewT:I
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->mPaddingTop:I

    move/from16 v20, v0

    sub-int v21, v16, v3

    div-int/lit8 v21, v21, 0x2

    add-int v9, v20, v21

    .line 448
    .restart local v9       #childViewT:I
    add-int v6, v9, v3

    .restart local v6       #childViewB:I
    goto/16 :goto_8

    .line 458
    :sswitch_0
    sub-int v20, v18, v10

    div-int/lit8 v20, v20, 0x2

    add-int v7, v11, v20

    .line 459
    .restart local v7       #childViewL:I
    add-int v8, v7, v10

    .line 460
    .restart local v8       #childViewR:I
    move v11, v12

    .line 461
    goto/16 :goto_9

    .line 464
    .end local v7           #childViewL:I
    .end local v8           #childViewR:I
    :sswitch_1
    sub-int v7, v12, v10

    .line 465
    .restart local v7       #childViewL:I
    move v8, v12

    .line 466
    .restart local v8       #childViewR:I
    move v12, v7

    .line 467
    goto/16 :goto_9

    .line 489
    .end local v7           #childViewL:I
    .end local v8           #childViewR:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->centerView:Landroid/view/View;

    move-object/from16 v20, v0

    add-int v21, v11, v18

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v11, v9, v1, v6}, Landroid/view/View;->layout(IIII)V

    .line 490
    add-int v11, v11, v18

    goto/16 :goto_a

    .line 511
    .end local v3           #childHeight:I
    .end local v6           #childViewB:I
    .end local v9           #childViewT:I
    .end local v10           #childWidth:I
    .end local v18           #remainderSpace:I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/ActionBarContainer;->leftCounter:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    if-ge v11, v12, :cond_7

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    .line 514
    .restart local v10       #childWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    .line 516
    .restart local v3       #childHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->commonOffset:I

    move/from16 v20, v0

    if-gez v20, :cond_1a

    .line 517
    new-instance v20, Ljava/lang/RuntimeException;

    const-string v21, "common offset not initialize"

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 520
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->commonOffset:I

    move/from16 v20, v0

    add-int v7, v11, v20

    .line 521
    .restart local v7       #childViewL:I
    add-int v8, v7, v10

    .line 522
    .restart local v8       #childViewR:I
    move v11, v8

    .line 525
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/ActionBarContainer;->mPaddingTop:I

    move/from16 v20, v0

    sub-int v21, v16, v3

    div-int/lit8 v21, v21, 0x2

    add-int v9, v20, v21

    .line 526
    .restart local v9       #childViewT:I
    add-int v6, v9, v3

    .line 529
    .restart local v6       #childViewB:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-ge v8, v12, :cond_1b

    .end local v8           #childViewR:I
    :goto_b
    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v9, v8, v6}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_4

    .restart local v8       #childViewR:I
    :cond_1b
    move v8, v12

    goto :goto_b

    .line 269
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 455
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 173
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 175
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 176
    .local v1, containerWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 179
    .local v0, containerHeight:I
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/ActionBarContainer;->measureChildren(II)V

    .line 180
    invoke-virtual {p0, v1, v0}, Lcom/htc/widget/ActionBarContainer;->setMeasuredDimension(II)V

    .line 181
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "oldWidth"
    .parameter "oldHeight"

    .prologue
    .line 536
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 538
    iget-boolean v0, p0, Lcom/htc/widget/ActionBarContainer;->dragEnable:Z

    if-eqz v0, :cond_0

    .line 539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/ActionBarContainer;->dragReset:Z

    .line 540
    :cond_0
    return-void
.end method

.method public setBackUpEnabled(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 877
    invoke-direct {p0}, Lcom/htc/widget/ActionBarContainer;->setupBackUpView()V

    .line 879
    iget-object v2, p0, Lcom/htc/widget/ActionBarContainer;->backupView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/ActionBarContainer;->backupView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eqz p1, :cond_1

    move v2, v0

    :goto_0
    if-eq v3, v2, :cond_0

    .line 880
    iget-object v2, p0, Lcom/htc/widget/ActionBarContainer;->backupView:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 881
    :cond_0
    return-void

    :cond_1
    move v2, v1

    .line 879
    goto :goto_0

    :cond_2
    move v0, v1

    .line 880
    goto :goto_1
.end method

.method public setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 888
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/ActionBarContainer;->backupListener:Landroid/view/View$OnClickListener;

    .line 889
    iput-object p1, p0, Lcom/htc/widget/ActionBarContainer;->backupListener:Landroid/view/View$OnClickListener;

    .line 891
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer;->backupView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer;->backupView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer;->backupListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 893
    :cond_0
    return-void
.end method

.method public setCenterGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 207
    iget v0, p0, Lcom/htc/widget/ActionBarContainer;->centerGravity:I

    if-ne p1, v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 210
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 219
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/widget/ActionBarContainer;->centerGravity:I

    .line 223
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarContainer;->requestLayout()V

    goto :goto_0

    .line 215
    :sswitch_0
    iput p1, p0, Lcom/htc/widget/ActionBarContainer;->centerGravity:I

    goto :goto_1

    .line 210
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method public setCenterGravityEnabled(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/16 v2, 0x11

    const/4 v1, 0x3

    .line 188
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/htc/widget/ActionBarContainer;->centerGravity:I

    if-eq v0, v2, :cond_1

    .line 190
    iput v2, p0, Lcom/htc/widget/ActionBarContainer;->centerGravity:I

    .line 191
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarContainer;->requestLayout()V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    if-nez p1, :cond_0

    iget v0, p0, Lcom/htc/widget/ActionBarContainer;->centerGravity:I

    if-eq v0, v1, :cond_0

    .line 197
    iput v1, p0, Lcom/htc/widget/ActionBarContainer;->centerGravity:I

    .line 198
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarContainer;->requestLayout()V

    goto :goto_0
.end method

.method public setCounter(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 718
    invoke-direct {p0}, Lcom/htc/widget/ActionBarContainer;->setupCounterView()V

    .line 721
    iget v0, p0, Lcom/htc/widget/ActionBarContainer;->counter:I

    if-ne p1, v0, :cond_0

    .line 742
    :goto_0
    return-void

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 728
    const/16 v0, 0x64

    if-ge p1, v0, :cond_2

    .line 730
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer;->mContext:Landroid/content/Context;

    const v2, 0x203005e

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 741
    :cond_1
    :goto_1
    iput p1, p0, Lcom/htc/widget/ActionBarContainer;->counter:I

    goto :goto_0

    .line 735
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    const-string v1, "99+"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/ActionBarContainer;->mContext:Landroid/content/Context;

    const v2, 0x203005f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public setCounterVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 752
    invoke-direct {p0}, Lcom/htc/widget/ActionBarContainer;->setupCounterView()V

    .line 754
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 755
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer;->counterView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 756
    :cond_0
    return-void
.end method

.method public setCounterVisibility(IZ)V
    .locals 1
    .parameter "visibility"
    .parameter "leftSide"

    .prologue
    .line 764
    invoke-virtual {p0, p1}, Lcom/htc/widget/ActionBarContainer;->setCounterVisibility(I)V

    .line 766
    iget-boolean v0, p0, Lcom/htc/widget/ActionBarContainer;->leftCounter:Z

    if-eq v0, p2, :cond_0

    .line 768
    iput-boolean p2, p0, Lcom/htc/widget/ActionBarContainer;->leftCounter:Z

    .line 769
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarContainer;->requestLayout()V

    .line 771
    :cond_0
    return-void
.end method

.method public setDragIndicatorEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 853
    iget v0, p0, Lcom/htc/widget/ActionBarContainer;->supportMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/ActionBarContainer;->dragEnable:Z

    if-ne p1, v0, :cond_1

    .line 869
    :cond_0
    :goto_0
    return-void

    .line 859
    :cond_1
    iput-boolean p1, p0, Lcom/htc/widget/ActionBarContainer;->dragEnable:Z

    .line 860
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/ActionBarContainer;->dragReset:Z

    .line 862
    iget-boolean v0, p0, Lcom/htc/widget/ActionBarContainer;->dragEnable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer;->dragDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 863
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer;->resource:Landroid/content/res/Resources;

    const v1, 0x208013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/ActionBarContainer;->dragDrawable:Landroid/graphics/drawable/Drawable;

    .line 865
    :cond_2
    iget-boolean v0, p0, Lcom/htc/widget/ActionBarContainer;->dragEnable:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/htc/widget/ActionBarContainer;->dragOffset:I

    if-gez v0, :cond_3

    .line 866
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer;->resource:Landroid/content/res/Resources;

    const v1, 0x2050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/ActionBarContainer;->dragOffset:I

    .line 868
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarContainer;->invalidate()V

    goto :goto_0
.end method

.method public setLastDividerEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 831
    iget-boolean v0, p0, Lcom/htc/widget/ActionBarContainer;->lastDividerEnable:Z

    if-ne v0, p1, :cond_0

    .line 839
    :goto_0
    return-void

    .line 837
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/ActionBarContainer;->lastDividerEnable:Z

    .line 838
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarContainer;->invalidate()V

    goto :goto_0
.end method

.method public setLeftDividerEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/htc/widget/ActionBarContainer;->enableLeftDivider:Z

    if-eq v0, p1, :cond_0

    .line 652
    iput-boolean p1, p0, Lcom/htc/widget/ActionBarContainer;->enableLeftDivider:Z

    .line 653
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarContainer;->invalidate()V

    .line 655
    :cond_0
    return-void
.end method

.method public setProgressVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/htc/widget/ActionBarContainer;->setupProgressView()V

    .line 678
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer;->progressView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer;->progressView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 679
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer;->progressView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 680
    :cond_0
    return-void
.end method

.method public setRightDividerEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 659
    iget-boolean v0, p0, Lcom/htc/widget/ActionBarContainer;->enableRightDivider:Z

    if-eq v0, p1, :cond_0

    .line 661
    iput-boolean p1, p0, Lcom/htc/widget/ActionBarContainer;->enableRightDivider:Z

    .line 662
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarContainer;->invalidate()V

    .line 664
    :cond_0
    return-void
.end method

.method public setSmallBackUpEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1128
    return-void
.end method

.method public setSupportMode(I)V
    .locals 6
    .parameter "mode"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1137
    iget v0, p0, Lcom/htc/widget/ActionBarContainer;->supportMode:I

    if-ne v0, p1, :cond_1

    .line 1171
    :cond_0
    :goto_0
    return-void

    .line 1141
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1158
    :cond_2
    :goto_1
    if-eq p1, v4, :cond_3

    if-ne p1, v5, :cond_4

    .line 1160
    :cond_3
    iput p1, p0, Lcom/htc/widget/ActionBarContainer;->supportMode:I

    .line 1162
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/htc/widget/ActionBarContainer;->setPadding(IIII)V

    .line 1163
    invoke-virtual {p0, v4}, Lcom/htc/widget/ActionBarContainer;->setLeftDividerEnabled(Z)V

    .line 1164
    invoke-virtual {p0, v4}, Lcom/htc/widget/ActionBarContainer;->setRightDividerEnabled(Z)V

    .line 1166
    invoke-direct {p0}, Lcom/htc/widget/ActionBarContainer;->updateContainerLayout()V

    .line 1169
    :cond_4
    if-ne p1, v5, :cond_0

    .line 1170
    invoke-virtual {p0, v4}, Lcom/htc/widget/ActionBarContainer;->setDragIndicatorEnabled(Z)V

    goto :goto_0

    .line 1144
    :pswitch_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer;->mContext:Landroid/content/Context;

    const-string v1, "common_app_bkg_top_src"

    const v2, 0x2080118

    invoke-static {v0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBarContainer;->setBackgroundResource(I)V

    goto :goto_1

    .line 1149
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer;->mContext:Landroid/content/Context;

    const-string v1, "automotive_common_app_bkg_top_src"

    const v2, 0x208012a

    invoke-static {v0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBarContainer;->setBackgroundResource(I)V

    .line 1152
    iget v0, p0, Lcom/htc/widget/ActionBarContainer;->dividerOffset:I

    if-gez v0, :cond_2

    .line 1153
    iget-object v0, p0, Lcom/htc/widget/ActionBarContainer;->resource:Landroid/content/res/Resources;

    const v1, 0x2050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/ActionBarContainer;->dividerOffset:I

    goto :goto_1

    .line 1141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method updateFontResource()V
    .locals 4

    .prologue
    .line 813
    const/4 v2, 0x0

    .local v2, loop:I
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarContainer;->getChildCount()I

    move-result v0

    .local v0, childCount:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 815
    invoke-virtual {p0, v2}, Lcom/htc/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 818
    .local v1, childView:Landroid/view/View;
    if-nez v1, :cond_1

    .line 824
    .end local v1           #childView:Landroid/view/View;
    :cond_0
    return-void

    .line 821
    .restart local v1       #childView:Landroid/view/View;
    :cond_1
    instance-of v3, v1, Lcom/htc/widget/ActionBarContainer$OnResourceUpdateListener;

    if-eqz v3, :cond_2

    .line 822
    check-cast v1, Lcom/htc/widget/ActionBarContainer$OnResourceUpdateListener;

    .end local v1           #childView:Landroid/view/View;
    invoke-interface {v1}, Lcom/htc/widget/ActionBarContainer$OnResourceUpdateListener;->onResourceUpdate()V

    .line 813
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
