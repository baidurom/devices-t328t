.class public Lcom/htc/app/FilePickerRecentFragment;
.super Landroid/app/Fragment;
.source "FilePickerRecentFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/FilePickerRecentFragment$UpdateUiRunnable;,
        Lcom/htc/app/FilePickerRecentFragment$H;
    }
.end annotation


# static fields
.field public static final MSG_SCAN_END:I = 0x3e9

.field public static final MSG_SCAN_START:I = 0x3e8

.field public static final NO_RECENT_FILE:I = 0x3ea

.field public static final RESET_EMPTY_VIEW:I = 0x3eb

.field public static final RESET_HEADER:I = 0x3ec


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private common_string_loading:Ljava/lang/String;

.field private emptyView:Landroid/widget/TextView;

.field private htc_filepicker_file:Ljava/lang/String;

.field private htc_filepicker_files:Ljava/lang/String;

.field private htc_filepicker_no_recent_files:Ljava/lang/String;

.field private isFirstTime:Ljava/lang/Boolean;

.field private mFilePickerCore:Lcom/htc/app/FilePickerCore;

.field private final mFilePickerLayout_RecentView:I

.field private final mFilePickerLayout_ViewHeader:I

.field private mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

.field private mHandler:Lcom/htc/app/FilePickerRecentFragment$H;

.field private mHeaderOfRecentListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

.field private mListViewOfRecentOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field mRecentListView:Lcom/htc/app/FilePickerListView;

.field private mRocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mRocketAnimationRunning:Ljava/lang/Boolean;

.field private recentAdapter:Lcom/htc/app/FilePickerListAdapter;

.field private recentViewLayout:Landroid/view/View;

