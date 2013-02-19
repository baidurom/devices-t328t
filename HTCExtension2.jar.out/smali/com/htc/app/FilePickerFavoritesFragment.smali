.class public Lcom/htc/app/FilePickerFavoritesFragment;
.super Landroid/app/Fragment;
.source "FilePickerFavoritesFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/FilePickerFavoritesFragment$UpdateUiRunnable;,
        Lcom/htc/app/FilePickerFavoritesFragment$H;
    }
.end annotation


# static fields
.field public static final MSG_SCAN_END:I = 0x3e9

.field public static final MSG_SCAN_START:I = 0x3e8

.field public static final NO_FAVORITE_FILE:I = 0x3ea

.field public static final RESET_EMPTY_VIEW:I = 0x3eb


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private common_string_loading:Ljava/lang/String;

.field private emptyView:Landroid/widget/TextView;

.field private favoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

.field private favoritesViewLayout:Landroid/view/View;

.field private htc_filepicker_file:Ljava/lang/String;

.field private htc_filepicker_files:Ljava/lang/String;

.field private htc_filepicker_no_favorite_files:Ljava/lang/String;

.field mFavoritesListView:Lcom/htc/app/FilePickerListView;

.field private mFilePickerCore:Lcom/htc/app/FilePickerCore;

.field private final mFilePickerLayout_FavoritesView:I

.field private final mFilePickerLayout_ViewHeader:I

.field private mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

.field private mHandler:Lcom/htc/app/FilePickerFavoritesFragment$H;

.field private mHeaderOfFavoritesListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

.field private mListViewOfFavoritesOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mRocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mRocketAnimationRunning:Ljava/lang/Boolean;

