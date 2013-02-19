.class public Lcom/htc/widget/ActionBarText;
.super Landroid/widget/RelativeLayout;
.source "ActionBarText.java"

# interfaces
.implements Lcom/htc/widget/ActionBarContainer$OnResourceUpdateListener;


# static fields
.field public static final MODE_AUTOMOTIVE:I = 0x2

.field public static final MODE_EXTERNAL:I = 0x1


# instance fields
.field private animateLayout:Landroid/widget/RelativeLayout;

.field private backupEnable:Z

.field private logoDrawable:Landroid/graphics/drawable/Drawable;

.field private paddingRecord:I

.field private primaryMargin:I

.field private primaryView:Landroid/widget/TextView;

.field private resetBounds:Z

.field private resource:Landroid/content/res/Resources;

.field private secondaryView:Landroid/widget/TextView;

.field private supportMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/high16 v1, -0x8000

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object v4, p0, Lcom/htc/widget/ActionBarText;->resource:Landroid/content/res/Resources;

    .line 32
    iput-object v4, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    .line 33
    iput-object v4, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    .line 35
    iput v1, p0, Lcom/htc/widget/ActionBarText;->paddingRecord:I

    .line 96
    iput v1, p0, Lcom/htc/widget/ActionBarText;->primaryMargin:I

    .line 330
    iput v1, p0, Lcom/htc/widget/ActionBarText;->supportMode:I

    .line 346
    iput-object v4, p0, Lcom/htc/widget/ActionBarText;->animateLayout:Landroid/widget/RelativeLayout;

    .line 387
    iput-object v4, p0, Lcom/htc/widget/ActionBarText;->logoDrawable:Landroid/graphics/drawable/Drawable;

    .line 416
    iput-boolean v3, p0, Lcom/htc/widget/ActionBarText;->resetBounds:Z

    .line 472
    iput-boolean v3, p0, Lcom/htc/widget/ActionBarText;->backupEnable:Z

    .line 58
    iput-object v4, p0, Lcom/htc/widget/ActionBarText;->resource:Landroid/content/res/Resources;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/ActionBarText;->resource:Landroid/content/res/Resources;

    .line 61
    iget-object v1, p0, Lcom/htc/widget/ActionBarText;->resource:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "package resouce null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/ActionBarText;->resource:Landroid/content/res/Resources;

    const v2, 0x2050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/ActionBarText;->paddingRecord:I

    .line 67
    iget v1, p0, Lcom/htc/widget/ActionBarText;->paddingRecord:I

    iget v2, p0, Lcom/htc/widget/ActionBarText;->paddingRecord:I

    invoke-virtual {p0, v1, v3, v2, v3}, Lcom/htc/widget/ActionBarText;->setPadding(IIII)V

    .line 68
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBarText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x209000c

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 73
    iput-object v4, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    .line 74
    const v1, 0x2020044

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBarText;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    .line 76
    iput-object v4, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    .line 77
    const v1, 0x2020045

    invoke-virtual {p0, v1}, Lcom/htc/widget/ActionBarText;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    .line 80
    iget-object v1, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    if-nez v1, :cond_2

    .line 81
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "inflate layout resource incorrect"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, lparams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 91
    .restart local v0       #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, p0, Lcom/htc/widget/ActionBarText;->primaryMargin:I

    .line 93
    .end local v0           #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    invoke-direct {p0}, Lcom/htc/widget/ActionBarText;->updateLayoutEnvironment()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "mode"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object v0, p0, Lcom/htc/widget/ActionBarText;->resource:Landroid/content/res/Resources;

    .line 32
    iput-object v0, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    .line 33
    iput-object v0, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    .line 35
    iput v1, p0, Lcom/htc/widget/ActionBarText;->paddingRecord:I

    .line 96
    iput v1, p0, Lcom/htc/widget/ActionBarText;->primaryMargin:I

    .line 330
    iput v1, p0, Lcom/htc/widget/ActionBarText;->supportMode:I

    .line 346
    iput-object v0, p0, Lcom/htc/widget/ActionBarText;->animateLayout:Landroid/widget/RelativeLayout;

    .line 387
    iput-object v0, p0, Lcom/htc/widget/ActionBarText;->logoDrawable:Landroid/graphics/drawable/Drawable;

    .line 416
    iput-boolean v3, p0, Lcom/htc/widget/ActionBarText;->resetBounds:Z

    .line 472
    iput-boolean v3, p0, Lcom/htc/widget/ActionBarText;->backupEnable:Z

    .line 41
    iput-object v0, p0, Lcom/htc/widget/ActionBarText;->resource:Landroid/content/res/Resources;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/ActionBarText;->resource:Landroid/content/res/Resources;

    .line 44
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->resource:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "package resource null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    if-ne p2, v4, :cond_1

    .line 49
    invoke-virtual {p0, v4}, Lcom/htc/widget/ActionBarText;->setSupportMode(I)V

    .line 50
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBarText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/ActionBarText;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/widget/ActionBarText;->setupFontEnvironment()V

    return-void
