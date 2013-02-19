.class public Lcom/htc/app/EditWindowActivity;
.super Landroid/app/Activity;
.source "EditWindowActivity.java"


# static fields
.field private static final mEditingWindow:I = 0x202000b

.field public static final mLayout_EditingWindowType1:I = 0x2090004

.field public static final mLayout_EditingWindowType2:I = 0x2090005

.field public static final mLayout_EditingWindowType3:I = 0x2090006

.field private static final mLayout_EditingWindowTypeDefault:I = 0x2090004

.field private static mPortMode:Z


# instance fields
.field private isSizeChangedFullScreen:Z

.field private mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

.field mLayout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/app/EditWindowActivity;->mPortMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const v0, 0x2090004

    iput v0, p0, Lcom/htc/app/EditWindowActivity;->mLayout:I

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/EditWindowActivity;->isSizeChangedFullScreen:Z

    return-void
.end method

.method private adjustTitleSkin()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0}, Lcom/htc/widget/EditWindowLayout;->adjustTitleSkin()V

    .line 186
    :cond_0
    return-void
.end method

.method private hideActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/htc/app/EditWindowActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 72
    .local v0, ab:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 74
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 75
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 76
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 77
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 78
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setShowHideActionBarViewOnActionModeFinished(Z)V

    .line 81
    :cond_0
    return-void
.end method

.method private initEditWindowLayout()V
    .locals 1

    .prologue
    .line 178
    const v0, 0x202000b

    invoke-virtual {p0, v0}, Lcom/htc/app/EditWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/EditWindowLayout;

    iput-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    .line 179
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0}, Lcom/htc/widget/EditWindowLayout;->initEditTitleBarStyle()V

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/htc/app/EditWindowActivity;->adjustTitleSkin()V

    .line 181
    iget-boolean v0, p0, Lcom/htc/app/EditWindowActivity;->isSizeChangedFullScreen:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/app/EditWindowActivity;->enableSizeChangedFullScreen()V

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/htc/app/EditWindowActivity;->disableSizeChangedFullScreen()V

    goto :goto_0
.end method


# virtual methods
.method public addViewToBody(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->addViewToBody(I)V

    .line 403
    :cond_0
    return-void
.end method

.method public addViewToBody(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->addViewToBody(Landroid/view/View;)V

    .line 396
    :cond_0
    return-void
.end method

.method public disableSizeChangedFullSceen()V
    .locals 0

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/htc/app/EditWindowActivity;->disableSizeChangedFullScreen()V

    .line 127
    return-void
.end method

.method public disableSizeChangedFullScreen()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/EditWindowActivity;->isSizeChangedFullScreen:Z

    .line 140
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0}, Lcom/htc/widget/EditWindowLayout;->disableSizeChangedFullScreen()V

    .line 141
    :cond_0
    return-void
.end method

.method public enableButton(IZ)V
    .locals 1
    .parameter "buttonId"
    .parameter "enable"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/EditWindowLayout;->enableButton(IZ)V

    .line 372
    :cond_0
    return-void
.end method

.method public enableSizeChangedFullSceen()V
    .locals 0

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/htc/app/EditWindowActivity;->enableSizeChangedFullScreen()V

    .line 121
    return-void
.end method

.method public enableSizeChangedFullScreen()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/EditWindowActivity;->isSizeChangedFullScreen:Z

    .line 133
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0}, Lcom/htc/widget/EditWindowLayout;->enableSizeChangedFullScreen()V

    .line 134
    :cond_0
    return-void
.end method

.method public getAppDropDownListItemAdapterInstance(Ljava/util/LinkedList;)Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapterInterface;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapterInterface;"
        }
    .end annotation

    .prologue
    .line 474
    .local p1, itemNameLists:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 475
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->getAppDropDownListItemAdapterInstance(Ljava/util/LinkedList;)Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppDropDownListItemAdapterInstance(Ljava/util/LinkedList;Ljava/util/LinkedList;)Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapterInterface;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapterInterface;"
        }
    .end annotation

    .prologue
    .line 478
    .local p1, itemNameLists:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    .local p2, enableLists:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 479
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/EditWindowLayout;->getAppDropDownListItemAdapterInstance(Ljava/util/LinkedList;Ljava/util/LinkedList;)Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 86
    invoke-direct {p0}, Lcom/htc/app/EditWindowActivity;->hideActionBar()V

    .line 87
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 191
    invoke-direct {p0}, Lcom/htc/app/EditWindowActivity;->adjustTitleSkin()V

    .line 192
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 193
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/app/EditWindowActivity;->mPortMode:Z

    .line 200
    :goto_0
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/app/EditWindowActivity;->mPortMode:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/htc/app/EditWindowActivity;->requestWindowFeature(I)Z

    .line 58
    const v1, 0x203006c

    invoke-virtual {p0, v1}, Lcom/htc/app/EditWindowActivity;->setTheme(I)V

    .line 59
    invoke-direct {p0}, Lcom/htc/app/EditWindowActivity;->hideActionBar()V

    .line 60
    iget v1, p0, Lcom/htc/app/EditWindowActivity;->mLayout:I

    invoke-virtual {p0, v1}, Lcom/htc/app/EditWindowActivity;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/htc/app/EditWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 62
    .local v0, conf:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_0

    .line 63
    const/4 v1, 0x0

    sput-boolean v1, Lcom/htc/app/EditWindowActivity;->mPortMode:Z

    .line 69
    :goto_0
    return-void

    .line 65
    :cond_0
    sput-boolean v2, Lcom/htc/app/EditWindowActivity;->mPortMode:Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->refreshOptionsMenu(Landroid/view/Menu;)V

    .line 104
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->refreshOptionsMenu(Landroid/view/Menu;)V

    .line 111
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setAppDropDownAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1
    .parameter "baseAdapter"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setAppDropDownAdapter(Landroid/widget/BaseAdapter;)V

    .line 442
    :cond_0
    return-void
