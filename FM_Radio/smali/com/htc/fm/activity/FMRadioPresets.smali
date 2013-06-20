.class public Lcom/htc/fm/activity/FMRadioPresets;
.super Landroid/app/Activity;
.source "FMRadioPresets.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FMRadioPresets"


# instance fields
.field private mActionBarExt:Lcom/htc/widget/ActionBarExt;

.field private mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

.field private mBtnCancel:Lcom/htc/widget/HtcFooterButton;

.field private mBtnDelete:Lcom/htc/widget/HtcFooterButton;

.field private mCurrentFrequency:I

.field private mFooter:Lcom/htc/widget/HtcFooter;

.field private mListType:I

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mMenu:Landroid/view/Menu;

.field private mSelectedItemPosition:I

.field private mTitleText:Lcom/htc/widget/ActionBarText;

.field private mUiUpdateReceiver:Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    .line 50
    iput v1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mListType:I

    .line 52
    iput v1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mCurrentFrequency:I

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fm/activity/FMRadioPresets;->mSelectedItemPosition:I

    .line 177
    new-instance v0, Lcom/htc/fm/activity/FMRadioPresets$1;

    invoke-direct {v0, p0}, Lcom/htc/fm/activity/FMRadioPresets$1;-><init>(Lcom/htc/fm/activity/FMRadioPresets;)V

    iput-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets;->mUiUpdateReceiver:Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/fm/activity/FMRadioPresets;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/htc/fm/activity/FMRadioPresets;->mCurrentFrequency:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/fm/activity/FMRadioPresets;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mCurrentFrequency:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/fm/activity/FMRadioPresets;)Lcom/htc/fm/ui/FMRadioPresetsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/fm/activity/FMRadioPresets;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioPresets;->deleteSelectedItem()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/fm/activity/FMRadioPresets;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/htc/fm/activity/FMRadioPresets;->setActionBarTitle(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/fm/activity/FMRadioPresets;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/htc/fm/activity/FMRadioPresets;->changeListType(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/fm/activity/FMRadioPresets;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/htc/fm/activity/FMRadioPresets;->actionBarExtEnableHTCLandscape(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/fm/activity/FMRadioPresets;)Lcom/htc/widget/HtcFooterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets;->mBtnCancel:Lcom/htc/widget/HtcFooterButton;

    return-object v0
.end method

.method private actionBarExtEnableHTCLandscape(Z)V
    .locals 1
    .parameter "pEnable"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarExt;->enableHTCLandscape(Z)V

    .line 327
    :cond_0
    return-void
.end method

.method private changeListType(I)V
    .locals 6
    .parameter "pListType"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 349
    const-string v3, "FMRadioPresets"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+changeListType() pListType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iput p1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mListType:I

    .line 351
    if-nez p1, :cond_2

    move v0, v1

    .line 352
    .local v0, tIsCommonMode:Z
    :goto_0
    if-ne v1, p1, :cond_3

    .line 354
    .local v1, tIsDeleteMode:Z
    :goto_1
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioPresets;->mMenu:Landroid/view/Menu;

    const v4, 0x7f050036

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 355
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioPresets;->mMenu:Landroid/view/Menu;

    const v4, 0x7f050034

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 356
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioPresets;->mMenu:Landroid/view/Menu;

    const v4, 0x7f050035

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 357
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioPresets;->mMenu:Landroid/view/Menu;

    const v4, 0x7f050037

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 358
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioPresets;->mMenu:Landroid/view/Menu;

    const v4, 0x7f050038

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 360
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioPresets;->mFooter:Lcom/htc/widget/HtcFooter;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 362
    if-eqz v1, :cond_0

    .line 363
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioPresets;->mFooter:Lcom/htc/widget/HtcFooter;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 364
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mBtnDelete:Lcom/htc/widget/HtcFooterButton;

    const/high16 v3, 0x7f04

    invoke-virtual {p0, v3}, Lcom/htc/fm/activity/FMRadioPresets;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 367
    :cond_0
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    if-eqz v2, :cond_1

    .line 368
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    iget v3, p0, Lcom/htc/fm/activity/FMRadioPresets;->mListType:I

    invoke-virtual {v2, v3}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->setCurrentType(I)V

    .line 370
    :cond_1
    const-string v2, "FMRadioPresets"

    const-string v3, "-changeListType()"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    return-void

    .end local v0           #tIsCommonMode:Z
    .end local v1           #tIsDeleteMode:Z
    :cond_2
    move v0, v2

    .line 351
    goto :goto_0

    .restart local v0       #tIsCommonMode:Z
    :cond_3
    move v1, v2

    .line 352
    goto :goto_1
.end method

.method private deleteSelectedItem()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 442
    const-string v0, "FMRadioPresets"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+deleteSelectedItem() mAdapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets;->mBtnDelete:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 445
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets;->mBtnCancel:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 446
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->setIgnoreContentChanged(Z)V

    .line 447
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    invoke-virtual {v0}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->deleteSelectedItems()V

    .line 448
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    invoke-virtual {v1}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->getSelectedItemList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setDelPositionsList(Ljava/util/ArrayList;)V

    .line 450
    :cond_0
    const-string v0, "FMRadioPresets"

    const-string v1, "-deleteSelectedItem()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method private initViews()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 261
    const-string v1, "FMRadioPresets"

    const-string v2, "+initViews()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const v1, 0x7f050022

    invoke-virtual {p0, v1}, Lcom/htc/fm/activity/FMRadioPresets;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooter;

    iput-object v1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mFooter:Lcom/htc/widget/HtcFooter;

    .line 264
    const v1, 0x7f050024

    invoke-virtual {p0, v1}, Lcom/htc/fm/activity/FMRadioPresets;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    iput-object v1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mBtnDelete:Lcom/htc/widget/HtcFooterButton;

    .line 265
    const v1, 0x7f050023

    invoke-virtual {p0, v1}, Lcom/htc/fm/activity/FMRadioPresets;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    iput-object v1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mBtnCancel:Lcom/htc/widget/HtcFooterButton;

    .line 267
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mBtnDelete:Lcom/htc/widget/HtcFooterButton;

    new-instance v2, Lcom/htc/fm/activity/FMRadioPresets$3;

    invoke-direct {v2, p0}, Lcom/htc/fm/activity/FMRadioPresets$3;-><init>(Lcom/htc/fm/activity/FMRadioPresets;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mBtnCancel:Lcom/htc/widget/HtcFooterButton;

    new-instance v2, Lcom/htc/fm/activity/FMRadioPresets$4;

    invoke-direct {v2, p0}, Lcom/htc/fm/activity/FMRadioPresets$4;-><init>(Lcom/htc/fm/activity/FMRadioPresets;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    invoke-static {p0}, Lcom/htc/fm/ui/helper/PresetsHelper;->getCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 284
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    if-nez v1, :cond_0

    .line 285
    new-instance v1, Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    invoke-direct {v1, p0, v0}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    .line 286
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    iget v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mListType:I

    invoke-virtual {v1, v2}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->setCurrentType(I)V

    .line 289
    :cond_0
    const v1, 0x7f050021

    invoke-virtual {p0, v1}, Lcom/htc/fm/activity/FMRadioPresets;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mListView:Lcom/htc/widget/HtcListView;

    .line 290
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 291
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 292
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 293
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 294
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mListView:Lcom/htc/widget/HtcListView;

    new-instance v2, Lcom/htc/fm/activity/FMRadioPresets$5;

    invoke-direct {v2, p0}, Lcom/htc/fm/activity/FMRadioPresets$5;-><init>(Lcom/htc/fm/activity/FMRadioPresets;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setDeleteAnimationListener(Lcom/htc/widget/HtcAbsListView$DeleteAnimationListener;)V

    .line 312
    iget v1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mListType:I

    if-eq v3, v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mFooter:Lcom/htc/widget/HtcFooter;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 320
    :goto_0
    const-string v1, "FMRadioPresets"

    const-string v2, "-initViews()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void

    .line 316
    :cond_1
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioPresets;->updateDeletedButtonTitle()V

    .line 317
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioPresets;->updateSelectAllState()V

    goto :goto_0
.end method

.method private setActionBar()V
    .locals 4

    .prologue
    .line 237
    const-string v2, "FMRadioPresets"

    const-string v3, "+setActionBar()"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioPresets;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 239
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 240
    new-instance v2, Lcom/htc/widget/ActionBarExt;

    invoke-direct {v2, p0, v0}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 242
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-eqz v2, :cond_0

    .line 243
    new-instance v2, Lcom/htc/widget/ActionBarText;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mTitleText:Lcom/htc/widget/ActionBarText;

    .line 244
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mTitleText:Lcom/htc/widget/ActionBarText;

    const v3, 0x7f040028

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 246
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v2}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    .line 247
    .local v1, actionContainer:Lcom/htc/widget/ActionBarContainer;
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mTitleText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 248
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 249
    new-instance v2, Lcom/htc/fm/activity/FMRadioPresets$2;

    invoke-direct {v2, p0}, Lcom/htc/fm/activity/FMRadioPresets$2;-><init>(Lcom/htc/fm/activity/FMRadioPresets;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    .end local v1           #actionContainer:Lcom/htc/widget/ActionBarContainer;
    :cond_0
    const-string v2, "FMRadioPresets"

    const-string v3, "-setActionBar()"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method private setActionBarTitle(I)V
    .locals 3
    .parameter "pTitleId"

    .prologue
    .line 330
    const-string v0, "FMRadioPresets"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+setActionBarTitle() pTitleId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v0, "FMRadioPresets"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  setActionBarTitle() mTitleText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mTitleText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets;->mTitleText:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets;->mTitleText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {p0, p1}, Lcom/htc/fm/activity/FMRadioPresets;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 335
    :cond_0
    const-string v0, "FMRadioPresets"

    const-string v1, "-setActionBarTitle()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method private setCurrentFrequency(I)V
    .locals 3
    .parameter "pFreq"

    .prologue
    .line 339
    const-string v0, "FMRadioPresets"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+setCurrentFrequency() freq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iput p1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mCurrentFrequency:I

    .line 342
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    iget v1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mCurrentFrequency:I

    invoke-virtual {v0, v1}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->setCurrentFrequency(I)V

    .line 345
    :cond_0
    const-string v0, "FMRadioPresets"

    const-string v1, "-setCurrentFrequency()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method private updateDeletedButtonTitle()V
    .locals 5

    .prologue
    .line 403
    const-string v2, "FMRadioPresets"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+updateDeletedButtonTitle() mAdapter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    if-eqz v2, :cond_0

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    const/high16 v2, 0x7f04

    invoke-virtual {p0, v2}, Lcom/htc/fm/activity/FMRadioPresets;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 406
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    invoke-virtual {v2}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->getSelectedItemCount()I

    move-result v0

    .line 407
    .local v0, cnt:I
    if-lez v0, :cond_1

    .line 408
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mBtnDelete:Lcom/htc/widget/HtcFooterButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 413
    :goto_0
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mBtnDelete:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 415
    .end local v0           #cnt:I
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_0
    const-string v2, "FMRadioPresets"

    const-string v3, "-updateDeletedButtonTitle()"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-void

    .line 411
    .restart local v0       #cnt:I
    .restart local v1       #sb:Ljava/lang/StringBuilder;
    :cond_1
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mBtnDelete:Lcom/htc/widget/HtcFooterButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateSelectAllState()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f050038

    const v6, 0x7f050037

    const/4 v5, 0x1

    .line 419
    const-string v2, "FMRadioPresets"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+updateSelectAllState() mAdapter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMenu: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/fm/activity/FMRadioPresets;->mMenu:Landroid/view/Menu;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mMenu:Landroid/view/Menu;

    if-eqz v2, :cond_0

    .line 421
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    invoke-virtual {v2}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->getCount()I

    move-result v0

    .line 422
    .local v0, tCount:I
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    invoke-virtual {v2}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->getSelectedItemCount()I

    move-result v1

    .line 424
    .local v1, tSelectedCount:I
    if-ne v0, v1, :cond_1

    .line 425
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 426
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 438
    .end local v0           #tCount:I
    .end local v1           #tSelectedCount:I
    :cond_0
    :goto_0
    const-string v2, "FMRadioPresets"

    const-string v3, "-updateSelectAllState()"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    return-void

    .line 428
    .restart local v0       #tCount:I
    .restart local v1       #tSelectedCount:I
    :cond_1
    if-nez v1, :cond_2

    .line 429
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 430
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 433
    :cond_2
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 434
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public checkListData()V
    .locals 7

    .prologue
    const v6, 0x7f050035

    const v5, 0x7f050034

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 460
    const-string v0, "FMRadioPresets"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+checkListData() mMenu: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mMenu:Landroid/view/Menu;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 463
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 465
    const-string v0, "FMRadioPresets"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  checkListData() mAdapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    invoke-virtual {v0}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 469
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 472
    :cond_1
    const-string v0, "FMRadioPresets"

    const-string v1, "-checkListData()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method public onAdapterContentChanged()V
    .locals 2

    .prologue
    .line 454
    const-string v0, "FMRadioPresets"

    const-string v1, "+onAdapterContentChanged()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioPresets;->checkListData()V

    .line 456
    const-string v0, "FMRadioPresets"

    const-string v1, "-onAdapterContentChanged()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 166
    const-string v0, "FMRadioPresets"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+onBackPressed() mListType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mListType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget v0, p0, Lcom/htc/fm/activity/FMRadioPresets;->mListType:I

    if-eqz v0, :cond_0

    .line 168
    const v0, 0x7f040028

    invoke-direct {p0, v0}, Lcom/htc/fm/activity/FMRadioPresets;->setActionBarTitle(I)V

    .line 169
    invoke-direct {p0, v3}, Lcom/htc/fm/activity/FMRadioPresets;->changeListType(I)V

    .line 173
    :goto_0
    invoke-direct {p0, v3}, Lcom/htc/fm/activity/FMRadioPresets;->actionBarExtEnableHTCLandscape(Z)V

    .line 174
    const-string v0, "FMRadioPresets"

    const-string v1, "-onBackPressed()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void

    .line 171
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 505
    const-string v1, "FMRadioPresets"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+onContextItemSelected() position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/activity/FMRadioPresets;->mSelectedItemPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 521
    :cond_0
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mSelectedItemPosition:I

    .line 522
    const-string v1, "FMRadioPresets"

    const-string v2, "-onContextItemSelected()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 508
    :pswitch_0
    const-string v1, "FMRadioPresets"

    const-string v2, "  onContextItemSelected() MODE_DELETE"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    if-eqz v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    iget v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mSelectedItemPosition:I

    invoke-virtual {v1, v2}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->setSelectedItem(I)V

    .line 511
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioPresets;->deleteSelectedItem()V

    goto :goto_0

    .line 515
    :pswitch_1
    const-string v1, "FMRadioPresets"

    const-string v2, "  onContextItemSelected() MODE_RENAME"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    iget v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mSelectedItemPosition:I

    invoke-virtual {v1, v2}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->getPresetByPos(I)Lcom/htc/fm/ui/helper/Preset;

    move-result-object v0

    .line 517
    .local v0, tPreset:Lcom/htc/fm/ui/helper/Preset;
    const-string v1, "FMRadioPresets"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  onContextItemSelected() preset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    sget-object v1, Lcom/htc/fm/provider/FMRadioPreset$FMRadioPresetColumns;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/htc/fm/ui/helper/Preset;->Frequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/fm/ui/helper/PresetsHelper;->startAddPreset(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 506
    :pswitch_data_0
    .packed-switch 0x7f050034
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 59
    const-string v0, "FMRadioPresets"

    const-string v1, "+onCreate()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioPresets;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x2080001

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 64
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/htc/fm/activity/FMRadioPresets;->requestWindowFeature(I)Z

    .line 66
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets;->mUiUpdateReceiver:Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;

    sget-object v1, Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;->ACTION_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/htc/fm/activity/FMRadioPresets;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/htc/fm/activity/FMRadioPresets;->setContentView(I)V

    .line 70
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioPresets;->setActionBar()V

    .line 72
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioPresets;->initViews()V

    .line 73
    const-string v0, "FMRadioPresets"

    const-string v1, "-onCreate()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v6, 0x0

    .line 477
    const-string v3, "FMRadioPresets"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+onCreateContextMenu() listType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/fm/activity/FMRadioPresets;->mListType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget v3, p0, Lcom/htc/fm/activity/FMRadioPresets;->mListType:I

    if-eqz v3, :cond_0

    .line 501
    :goto_0
    return-void

    :cond_0
    move-object v1, p3

    .line 482
    check-cast v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    .line 483
    .local v1, tMenuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    iget v3, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    iput v3, p0, Lcom/htc/fm/activity/FMRadioPresets;->mSelectedItemPosition:I

    .line 484
    iget-object v3, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    iget v4, p0, Lcom/htc/fm/activity/FMRadioPresets;->mSelectedItemPosition:I

    invoke-virtual {v3, v4}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->getPresetByPos(I)Lcom/htc/fm/ui/helper/Preset;

    move-result-object v2

    .line 486
    .local v2, tPreset:Lcom/htc/fm/ui/helper/Preset;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 487
    .local v0, sb:Ljava/lang/StringBuilder;
    iget v3, v2, Lcom/htc/fm/ui/helper/Preset;->Frequency:I

    invoke-static {v3}, Lcom/htc/fm/utils/FreqUtils;->getFreq(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    const-string v3, " MHz"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    iget-object v3, v2, Lcom/htc/fm/ui/helper/Preset;->Name:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/htc/fm/ui/helper/Preset;->Name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 490
    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    iget-object v3, v2, Lcom/htc/fm/ui/helper/Preset;->Name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 497
    const v3, 0x7f050035

    const/high16 v4, 0x7f04

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 498
    const v3, 0x7f050034

    const v4, 0x2040299

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 500
    const-string v3, "FMRadioPresets"

    const-string v4, "-onCreateContextMenu()"

    invoke-static {v3, v4}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 103
    const-string v1, "FMRadioPresets"

    const-string v2, "+onCreateOptionsMenu()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 106
    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioPresets;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 107
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0b0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 109
    iput-object p1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mMenu:Landroid/view/Menu;

    .line 111
    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioPresets;->checkListData()V

    .line 113
    const-string v1, "FMRadioPresets"

    const-string v2, "-onCreateOptionsMenu()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 78
    const-string v0, "FMRadioPresets"

    const-string v1, "+onDestroy()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 80
    iget-object v0, p0, Lcom/htc/fm/activity/FMRadioPresets;->mUiUpdateReceiver:Lcom/htc/fm/uihelper/receiver/UIUpdateReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/fm/activity/FMRadioPresets;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 81
    const-string v0, "FMRadioPresets"

    const-string v1, "-onDestroy()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const-string v2, "FMRadioPresets"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+onItemClick() position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    if-nez v2, :cond_0

    .line 400
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    invoke-virtual {v2, p3}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->selectItem(I)V

    .line 380
    iget v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mListType:I

    packed-switch v2, :pswitch_data_0

    .line 399
    :goto_1
    const-string v2, "FMRadioPresets"

    const-string v3, "-onItemClick()"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :pswitch_0
    const-string v2, "FMRadioPresets"

    const-string v3, "  onItemClick() TYPE_COMMON"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v2, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    invoke-virtual {v2, p3}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->getPresetByPos(I)Lcom/htc/fm/ui/helper/Preset;

    move-result-object v1

    .line 384
    .local v1, tPreset:Lcom/htc/fm/ui/helper/Preset;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 385
    .local v0, tIntent:Landroid/content/Intent;
    const-string v2, "freq"

    iget v3, v1, Lcom/htc/fm/ui/helper/Preset;->Frequency:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    const-string v2, "name"

    iget-object v3, v1, Lcom/htc/fm/ui/helper/Preset;->Name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/htc/fm/activity/FMRadioPresets;->setResult(ILandroid/content/Intent;)V

    .line 388
    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioPresets;->finish()V

    goto :goto_1

    .line 391
    .end local v0           #tIntent:Landroid/content/Intent;
    .end local v1           #tPreset:Lcom/htc/fm/ui/helper/Preset;
    :pswitch_1
    const-string v2, "FMRadioPresets"

    const-string v3, "  onItemClick() TYPE_DELETE"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioPresets;->updateDeletedButtonTitle()V

    .line 393
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioPresets;->updateSelectAllState()V

    goto :goto_1

    .line 396
    :pswitch_2
    const-string v2, "FMRadioPresets"

    const-string v3, "  onItemClick() TYPE_EDIT"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 380
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 119
    const-string v1, "FMRadioPresets"

    const-string v2, "+onOptionsItemSelected()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 160
    :cond_0
    :goto_0
    const-string v1, "FMRadioPresets"

    const-string v2, "-onOptionsItemSelected()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 122
    :pswitch_0
    const-string v1, "FMRadioPresets"

    const-string v2, "  onOptionsItemSelected() MODE_ADD"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object v1, Lcom/htc/fm/provider/FMRadioPreset$FMRadioPresetColumns;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/activity/FMRadioPresets;->mCurrentFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 124
    .local v0, data:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioPresets;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/htc/fm/ui/helper/PresetsHelper;->startAddPreset(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 127
    .end local v0           #data:Landroid/net/Uri;
    :pswitch_1
    const-string v1, "FMRadioPresets"

    const-string v2, "  onOptionsItemSelected() MODE_DELETE"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const v1, 0x7f040029

    invoke-direct {p0, v1}, Lcom/htc/fm/activity/FMRadioPresets;->setActionBarTitle(I)V

    .line 129
    invoke-direct {p0, v3}, Lcom/htc/fm/activity/FMRadioPresets;->changeListType(I)V

    .line 130
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioPresets;->updateDeletedButtonTitle()V

    .line 131
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioPresets;->updateSelectAllState()V

    .line 132
    invoke-direct {p0, v3}, Lcom/htc/fm/activity/FMRadioPresets;->actionBarExtEnableHTCLandscape(Z)V

    goto :goto_0

    .line 135
    :pswitch_2
    const-string v1, "FMRadioPresets"

    const-string v2, "  onOptionsItemSelected() MODE_RENAME"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const v1, 0x7f04001f

    invoke-direct {p0, v1}, Lcom/htc/fm/activity/FMRadioPresets;->setActionBarTitle(I)V

    .line 137
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/htc/fm/activity/FMRadioPresets;->changeListType(I)V

    goto :goto_0

    .line 140
    :pswitch_3
    const-string v1, "FMRadioPresets"

    const-string v2, "  onOptionsItemSelected() MODE_SELECT_ALL"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    invoke-virtual {v1}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->selectAll()V

    .line 143
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioPresets;->updateDeletedButtonTitle()V

    .line 144
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioPresets;->updateSelectAllState()V

    goto :goto_0

    .line 148
    :pswitch_4
    const-string v1, "FMRadioPresets"

    const-string v2, "  onOptionsItemSelected() MODE_UNSELECT_ALL"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/htc/fm/activity/FMRadioPresets;->mAdapter:Lcom/htc/fm/ui/FMRadioPresetsAdapter;

    invoke-virtual {v1}, Lcom/htc/fm/ui/FMRadioPresetsAdapter;->unselectAll()V

    .line 151
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioPresets;->updateDeletedButtonTitle()V

    .line 152
    invoke-direct {p0}, Lcom/htc/fm/activity/FMRadioPresets;->updateSelectAllState()V

    goto/16 :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x7f050034
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 96
    const-string v0, "FMRadioPresets"

    const-string v1, "+onPause()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 98
    const-string v0, "FMRadioPresets"

    const-string v1, "-onPause()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 86
    const-string v1, "FMRadioPresets"

    const-string v2, "+onResume()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 88
    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioPresets;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 89
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "freq"

    sget v2, Lcom/htc/fm/utils/FreqUtils;->FREQUENCY_START:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/fm/activity/FMRadioPresets;->setCurrentFrequency(I)V

    .line 90
    invoke-virtual {p0}, Lcom/htc/fm/activity/FMRadioPresets;->checkListData()V

    .line 91
    const-string v1, "FMRadioPresets"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-onResume() freq: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/activity/FMRadioPresets;->mCurrentFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method