.field private updateUiRunnable:Lcom/htc/app/FilePickerRecentFragment$UpdateUiRunnable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 24
    iput-boolean v2, p0, Lcom/htc/app/FilePickerRecentFragment;->DEBUG:Z

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerRecentFragment;->TAG:Ljava/lang/String;

    .line 26
    const v0, 0x2090034

    iput v0, p0, Lcom/htc/app/FilePickerRecentFragment;->mFilePickerLayout_RecentView:I

    .line 27
    const v0, 0x2090032

    iput v0, p0, Lcom/htc/app/FilePickerRecentFragment;->mFilePickerLayout_ViewHeader:I

    .line 29
    iput-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 30
    iput-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    .line 31
    iput-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->mRecentListView:Lcom/htc/app/FilePickerListView;

    .line 32
    new-instance v0, Lcom/htc/app/FilePickerRecentFragment$UpdateUiRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/app/FilePickerRecentFragment$UpdateUiRunnable;-><init>(Lcom/htc/app/FilePickerRecentFragment;Lcom/htc/app/FilePickerRecentFragment$1;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerRecentFragment;->updateUiRunnable:Lcom/htc/app/FilePickerRecentFragment$UpdateUiRunnable;

    .line 33
    new-instance v0, Lcom/htc/app/FilePickerRecentFragment$H;

    invoke-direct {v0, p0, v1}, Lcom/htc/app/FilePickerRecentFragment$H;-><init>(Lcom/htc/app/FilePickerRecentFragment;Lcom/htc/app/FilePickerRecentFragment$1;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerRecentFragment;->mHandler:Lcom/htc/app/FilePickerRecentFragment$H;

    .line 35
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerRecentFragment;->mRocketAnimationRunning:Ljava/lang/Boolean;

    .line 36
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerRecentFragment;->isFirstTime:Ljava/lang/Boolean;

    .line 196
    new-instance v0, Lcom/htc/app/FilePickerRecentFragment$2;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerRecentFragment$2;-><init>(Lcom/htc/app/FilePickerRecentFragment;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerRecentFragment;->mListViewOfRecentOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 228
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/app/FilePickerRecentFragment;)Lcom/htc/app/FilePickerRecentFragment$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment;->mHandler:Lcom/htc/app/FilePickerRecentFragment$H;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/app/FilePickerRecentFragment;)Lcom/htc/app/FilePickerRecentFragment$UpdateUiRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment;->updateUiRunnable:Lcom/htc/app/FilePickerRecentFragment$UpdateUiRunnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/app/FilePickerRecentFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerRecentFragment;->showRefreshAnimationOnRecentViewHeader(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/app/FilePickerRecentFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/app/FilePickerRecentFragment;->updateCountOfRecentListViewHeader()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/app/FilePickerRecentFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment;->emptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/app/FilePickerRecentFragment;Landroid/widget/TextView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerRecentFragment;->setNoFileFoundText(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/app/FilePickerRecentFragment;Landroid/widget/TextView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerRecentFragment;->setNoFileFoundTextGone(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/app/FilePickerRecentFragment;)Lcom/htc/widget/HtcListItemSeparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment;->mHeaderOfRecentListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/app/FilePickerRecentFragment;)Lcom/htc/app/FilePickerCore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/app/FilePickerRecentFragment;)Lcom/htc/app/FilePickerListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment;->recentAdapter:Lcom/htc/app/FilePickerListAdapter;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/app/FilePickerRecentFragment;Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/app/FilePickerRecentFragment;->recentAdapter:Lcom/htc/app/FilePickerListAdapter;

    return-object p1
.end method

.method private getFileCountString(I)Ljava/lang/String;
    .locals 3
    .parameter "count"

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, text:Ljava/lang/String;
    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->htc_filepicker_files:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    .line 177
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->htc_filepicker_file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 88
    iget-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->TAG:Ljava/lang/String;

    const-string v2, "recentFragment init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lcom/htc/app/FilePickerRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FilePickerActivity;

    .line 90
    .local v0, filePickerAct:Lcom/htc/app/FilePickerActivity;
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/htc/app/FilePickerActivity;->getFilePickerCore()Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    move-result-object v1

    check-cast v1, Lcom/htc/app/FilePickerCore;

    iput-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerCore;->getRecentFragment()Lcom/htc/app/FilePickerRecentFragment;

    move-result-object v1

    if-nez v1, :cond_3

    .line 94
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->isFirstTime:Ljava/lang/Boolean;

    .line 98
    :goto_0
    iget-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v1, p0}, Lcom/htc/app/FilePickerCore;->setRecentFragment(Lcom/htc/app/FilePickerRecentFragment;)V

    .line 99
    iget-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerCore;->getFilePickerUtil()Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->mHandler:Lcom/htc/app/FilePickerRecentFragment$H;

    if-eqz v1, :cond_2

    .line 102
    iget-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->mHandler:Lcom/htc/app/FilePickerRecentFragment$H;

    iget-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->updateUiRunnable:Lcom/htc/app/FilePickerRecentFragment$UpdateUiRunnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/app/FilePickerRecentFragment$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 104
    :cond_2
    invoke-virtual {p0}, Lcom/htc/app/FilePickerRecentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20403da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->htc_filepicker_files:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lcom/htc/app/FilePickerRecentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20403db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->htc_filepicker_file:Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Lcom/htc/app/FilePickerRecentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20403df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->htc_filepicker_no_recent_files:Ljava/lang/String;

    .line 108
    invoke-virtual {p0}, Lcom/htc/app/FilePickerRecentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20400a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->common_string_loading:Ljava/lang/String;

    .line 109
    return-void

    .line 96
    :cond_3
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->isFirstTime:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private setNoFileFoundText(Landroid/widget/TextView;)V
    .locals 2
    .parameter "emptyView"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment;->recentViewLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment;->recentViewLayout:Landroid/view/View;

    const v1, 0x20200aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    .line 210
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment;->mRecentListView:Lcom/htc/app/FilePickerListView;

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment;->mRecentListView:Lcom/htc/app/FilePickerListView;

    invoke-virtual {v0, p1}, Lcom/htc/app/FilePickerListView;->setEmptyView(Landroid/view/View;)V

    .line 212
    invoke-direct {p0}, Lcom/htc/app/FilePickerRecentFragment;->updateCountOfRecentListViewHeader()V

    .line 217
    :goto_0
    if-eqz p1, :cond_1

    .line 218
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment;->htc_filepicker_no_recent_files:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :cond_1
    return-void

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment;->TAG:Ljava/lang/String;

    const-string v1, "emptyView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setNoFileFoundTextGone(Landroid/widget/TextView;)V
    .locals 2
    .parameter "emptyView"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment;->recentViewLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment;->recentViewLayout:Landroid/view/View;

    const v1, 0x20200aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    .line 224
    .restart local p1
    :cond_0
    if-eqz p1, :cond_1

    .line 225
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    :cond_1
    return-void
