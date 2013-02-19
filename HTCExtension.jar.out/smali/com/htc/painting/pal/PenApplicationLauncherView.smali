.class public Lcom/htc/painting/pal/PenApplicationLauncherView;
.super Landroid/widget/FrameLayout;
.source "PenApplicationLauncherView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/pal/PenApplicationLauncherView$OnPALItemClickListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/htc/painting/pal/PenAppAdapter;

.field private mLaunched:Lcom/htc/painting/pal/LaunchedWinInfo;

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0}, Lcom/htc/painting/pal/PenApplicationLauncherView;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0}, Lcom/htc/painting/pal/PenApplicationLauncherView;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0}, Lcom/htc/painting/pal/PenApplicationLauncherView;->init()V

    .line 37
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 40
    iget-object v1, p0, Lcom/htc/painting/pal/PenApplicationLauncherView;->mContext:Landroid/content/Context;

    const v2, 0x2090069

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, content:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/htc/painting/pal/PenApplicationLauncherView;->addView(Landroid/view/View;)V

    .line 43
    const v1, 0x20200d4

    invoke-virtual {p0, v1}, Lcom/htc/painting/pal/PenApplicationLauncherView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/painting/pal/PenApplicationLauncherView;->mText:Landroid/widget/TextView;

    .line 44
    iget-object v1, p0, Lcom/htc/painting/pal/PenApplicationLauncherView;->mText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    const v1, 0x20200ae

    invoke-virtual {p0, v1}, Lcom/htc/painting/pal/PenApplicationLauncherView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/htc/painting/pal/PenApplicationLauncherView;->mListView:Lcom/htc/widget/HtcListView;

    .line 46
    iget-object v1, p0, Lcom/htc/painting/pal/PenApplicationLauncherView;->mListView:Lcom/htc/widget/HtcListView;

    const v2, 0x2080119

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setBackgroundResource(I)V

    .line 48
    new-instance v1, Lcom/htc/painting/pal/PenAppAdapter;

    iget-object v2, p0, Lcom/htc/painting/pal/PenApplicationLauncherView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/htc/painting/pal/PenAppAdapter;-><init>(Landroid/content/Context;Lcom/htc/painting/pal/PenApplicationLauncherView;)V

    iput-object v1, p0, Lcom/htc/painting/pal/PenApplicationLauncherView;->mAdapter:Lcom/htc/painting/pal/PenAppAdapter;

    .line 49
    iget-object v1, p0, Lcom/htc/painting/pal/PenApplicationLauncherView;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/painting/pal/PenApplicationLauncherView;->mAdapter:Lcom/htc/painting/pal/PenAppAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    iget-object v1, p0, Lcom/htc/painting/pal/PenApplicationLauncherView;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/painting/pal/PenApplicationLauncherView;->mAdapter:Lcom/htc/painting/pal/PenAppAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 51
    return-void
.end method


# virtual methods
.method public enableActions(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/htc/painting/pal/PenApplicationLauncherView;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/painting/pal/PenApplicationLauncherView;->mAdapter:Lcom/htc/painting/pal/PenAppAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/pal/PenApplicationLauncherView;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public getLaunchedWindowInfo()Lcom/htc/painting/pal/LaunchedWinInfo;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/painting/pal/PenApplicationLauncherView;->mLaunched:Lcom/htc/painting/pal/LaunchedWinInfo;

    return-object v0
.end method

.method public setLaunchedApp(Lcom/htc/painting/pal/LaunchedWinInfo;)V
    .locals 2
    .parameter "app"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/htc/painting/pal/PenApplicationLauncherView;->mLaunched:Lcom/htc/painting/pal/LaunchedWinInfo;

    .line 74
    iget-object v0, p0, Lcom/htc/painting/pal/PenApplicationLauncherView;->mAdapter:Lcom/htc/painting/pal/PenAppAdapter;

    iget-object v1, p0, Lcom/htc/painting/pal/PenApplicationLauncherView;->mLaunched:Lcom/htc/painting/pal/LaunchedWinInfo;

    invoke-virtual {v0, v1}, Lcom/htc/painting/pal/PenAppAdapter;->updateAdapterByLaunchedApp(Lcom/htc/painting/pal/LaunchedWinInfo;)V

    .line 75
    iget-object v0, p0, Lcom/htc/painting/pal/PenApplicationLauncherView;->mText:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/htc/painting/pal/LaunchedWinInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

.method public setOnPALItemClickListener(Lcom/htc/painting/pal/PenApplicationLauncherView$OnPALItemClickListener;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/painting/pal/PenApplicationLauncherView;->mAdapter:Lcom/htc/painting/pal/PenAppAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/painting/pal/PenAppAdapter;->setOnPALItemClickListener(Lcom/htc/painting/pal/PenApplicationLauncherView$OnPALItemClickListener;)V

    .line 92
    return-void
.end method

.method public updateAppAdapter()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/painting/pal/PenApplicationLauncherView;->mAdapter:Lcom/htc/painting/pal/PenAppAdapter;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/htc/painting/pal/PenApplicationLauncherView;->mAdapter:Lcom/htc/painting/pal/PenAppAdapter;

    invoke-virtual {v0}, Lcom/htc/painting/pal/PenAppAdapter;->refreshPenApps()V

    .line 66
    :cond_0
    return-void
.end method