.field private updateUiRunnable:Lcom/htc/app/FilePickerFavoritesFragment$UpdateUiRunnable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 24
    iput-boolean v2, p0, Lcom/htc/app/FilePickerFavoritesFragment;->DEBUG:Z

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->TAG:Ljava/lang/String;

    .line 26
    const v0, 0x209002a

    iput v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mFilePickerLayout_FavoritesView:I

    .line 27
    const v0, 0x2090032

    iput v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mFilePickerLayout_ViewHeader:I

    .line 29
    iput-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 30
    iput-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    .line 31
    iput-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mFavoritesListView:Lcom/htc/app/FilePickerListView;

    .line 32
    new-instance v0, Lcom/htc/app/FilePickerFavoritesFragment$UpdateUiRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/app/FilePickerFavoritesFragment$UpdateUiRunnable;-><init>(Lcom/htc/app/FilePickerFavoritesFragment;Lcom/htc/app/FilePickerFavoritesFragment$1;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->updateUiRunnable:Lcom/htc/app/FilePickerFavoritesFragment$UpdateUiRunnable;

    .line 33
    new-instance v0, Lcom/htc/app/FilePickerFavoritesFragment$H;

    invoke-direct {v0, p0, v1}, Lcom/htc/app/FilePickerFavoritesFragment$H;-><init>(Lcom/htc/app/FilePickerFavoritesFragment;Lcom/htc/app/FilePickerFavoritesFragment$1;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mHandler:Lcom/htc/app/FilePickerFavoritesFragment$H;

    .line 35
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mRocketAnimationRunning:Ljava/lang/Boolean;

    .line 183
    new-instance v0, Lcom/htc/app/FilePickerFavoritesFragment$2;

    invoke-direct {v0, p0}, Lcom/htc/app/FilePickerFavoritesFragment$2;-><init>(Lcom/htc/app/FilePickerFavoritesFragment;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mListViewOfFavoritesOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 215
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/app/FilePickerFavoritesFragment;)Lcom/htc/app/FilePickerFavoritesFragment$UpdateUiRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->updateUiRunnable:Lcom/htc/app/FilePickerFavoritesFragment$UpdateUiRunnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/app/FilePickerFavoritesFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerFavoritesFragment;->showRefreshAnimationOnFavoriteViewHeader(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/app/FilePickerFavoritesFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/app/FilePickerFavoritesFragment;->updateCountOfFavoritesListViewHeader()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/app/FilePickerFavoritesFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->emptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/app/FilePickerFavoritesFragment;Landroid/widget/TextView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerFavoritesFragment;->setNoFileFoundText(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/app/FilePickerFavoritesFragment;Landroid/widget/TextView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerFavoritesFragment;->setNoFileFoundTextGone(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/app/FilePickerFavoritesFragment;)Lcom/htc/app/FilePickerCore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/app/FilePickerFavoritesFragment;)Lcom/htc/app/FilePickerListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->favoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/app/FilePickerFavoritesFragment;Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->favoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/app/FilePickerFavoritesFragment;)Lcom/htc/app/FilePickerFavoritesFragment$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mHandler:Lcom/htc/app/FilePickerFavoritesFragment$H;

    return-object v0
.end method

.method private getFileCountString(I)Ljava/lang/String;
    .locals 3
    .parameter "count"

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, text:Ljava/lang/String;
    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerFavoritesFragment;->htc_filepicker_files:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    .line 164
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerFavoritesFragment;->htc_filepicker_file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 82
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->TAG:Ljava/lang/String;

    const-string v2, "favFragment init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Lcom/htc/app/FilePickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FilePickerActivity;

    .line 84
    .local v0, filePickerAct:Lcom/htc/app/FilePickerActivity;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/htc/app/FilePickerActivity;->getFilePickerCore()Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;

    move-result-object v1

    check-cast v1, Lcom/htc/app/FilePickerCore;

    iput-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v1, p0}, Lcom/htc/app/FilePickerCore;->setFavoritesFragment(Lcom/htc/app/FilePickerFavoritesFragment;)V

    .line 88
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerCore;->getFilePickerUtil()Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mHandler:Lcom/htc/app/FilePickerFavoritesFragment$H;

    if-eqz v1, :cond_2

    .line 91
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mHandler:Lcom/htc/app/FilePickerFavoritesFragment$H;

    iget-object v2, p0, Lcom/htc/app/FilePickerFavoritesFragment;->updateUiRunnable:Lcom/htc/app/FilePickerFavoritesFragment$UpdateUiRunnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/app/FilePickerFavoritesFragment$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/htc/app/FilePickerFavoritesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20403da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->htc_filepicker_files:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/htc/app/FilePickerFavoritesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20403db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->htc_filepicker_file:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/htc/app/FilePickerFavoritesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20403e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->htc_filepicker_no_favorite_files:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lcom/htc/app/FilePickerFavoritesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20400a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->common_string_loading:Ljava/lang/String;

    .line 98
    return-void
.end method

.method private setNoFileFoundText(Landroid/widget/TextView;)V
    .locals 2
    .parameter "emptyView"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->favoritesViewLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->favoritesViewLayout:Landroid/view/View;

    const v1, 0x20200aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    .line 197
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mFavoritesListView:Lcom/htc/app/FilePickerListView;

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mFavoritesListView:Lcom/htc/app/FilePickerListView;

    invoke-virtual {v0, p1}, Lcom/htc/app/FilePickerListView;->setEmptyView(Landroid/view/View;)V

    .line 199
    invoke-direct {p0}, Lcom/htc/app/FilePickerFavoritesFragment;->updateCountOfFavoritesListViewHeader()V

    .line 204
    :goto_0
    if-eqz p1, :cond_1

    .line 205
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->htc_filepicker_no_favorite_files:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :cond_1
    return-void

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->TAG:Ljava/lang/String;

    const-string v1, "emptyView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setNoFileFoundTextGone(Landroid/widget/TextView;)V
    .locals 2
    .parameter "emptyView"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->favoritesViewLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->favoritesViewLayout:Landroid/view/View;

    const v1, 0x20200aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    .line 211
    .restart local p1
    :cond_0
    if-eqz p1, :cond_1

    .line 212
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    :cond_1
    return-void
.end method

.method private showRefreshAnimationOnFavoriteViewHeader(Z)V
    .locals 1
    .parameter "visabled"

    .prologue
    .line 233
    const v0, 0x20200a9

    invoke-direct {p0, p1, v0}, Lcom/htc/app/FilePickerFavoritesFragment;->showRefreshAnimationOnListViewHeader(ZI)V

    .line 234
    return-void
.end method

.method private showRefreshAnimationOnListViewHeader(ZI)V
    .locals 5
    .parameter "visabled"
    .parameter "resId"

    .prologue
    const/4 v4, 0x0

    .line 256
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mRocketAnimationRunning:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 257
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mRocketAnimationRunning:Ljava/lang/Boolean;

    .line 259
    if-eqz p1, :cond_2

    .line 260
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mHeaderOfFavoritesListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mHeaderOfFavoritesListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    iget-object v2, p0, Lcom/htc/app/FilePickerFavoritesFragment;->common_string_loading:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mRocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mRocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 279
    :cond_1
    :goto_0
    return-void

    .line 268
    :cond_2
    const-string v0, ""

    .line 269
    .local v0, refreshTime:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    if-eqz v1, :cond_3

    .line 270
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/app/FilePickerUtil;->getFormatedTime(J)Ljava/lang/String;

    move-result-object v0

    .line 271
    :cond_3
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mHeaderOfFavoritesListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    if-eqz v1, :cond_4

    .line 272
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mHeaderOfFavoritesListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    invoke-virtual {v1, v4, v0}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 275
    :cond_4
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mRocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mRocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method

.method private updateCountOfFavoritesListViewHeader()V
    .locals 4

    .prologue
    .line 170
    iget-object v2, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mHeaderOfFavoritesListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    if-eqz v2, :cond_2

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, fileCount:I
    iget-object v2, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    if-eqz v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerCore;->getFavoritesAdapter()Lcom/htc/app/FilePickerListAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/app/FilePickerFavoritesFragment;->favoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/htc/app/FilePickerFavoritesFragment;->favoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    if-eqz v2, :cond_1

    .line 175
    iget-object v2, p0, Lcom/htc/app/FilePickerFavoritesFragment;->favoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerListAdapter;->getCurrentFileCount()I

    move-result v0

    .line 177
    :cond_1
    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerFavoritesFragment;->getFileCountString(I)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mHeaderOfFavoritesListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    if-eqz v2, :cond_2

    .line 179
    iget-object v2, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mHeaderOfFavoritesListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 181
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
    .line 72
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mHandler:Lcom/htc/app/FilePickerFavoritesFragment$H;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mHandler:Lcom/htc/app/FilePickerFavoritesFragment$H;

    invoke-virtual {v0, p1}, Lcom/htc/app/FilePickerFavoritesFragment$H;->sendEmptyMessage(I)Z

    .line 74
    :cond_0
    return-void
.end method

.method public NotifyToDoTask(IJ)V
    .locals 1
    .parameter "what"
    .parameter "time"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mHandler:Lcom/htc/app/FilePickerFavoritesFragment$H;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mHandler:Lcom/htc/app/FilePickerFavoritesFragment$H;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/FilePickerFavoritesFragment$H;->sendEmptyMessageDelayed(IJ)Z

    .line 79
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 157
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 106
    :try_start_0
    invoke-direct {p0}, Lcom/htc/app/FilePickerFavoritesFragment;->init()V

    .line 107
    const v1, 0x209002a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->favoritesViewLayout:Landroid/view/View;

    .line 108
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->favoritesViewLayout:Landroid/view/View;

    const v2, 0x20200a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/app/FilePickerListView;

    iput-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mFavoritesListView:Lcom/htc/app/FilePickerListView;

    .line 119
    const v1, 0x2090032

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemSeparator;

    iput-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mHeaderOfFavoritesListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    .line 121
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerFavoritesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 122
    .local v0, rocketImage:Landroid/widget/ImageView;
    const v1, 0x20a0004

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 123
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mRocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 124
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mHeaderOfFavoritesListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mRocketAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcListItemSeparator;->setIcon(ILandroid/graphics/drawable/Drawable;)V

    .line 126
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/app/FilePickerFavoritesFragment;->showRefreshAnimationOnFavoriteViewHeader(Z)V

    .line 127
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mFavoritesListView:Lcom/htc/app/FilePickerListView;

    iget-object v2, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mHeaderOfFavoritesListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/app/FilePickerListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 129
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mFavoritesListView:Lcom/htc/app/FilePickerListView;

    new-instance v2, Lcom/htc/app/FilePickerFavoritesFragment$1;

    invoke-direct {v2, p0}, Lcom/htc/app/FilePickerFavoritesFragment$1;-><init>(Lcom/htc/app/FilePickerFavoritesFragment;)V

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerListView;->setLayoutChangedListener(Lcom/htc/app/FilePickerListView$LayoutChangeListener;)V

    .line 135
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerCore;->getFavoritesAdapter()Lcom/htc/app/FilePickerListAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->favoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 136
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->emptyView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/htc/app/FilePickerFavoritesFragment;->setNoFileFoundTextGone(Landroid/widget/TextView;)V

    .line 137
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mFavoritesListView:Lcom/htc/app/FilePickerListView;

    iget-object v2, p0, Lcom/htc/app/FilePickerFavoritesFragment;->favoritesAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mFavoritesListView:Lcom/htc/app/FilePickerListView;

    iget-object v2, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mListViewOfFavoritesOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 139
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mFavoritesListView:Lcom/htc/app/FilePickerListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerListView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v0           #rocketImage:Landroid/widget/ImageView;
    :goto_0
    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->favoritesViewLayout:Landroid/view/View;

    return-object v1

    .line 141
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 238
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mHandler:Lcom/htc/app/FilePickerFavoritesFragment$H;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mHandler:Lcom/htc/app/FilePickerFavoritesFragment$H;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerFavoritesFragment$H;->removeMessages(I)V

    .line 240
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mHandler:Lcom/htc/app/FilePickerFavoritesFragment$H;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerFavoritesFragment$H;->removeMessages(I)V

    .line 241
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mHandler:Lcom/htc/app/FilePickerFavoritesFragment$H;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerFavoritesFragment$H;->removeMessages(I)V

    .line 242
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mHandler:Lcom/htc/app/FilePickerFavoritesFragment$H;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerFavoritesFragment$H;->removeMessages(I)V

    .line 243
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mHandler:Lcom/htc/app/FilePickerFavoritesFragment$H;

    iget-object v1, p0, Lcom/htc/app/FilePickerFavoritesFragment;->updateUiRunnable:Lcom/htc/app/FilePickerFavoritesFragment$UpdateUiRunnable;

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerFavoritesFragment$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 245
    :cond_0
    iput-object v2, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mHeaderOfFavoritesListViewHeader:Lcom/htc/widget/HtcListItemSeparator;

    .line 246
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerCore;->getFavoritesFragment()Lcom/htc/app/FilePickerFavoritesFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v0, v2}, Lcom/htc/app/FilePickerCore;->setFavoritesFragment(Lcom/htc/app/FilePickerFavoritesFragment;)V

    .line 249
    :cond_1
    iput-object v2, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mFilePickerCore:Lcom/htc/app/FilePickerCore;

    .line 250
    iput-object v2, p0, Lcom/htc/app/FilePickerFavoritesFragment;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 251
    iput-object v2, p0, Lcom/htc/app/FilePickerFavoritesFragment;->updateUiRunnable:Lcom/htc/app/FilePickerFavoritesFragment$UpdateUiRunnable;

    .line 252
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 253
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 152
    return-void
.end method