.end method

.method private showRefreshAnimationOnListViewHeader(ZI)V
    .locals 5
    .parameter "visabled"
    .parameter "resId"

    .prologue
    const/4 v4, 0x0

    .line 250
    iget-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->mRocketAnimationRunning:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 251
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->mRocketAnimationRunning:Ljava/lang/Boolean;

    .line 253
    if-eqz p1, :cond_2

    .line 254
    iget-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->mHeaderOfRecentListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->mHeaderOfRecentListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    iget-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->common_string_loading:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->mRocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->mRocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 270
    :cond_1
    :goto_0
    return-void

    .line 260
    :cond_2
    const-string v0, ""

    .line 261
    .local v0, refreshTime:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    if-eqz v1, :cond_3

    .line 262
    iget-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/app/FilePickerUtil;->getFormatedTime(J)Ljava/lang/String;

    move-result-object v0

    .line 263
    :cond_3
    iget-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->mHeaderOfRecentListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    if-eqz v1, :cond_4

    .line 264
    iget-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->mHeaderOfRecentListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    invoke-virtual {v1, v4, v0}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 266
    :cond_4
    iget-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->mRocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->mRocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method

.method private showRefreshAnimationOnRecentViewHeader(Z)V
    .locals 1
    .parameter "visabled"

    .prologue
    .line 246
    const v0, 0x20200ca

    invoke-direct {p0, p1, v0}, Lcom/htc/app/FilePickerRecentFragment;->showRefreshAnimationOnListViewHeader(ZI)V

    .line 247
    return-void
.end method

.method private updateCountOfRecentListViewHeader()V
    .locals 4

    .prologue
    .line 183
    iget-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->mHeaderOfRecentListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    if-eqz v2, :cond_2

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, fileCount:I
    iget-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerCore;->getRecentAdapter()Lcom/htc/app/FilePickerListAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->recentAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->recentAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v2, :cond_1

    .line 188
    iget-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->recentAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerListAdapter;->getCurrentFileCount()I

    move-result v0

    .line 190
    :cond_1
    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerRecentFragment;->getFileCountString(I)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->mHeaderOfRecentListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    if-eqz v2, :cond_2

    .line 192
    iget-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->mHeaderOfRecentListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 194
    .end local v0           #fileCount:I
    .end local v1           #text:Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public NotifyToDoTask(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment;->mHandler:Lcom/htc/app/FilePickerRecentFragment$H;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment;->mHandler:Lcom/htc/app/FilePickerRecentFragment$H;

    invoke-virtual {v0, p1}, Lcom/htc/app/FilePickerRecentFragment$H;->sendEmptyMessage(I)Z

    .line 80
    :cond_0
    return-void
.end method