.end method

.method private setupAutomotiveMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 352
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->animateLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 385
    :goto_0
    return-void

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarText;->removeAllViews()V

    .line 358
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 360
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 361
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->resource:Landroid/content/res/Resources;

    const v1, 0x20e0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/htc/widget/ActionBarText;->primaryMargin:I

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/ActionBarText;->animateLayout:Landroid/widget/RelativeLayout;

    .line 368
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    iget v3, p0, Lcom/htc/widget/ActionBarText;->primaryMargin:I

    neg-int v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/widget/ActionBarUtil;->createAnimateLayout(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;I)Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/ActionBarText;->animateLayout:Landroid/widget/RelativeLayout;

    .line 370
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->animateLayout:Landroid/widget/RelativeLayout;

    const v1, 0x2020044

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    .line 371
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->animateLayout:Landroid/widget/RelativeLayout;

    const v1, 0x2020045

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    .line 374
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    if-nez v0, :cond_3

    .line 375
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "inflate layout resource incorrect"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->resource:Landroid/content/res/Resources;

    const/high16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/ActionBarText;->paddingRecord:I

    .line 379
    iget v0, p0, Lcom/htc/widget/ActionBarText;->paddingRecord:I

    iget v1, p0, Lcom/htc/widget/ActionBarText;->paddingRecord:I

    invoke-virtual {p0, v0, v4, v1, v4}, Lcom/htc/widget/ActionBarText;->setPadding(IIII)V

    .line 380
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->animateLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBarText;->addView(Landroid/view/View;)V

    .line 383
    invoke-direct {p0}, Lcom/htc/widget/ActionBarText;->updateLayoutEnvironment()V

    .line 384
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarText;->requestLayout()V

    goto :goto_0
.end method

