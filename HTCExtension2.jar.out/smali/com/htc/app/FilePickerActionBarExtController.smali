.class Lcom/htc/app/FilePickerActionBarExtController;
.super Ljava/lang/Object;
.source "FilePickerActionBarExtController.java"


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

.field private mActionBarExt:Lcom/htc/widget/ActionBarExt;

.field private mActionBarNormalSearchButton:Lcom/htc/widget/ActionBarItemView;

.field private mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

.field private mIsActionBarContainerBackUpEnabled:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/app/ActionBar;)V
    .locals 4
    .parameter "activity"
    .parameter "actionBar"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v2, p0, Lcom/htc/app/FilePickerActionBarExtController;->DEBUG:Z

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->TAG:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 25
    iput-object v1, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    .line 26
    iput-object v1, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    .line 230
    iput-boolean v2, p0, Lcom/htc/app/FilePickerActionBarExtController;->mIsActionBarContainerBackUpEnabled:Z

    .line 30
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/htc/widget/ActionBarExt;

    invoke-direct {v0, p1, p2}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 33
    :cond_0
    invoke-virtual {p0, v3}, Lcom/htc/app/FilePickerActionBarExtController;->setActionBarContainerBackUpEnabled(Z)V

    .line 34
    invoke-virtual {p0, v3}, Lcom/htc/app/FilePickerActionBarExtController;->setSearchContainerBackUpEnabled(Z)V

    .line 36
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-nez v0, :cond_1

    .line 37
    new-instance v0, Lcom/htc/widget/ActionBarDropDown;

    invoke-direct {v0, p1}, Lcom/htc/widget/ActionBarDropDown;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-eqz v0, :cond_5

    .line 43
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    new-instance v1, Lcom/htc/app/FilePickerActionBarExtController$1;

    invoke-direct {v1, p0}, Lcom/htc/app/FilePickerActionBarExtController$1;-><init>(Lcom/htc/app/FilePickerActionBarExtController;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 51
    invoke-direct {p0}, Lcom/htc/app/FilePickerActionBarExtController;->getActionBarContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 53
    :cond_2
    invoke-direct {p0}, Lcom/htc/app/FilePickerActionBarExtController;->getActionBarContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 55
    invoke-direct {p0}, Lcom/htc/app/FilePickerActionBarExtController;->getSearchContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    new-instance v1, Lcom/htc/app/FilePickerActionBarExtController$2;

    invoke-direct {v1, p0}, Lcom/htc/app/FilePickerActionBarExtController$2;-><init>(Lcom/htc/app/FilePickerActionBarExtController;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    if-nez v0, :cond_3

    .line 65
    new-instance v0, Lcom/htc/widget/ActionBarSearch;

    invoke-direct {v0, p1}, Lcom/htc/widget/ActionBarSearch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    .line 66
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarSearch;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    new-instance v1, Lcom/htc/app/FilePickerActionBarExtController$3;

    invoke-direct {v1, p0}, Lcom/htc/app/FilePickerActionBarExtController$3;-><init>(Lcom/htc/app/FilePickerActionBarExtController;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarSearch;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 90
    invoke-direct {p0}, Lcom/htc/app/FilePickerActionBarExtController;->getSearchContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 92
    :cond_4
    invoke-direct {p0}, Lcom/htc/app/FilePickerActionBarExtController;->getSearchContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 97
    new-instance v0, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v0, p1}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarNormalSearchButton:Lcom/htc/widget/ActionBarItemView;

    .line 98
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarNormalSearchButton:Lcom/htc/widget/ActionBarItemView;

    const v1, 0x20800c2

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setIcon(I)V

    .line 99
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarNormalSearchButton:Lcom/htc/widget/ActionBarItemView;

    const v1, 0x204014d

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setText(I)V

    .line 100
    invoke-virtual {p0, v2}, Lcom/htc/app/FilePickerActionBarExtController;->setNormalSearchButtonVisibility(Z)V

    .line 103
    invoke-direct {p0}, Lcom/htc/app/FilePickerActionBarExtController;->getSearchContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarNormalSearchButton:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 106
    :cond_5
    return-void
.end method

.method static synthetic access$000(Lcom/htc/app/FilePickerActionBarExtController;)Lcom/htc/widget/ActionBarDropDown;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/app/FilePickerActionBarExtController;)Lcom/htc/widget/ActionBarSearch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    return-object v0
.end method

.method private getActionBarContainer()Lcom/htc/widget/ActionBarContainer;
    .locals 2

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    iget-object v1, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    .line 219
    :cond_0
    return-object v0
.end method

.method private getSearchContainer()Lcom/htc/widget/ActionBarContainer;
    .locals 2

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    iget-object v1, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getSearchContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    .line 227
    :cond_0
    return-object v0
.end method


# virtual methods
.method cleanContainerEnvironment()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 273
    const/4 v0, 0x0

    .line 275
    .local v0, actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    invoke-direct {p0}, Lcom/htc/app/FilePickerActionBarExtController;->getActionBarContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setCounterVisibility(I)V

    .line 278
    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    .line 279
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 280
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v1, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarDropDown;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 285
    :cond_0
    invoke-direct {p0}, Lcom/htc/app/FilePickerActionBarExtController;->getSearchContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_1

    .line 287
    iget-object v1, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarSearch;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 290
    :cond_1
    return-void
.end method

.method dismissDropDown()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->dismiss()V

    .line 130
    :cond_0
    return-void
.end method

.method enableHTCLandscape(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarExt;->enableHTCLandscape(Z)V

    .line 296
    :cond_0
    return-void
.end method

.method getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;
    .locals 2

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, autoCompleteTextView:Landroid/widget/AutoCompleteTextView;
    iget-object v1, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarSearch:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarSearch;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    .line 211
    :cond_0
    return-object v0
.end method

.method hideSearchBarMode()V
    .locals 2

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/htc/app/FilePickerActionBarExtController;->getSearchContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-direct {p0}, Lcom/htc/app/FilePickerActionBarExtController;->getSearchContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/htc/app/FilePickerActionBarExtController;->switchContainer()V

    .line 193
    invoke-virtual {p0}, Lcom/htc/app/FilePickerActionBarExtController;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method isActionBarContainerBackUpEnabled()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mIsActionBarContainerBackUpEnabled:Z

    return v0
.end method

.method isSearchBarVisibled()Z
    .locals 2

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, result:Z
    invoke-direct {p0}, Lcom/htc/app/FilePickerActionBarExtController;->getSearchContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/htc/app/FilePickerActionBarExtController;->getSearchContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 201
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setActionBarContainerBackUpEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/htc/app/FilePickerActionBarExtController;->getActionBarContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/htc/app/FilePickerActionBarExtController;->getActionBarContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 239
    iput-boolean p1, p0, Lcom/htc/app/FilePickerActionBarExtController;->mIsActionBarContainerBackUpEnabled:Z

    .line 241
    :cond_0
    return-void
.end method

.method setActionBarContainerBackUpOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/htc/app/FilePickerActionBarExtController;->getActionBarContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/htc/app/FilePickerActionBarExtController;->getActionBarContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    :cond_0
    return-void
.end method

.method setArrowEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setArrowEnabled(Z)V

    .line 147
    :cond_0
    return-void
.end method

.method setDropDownAdapter(Landroid/widget/BaseAdapter;)V
    .locals 2
    .parameter "baseAdapter"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_1

    .line 134
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setArrowEnabled(Z)V

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    :cond_1
    return-void

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setArrowEnabled(Z)V

    goto :goto_0
.end method

.method setDropDownOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 1
    .parameter "onItemClickListener"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 163
    :cond_0
    return-void
.end method

.method setDropDownVisibility(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 151
    if-eqz p1, :cond_1

    .line 152
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setVisibility(I)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setVisibility(I)V

    goto :goto_0
.end method

.method setMainTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method

.method setNormalSearchButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "onClickListener"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarNormalSearchButton:Lcom/htc/widget/ActionBarItemView;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarNormalSearchButton:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    :cond_0
    return-void
.end method

.method setNormalSearchButtonVisibility(Z)V
    .locals 2
    .parameter "visibled"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarNormalSearchButton:Lcom/htc/widget/ActionBarItemView;

    if-eqz v0, :cond_0

    .line 263
    if-eqz p1, :cond_1

    .line 264
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarNormalSearchButton:Lcom/htc/widget/ActionBarItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setVisibility(I)V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarNormalSearchButton:Lcom/htc/widget/ActionBarItemView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setVisibility(I)V

    goto :goto_0
.end method

.method setSearchContainerBackUpEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/htc/app/FilePickerActionBarExtController;->getSearchContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/htc/app/FilePickerActionBarExtController;->getSearchContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 259
    :cond_0
    return-void
.end method

.method setSearchContainerBackUpOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/htc/app/FilePickerActionBarExtController;->getSearchContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/htc/app/FilePickerActionBarExtController;->getSearchContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    :cond_0
    return-void
.end method

.method setSubTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryText(Ljava/lang/String;)V

    .line 117
    if-nez p1, :cond_1

    .line 118
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method showSearchBarMode()V
    .locals 2

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/htc/app/FilePickerActionBarExtController;->getSearchContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-direct {p0}, Lcom/htc/app/FilePickerActionBarExtController;->getSearchContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lcom/htc/app/FilePickerActionBarExtController;->getSearchContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 184
    :cond_2
    invoke-virtual {p0}, Lcom/htc/app/FilePickerActionBarExtController;->switchContainer()V

    goto :goto_0
.end method

.method switchContainer()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/htc/app/FilePickerActionBarExtController;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->switchContainer()V

    .line 177
    :cond_0
    return-void
.end method