.end method

.method public setAppDropDownAdapter(Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapterInterface;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setAppDropDownAdapter(Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapterInterface;)V

    .line 449
    :cond_0
    return-void
.end method

.method public setAppDropDownEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setAppDropDownEnabled(Z)V

    .line 472
    :cond_0
    return-void
.end method

.method public setAppDropDownOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "onClickListener"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setAppDropDownOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    :cond_0
    return-void
.end method

.method public setAppDropDownOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 1
    .parameter "onItemClickListener"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setAppDropDownOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 464
    :cond_0
    return-void
.end method

.method public setButtonLabel(II)V
    .locals 1
    .parameter "buttonId"
    .parameter "resId"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/EditWindowLayout;->setButtonLabel(II)V

    .line 317
    :cond_0
    return-void
.end method

.method public setButtonLabel(ILjava/lang/String;)V
    .locals 1
    .parameter "buttonId"
    .parameter "str"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/EditWindowLayout;->setButtonLabel(ILjava/lang/String;)V

    .line 332
    :cond_0
    return-void
.end method

.method public setButtonListener(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "buttonId"
    .parameter "l"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/EditWindowLayout;->setButtonListener(ILandroid/view/View$OnClickListener;)V

    .line 347
    :cond_0
    return-void
.end method

.method public setCenterButtonLabel(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setCenterButtonLabel(I)V

    .line 284
    :cond_0
    return-void
.end method

.method public setCenterButtonLabel(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setCenterButtonLabel(Ljava/lang/String;)V

    .line 275
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .parameter "layoutResID"

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 148
    invoke-direct {p0}, Lcom/htc/app/EditWindowActivity;->initEditWindowLayout()V

    .line 149
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/app/EditWindowActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    invoke-direct {p0}, Lcom/htc/app/EditWindowActivity;->initEditWindowLayout()V

    .line 172
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "view"
    .parameter "params"

    .prologue
    const/4 v2, -0x1

    .line 155
    const v1, 0x202000b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 156
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 157
    .local v0, frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 158
    invoke-super {p0, p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    .end local v0           #frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    invoke-direct {p0}, Lcom/htc/app/EditWindowActivity;->initEditWindowLayout()V

    .line 163
    return-void

    .line 160
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setLayout(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 95
    iput p1, p0, Lcom/htc/app/EditWindowActivity;->mLayout:I

    .line 96
    return-void
.end method

.method public setLeftButtonLabel(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setLeftButtonLabel(I)V

    .line 266
    :cond_0
    return-void
.end method

.method public setLeftButtonLabel(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setLeftButtonLabel(Ljava/lang/String;)V

    .line 257
    :cond_0
    return-void
.end method

.method public setMainTitle(I)V
    .locals 1
    .parameter "stringId"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setMainTitle(I)V

    .line 428
    :cond_0
    return-void
.end method

.method public setMainTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "mainTitleName"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setMainTitle(Ljava/lang/String;)V

    .line 414
    :cond_0
    return-void
.end method

.method public setRightButtonLabel(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setRightButtonLabel(I)V

    .line 248
    :cond_0
    return-void
.end method

.method public setRightButtonLabel(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setRightButtonLabel(Ljava/lang/String;)V

    .line 239
    :cond_0
    return-void
.end method

.method public setSoloButtonLabel(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setSoloButtonLabel(I)V

    .line 302
    :cond_0
    return-void
.end method

.method public setSoloButtonLabel(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setSoloButtonLabel(Ljava/lang/String;)V

    .line 293
    :cond_0
    return-void
.end method

.method public setSubTitle(I)V
    .locals 1
    .parameter "stringId"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setSubTitle(I)V

    .line 435
    :cond_0
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "subTitleName"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setSubTitle(Ljava/lang/String;)V

    .line 421
    :cond_0
    return-void
.end method

.method public setTitleLabel(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setTitleLabel(I)V

    .line 230
    :cond_0
    return-void
.end method

.method public setTitleLabel(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setTitleLabel(Ljava/lang/String;)V

    .line 212
    :cond_0
    return-void
.end method

.method public setTitleLable(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setTitleLable(Ljava/lang/String;)V

    .line 221
    :cond_0
    return-void
.end method

.method public setupFooterButtons(I)V
    .locals 1
    .parameter "button_number"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setupFooterButtons(I)V

    .line 356
    :cond_0
    return-void
.end method

.method public showProgressBar(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->showProgressBar(Z)V

    .line 380
    :cond_0
    return-void
.end method

.method public showRightImageView(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/EditWindowActivity;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->showRightImageView(Z)V

    .line 388
    :cond_0
    return-void
.end method