.method public NotifyToDoTask(IJ)V
    .locals 1
    .parameter "what"
    .parameter "time"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment;->mHandler:Lcom/htc/app/FilePickerRecentFragment$H;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment;->mHandler:Lcom/htc/app/FilePickerRecentFragment$H;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/FilePickerRecentFragment$H;->sendEmptyMessageDelayed(IJ)Z

    .line 85
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 170
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 117
    :try_start_0
    invoke-direct {p0}, Lcom/htc/app/FilePickerRecentFragment;->init()V

    .line 119
    const v2, 0x2090034

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->recentViewLayout:Landroid/view/View;

    .line 120
    iget-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->recentViewLayout:Landroid/view/View;

    const v3, 0x20200ca

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/app/FilePickerListView;

    iput-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->mRecentListView:Lcom/htc/app/FilePickerListView;

    .line 127
    const v2, 0x2090032

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemSeparator;

    iput-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->mHeaderOfRecentListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    .line 129
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 130
    .local v1, rocketImage:Landroid/widget/ImageView;
    const v2, 0x20a0004

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 131
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->mRocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 132
    iget-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->mHeaderOfRecentListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/app/FilePickerRecentFragment;->mRocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcListItemSeparator;->setIcon(ILandroid/graphics/drawable/Drawable;)V

    .line 133
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/app/FilePickerRecentFragment;->showRefreshAnimationOnRecentViewHeader(Z)V

    .line 135
    iget-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerCore;->getRecentAdapter()Lcom/htc/app/FilePickerListAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->recentAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 136
    iget-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->recentAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->recentAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerListAdapter;->getFileCount()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->isFirstTime:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerCore;->isRecentStopScan()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->emptyView:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/htc/app/FilePickerRecentFragment;->setNoFileFoundText(Landroid/widget/TextView;)V

    .line 140
    iget-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->mHeaderOfRecentListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemSeparator;->setVisibility(I)V

    .line 144
    :cond_1
    iget-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->mRecentListView:Lcom/htc/app/FilePickerListView;

    iget-object v3, p0, Lcom/htc/app/FilePickerRecentFragment;->mHeaderOfRecentListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/app/FilePickerListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 145
    iget-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->mRecentListView:Lcom/htc/app/FilePickerListView;

    iget-object v3, p0, Lcom/htc/app/FilePickerRecentFragment;->recentAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/app/FilePickerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    iget-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->mRecentListView:Lcom/htc/app/FilePickerListView;

    iget-object v3, p0, Lcom/htc/app/FilePickerRecentFragment;->mListViewOfRecentOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/app/FilePickerListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 147
    iget-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->mRecentListView:Lcom/htc/app/FilePickerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/app/FilePickerListView;->setVisibility(I)V

    .line 148
    iget-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->mRecentListView:Lcom/htc/app/FilePickerListView;

    new-instance v3, Lcom/htc/app/FilePickerRecentFragment$1;

    invoke-direct {v3, p0}, Lcom/htc/app/FilePickerRecentFragment$1;-><init>(Lcom/htc/app/FilePickerRecentFragment;)V

    invoke-virtual {v2, v3}, Lcom/htc/app/FilePickerListView;->setLayoutChangedListener(Lcom/htc/app/FilePickerListView$LayoutChangeListener;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v1           #rocketImage:Landroid/widget/ImageView;
    :goto_0
    iget-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->recentViewLayout:Landroid/view/View;

    return-object v2

    .line 153
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 274
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment;->mHandler:Lcom/htc/app/FilePickerRecentFragment$H;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment;->mHandler:Lcom/htc/app/FilePickerRecentFragment$H;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerRecentFragment$H;->removeMessages(I)V

    .line 276
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment;->mHandler:Lcom/htc/app/FilePickerRecentFragment$H;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerRecentFragment$H;->removeMessages(I)V

    .line 277
    iget-object v0, p0, Lcom/htc/app/FilePickerRecentFragment;->mHandler:Lcom/htc/app/FilePickerRecentFragment$H;

    iget-object v1, p0, Lcom/htc/app/FilePickerRecentFragment;->updateUiRunnable:Lcom/htc/app/FilePickerRecentFragment$UpdateUiRunnable;

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerRecentFragment$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 279
    :cond_0
    iput-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->mHeaderOfRecentListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    .line 280
    iput-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    .line 281
    iput-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 282
    iput-object v2, p0, Lcom/htc/app/FilePickerRecentFragment;->updateUiRunnable:Lcom/htc/app/FilePickerRecentFragment$UpdateUiRunnable;

    .line 283
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 284
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 165
    return-void
.end method