.method private setupFontEnvironment()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 137
    iget v3, p0, Lcom/htc/widget/ActionBarText;->supportMode:I

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 144
    .local v0, lparams1:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 147
    .local v1, lparams2:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/htc/widget/ActionBarText;->resource:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontsize:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 165
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarText;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    .line 167
    .local v2, offset:I
    iput v2, p0, Lcom/htc/widget/ActionBarText;->primaryMargin:I

    .line 168
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 169
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 151
    .end local v2           #offset:I
    :pswitch_2
    iput v4, p0, Lcom/htc/widget/ActionBarText;->primaryMargin:I

    .line 152
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 153
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 158
    :pswitch_3
    iget-object v3, p0, Lcom/htc/widget/ActionBarText;->resource:Landroid/content/res/Resources;

    const v4, 0x2050003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 159
    iget-object v3, p0, Lcom/htc/widget/ActionBarText;->resource:Landroid/content/res/Resources;

    const v4, 0x205000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 160
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, p0, Lcom/htc/widget/ActionBarText;->primaryMargin:I

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private updateLayoutEnvironment()V
    .locals 8

    .prologue
    const/16 v7, 0xf

    const/16 v6, 0xa

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    iget-object v1, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const/4 v0, 0x0

    .line 108
    .local v0, lparams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 110
    .restart local v0       #lparams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 113
    invoke-virtual {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 114
    invoke-virtual {v0, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 115
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 117
    iget v1, p0, Lcom/htc/widget/ActionBarText;->supportMode:I

    if-ne v1, v5, :cond_2

    .line 118
    iget-object v1, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/widget/ActionBarText;->mContext:Landroid/content/Context;

    const v3, 0x203007b

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 131
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarText;->requestLayout()V

    goto :goto_0

    .line 122
    :cond_3
    iget v1, p0, Lcom/htc/widget/ActionBarText;->primaryMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 123
    invoke-virtual {v0, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 124
    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 126
    iget v1, p0, Lcom/htc/widget/ActionBarText;->supportMode:I

    if-ne v1, v5, :cond_2

    .line 127
    iget-object v1, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/widget/ActionBarText;->mContext:Landroid/content/Context;

    const v3, 0x203007c

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 424
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 427
    iget-object v4, p0, Lcom/htc/widget/ActionBarText;->logoDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/htc/widget/ActionBarText;->supportMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 430
    iget-boolean v4, p0, Lcom/htc/widget/ActionBarText;->resetBounds:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 432
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/ActionBarText;->resetBounds:Z

    .line 434
    iget-object v4, p0, Lcom/htc/widget/ActionBarText;->logoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 435
    .local v1, drawableWidth:I
    iget-object v4, p0, Lcom/htc/widget/ActionBarText;->logoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 437
    .local v0, drawableHeight:I
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarText;->getHeight()I

    move-result v4

    sub-int/2addr v4, v0

    div-int/lit8 v3, v4, 0x2

    .line 438
    .local v3, top:I
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarText;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/ActionBarText;->paddingRecord:I

    sub-int v2, v4, v5

    .line 441
    .local v2, right:I
    iget-object v4, p0, Lcom/htc/widget/ActionBarText;->logoDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v5, v2, v1

    add-int v6, v3, v0

    invoke-virtual {v4, v5, v3, v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 443
    .end local v0           #drawableHeight:I
    .end local v1           #drawableWidth:I
    .end local v2           #right:I
    .end local v3           #top:I
    :cond_0
    iget-object v4, p0, Lcom/htc/widget/ActionBarText;->logoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 445
    :cond_1
    return-void
.end method

.method public getPrimaryText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecondaryText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResourceUpdate()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 275
    iget v0, p0, Lcom/htc/widget/ActionBarText;->supportMode:I

    if-ne v0, v3, :cond_0

    .line 292
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/ActionBarText;->mContext:Landroid/content/Context;

    const v2, 0x2030052

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/ActionBarText;->mContext:Landroid/content/Context;

    const v2, 0x2030057

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 288
    :cond_2
    iget v0, p0, Lcom/htc/widget/ActionBarText;->supportMode:I

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 289
    invoke-direct {p0}, Lcom/htc/widget/ActionBarText;->setupFontEnvironment()V

    .line 291
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarText;->requestLayout()V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "owidth"
    .parameter "oheight"

    .prologue
    .line 453
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 455
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/ActionBarText;->resetBounds:Z

    .line 456
    return-void
.end method

.method setBackUpEnabled(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    .line 477
    iget-boolean v0, p0, Lcom/htc/widget/ActionBarText;->backupEnable:Z

    if-ne v0, p1, :cond_0

    .line 485
    :goto_0
    return-void

    .line 483
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/ActionBarText;->backupEnable:Z

    .line 484
    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    iget v2, p0, Lcom/htc/widget/ActionBarText;->mPaddingRight:I

    invoke-virtual {p0, v0, v1, v2, v1}, Lcom/htc/widget/ActionBarText;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/htc/widget/ActionBarText;->paddingRecord:I

    goto :goto_1
.end method

.method public setLogoDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "drawable"

    .prologue
    const/4 v5, 0x0

    .line 393
    iget v3, p0, Lcom/htc/widget/ActionBarText;->supportMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 414
    :goto_0
    return-void

    .line 396
    :cond_0
    iput-object p1, p0, Lcom/htc/widget/ActionBarText;->logoDrawable:Landroid/graphics/drawable/Drawable;

    .line 399
    iget-object v3, p0, Lcom/htc/widget/ActionBarText;->logoDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 401
    iget-object v3, p0, Lcom/htc/widget/ActionBarText;->logoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 402
    .local v2, width:I
    iget-object v3, p0, Lcom/htc/widget/ActionBarText;->logoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 404
    .local v0, height:I
    iget-object v3, p0, Lcom/htc/widget/ActionBarText;->resource:Landroid/content/res/Resources;

    const v4, 0x2050001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 406
    .local v1, textPadding:I
    iget v3, p0, Lcom/htc/widget/ActionBarText;->mPaddingLeft:I

    iget v4, p0, Lcom/htc/widget/ActionBarText;->paddingRecord:I

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    invoke-virtual {p0, v3, v5, v4, v5}, Lcom/htc/widget/ActionBarText;->setPadding(IIII)V

    .line 412
    .end local v0           #height:I
    .end local v1           #textPadding:I
    .end local v2           #width:I
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/ActionBarText;->resetBounds:Z

    .line 413
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarText;->invalidate()V

    goto :goto_0

    .line 409
    :cond_1
    iget v3, p0, Lcom/htc/widget/ActionBarText;->mPaddingLeft:I

    iget v4, p0, Lcom/htc/widget/ActionBarText;->paddingRecord:I

    invoke-virtual {p0, v3, v5, v4, v5}, Lcom/htc/widget/ActionBarText;->setPadding(IIII)V

    goto :goto_1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->animateLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->animateLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    iget-object v1, p0, Lcom/htc/widget/ActionBarText;->animateLayout:Landroid/widget/RelativeLayout;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 470
    :cond_0
    return-void

    .line 468
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPrimaryText(I)V
    .locals 1
    .parameter "resource"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    .line 192
    :cond_0
    return-void
.end method

.method public setPrimaryText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    .line 183
    :cond_0
    return-void
.end method

.method public setPrimaryTextCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v2, 0x1

    .line 300
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 301
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 309
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 305
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 307
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setPrimaryVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->primaryView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    invoke-direct {p0}, Lcom/htc/widget/ActionBarText;->updateLayoutEnvironment()V

    .line 219
    :cond_0
    return-void
.end method

.method public setSecondaryText(I)V
    .locals 1
    .parameter "resource"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    .line 210
    :cond_0
    return-void
.end method

.method public setSecondaryText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    .line 201
    :cond_0
    return-void
.end method

.method public setSecondaryTextCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v2, 0x1

    .line 317
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 318
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 326
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 322
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 324
    iget-object v0, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setSecondaryVisibility(I)V
    .locals 5
    .parameter "visibility"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 223
    iget-object v2, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 225
    iget-object v2, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    invoke-direct {p0}, Lcom/htc/widget/ActionBarText;->updateLayoutEnvironment()V

    .line 229
    iget v2, p0, Lcom/htc/widget/ActionBarText;->supportMode:I

    if-eq v2, v4, :cond_0

    const/16 v2, 0x8

    if-eq p1, v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/ActionBarText;->resource:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontsize:I

    if-ne v2, v4, :cond_1

    .line 234
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 235
    .local v1, widthMeasureSpec:I
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 237
    .local v0, heightMeasureSpec:I
    iget-object v2, p0, Lcom/htc/widget/ActionBarText;->secondaryView:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->measure(II)V

    .line 240
    new-instance v2, Lcom/htc/widget/ActionBarText$1;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarText$1;-><init>(Lcom/htc/widget/ActionBarText;)V

    invoke-virtual {p0, v2}, Lcom/htc/widget/ActionBarText;->post(Ljava/lang/Runnable;)Z

    .line 257
    .end local v0           #heightMeasureSpec:I
    .end local v1           #widthMeasureSpec:I
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/ActionBarText;->setupFontEnvironment()V

    .line 253
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarText;->requestLayout()V

    goto :goto_0
.end method

.method public setSupportMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v1, 0x2

    .line 336
    iget v0, p0, Lcom/htc/widget/ActionBarText;->supportMode:I

    if-ne v0, p1, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    if-ne p1, v1, :cond_0

    .line 341
    iput v1, p0, Lcom/htc/widget/ActionBarText;->supportMode:I

    .line 342
    invoke-direct {p0}, Lcom/htc/widget/ActionBarText;->setupAutomotiveMode()V

    goto :goto_0
.end method
