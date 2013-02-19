.class Lcom/htc/app/FilePickerEditWindowController;
.super Ljava/lang/Object;
.source "FilePickerEditWindowController.java"


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private editingWindowLayoutId:I

.field private editingWindowLayoutIdWithoutFooter:I

.field private mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

.field private mEditingWindowLayoutId:I

.field private mHasFooter:Z


# direct methods
.method constructor <init>(Z)V
    .locals 2
    .parameter "hasFooter"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v1, p0, Lcom/htc/app/FilePickerEditWindowController;->DEBUG:Z

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerEditWindowController;->TAG:Ljava/lang/String;

    .line 23
    const v0, 0x2090004

    iput v0, p0, Lcom/htc/app/FilePickerEditWindowController;->editingWindowLayoutId:I

    .line 24
    const v0, 0x2090005

    iput v0, p0, Lcom/htc/app/FilePickerEditWindowController;->editingWindowLayoutIdWithoutFooter:I

    .line 25
    iput v1, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditingWindowLayoutId:I

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mHasFooter:Z

    .line 44
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerEditWindowController;->setHasFooter(Z)V

    .line 45
    return-void
.end method

.method private setHasFooter(Z)V
    .locals 1
    .parameter "hasFooter"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/htc/app/FilePickerEditWindowController;->mHasFooter:Z

    .line 35
    if-eqz p1, :cond_0

    .line 36
    iget v0, p0, Lcom/htc/app/FilePickerEditWindowController;->editingWindowLayoutId:I

    iput v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditingWindowLayoutId:I

    .line 41
    :goto_0
    return-void

    .line 38
    :cond_0
    iget v0, p0, Lcom/htc/app/FilePickerEditWindowController;->editingWindowLayoutIdWithoutFooter:I

    iput v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditingWindowLayoutId:I

    goto :goto_0
.end method


# virtual methods
.method hasFooter()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mHasFooter:Z

    return v0
.end method

.method invalidateOptionsMenu(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 139
    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 142
    :cond_0
    return-void
.end method

.method refreshOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->refreshOptionsMenu(Landroid/view/Menu;)V

    .line 131
    :cond_0
    return-void
.end method

.method setActContentView(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    const/4 v4, -0x1

    .line 48
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 50
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditingWindowLayoutId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/EditWindowLayout;

    iput-object v2, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    .line 52
    iget-object v2, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v2, :cond_0

    .line 53
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 56
    .local v1, param:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 57
    iget-object v2, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {p1, v2, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v2, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v2}, Lcom/htc/widget/EditWindowLayout;->initEditTitleBarStyle()V

    .line 59
    invoke-virtual {p0}, Lcom/htc/app/FilePickerEditWindowController;->hasFooter()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/widget/EditWindowLayout;->setupFooterButtons(I)V

    .line 62
    iget-object v2, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v3, 0x2040145

    invoke-virtual {v2, v3}, Lcom/htc/widget/EditWindowLayout;->setLeftButtonLabel(I)V

    .line 63
    iget-object v2, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    const v3, 0x20401ee

    invoke-virtual {v2, v3}, Lcom/htc/widget/EditWindowLayout;->setRightButtonLabel(I)V

    .line 66
    .end local v1           #param:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method setAppDropDownAdapter(Lcom/htc/app/FilePickerAppDropDownAdapter;)V
    .locals 1
    .parameter "filePickerAppDropDownAdpter"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setAppDropDownAdapter(Landroid/widget/BaseAdapter;)V

    .line 93
    :cond_0
    return-void
.end method

.method setAppDropDownEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setAppDropDownEnabled(Z)V

    .line 136
    :cond_0
    return-void
.end method

.method setAppDropDownOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 1
    .parameter "appDropDownOnItemClickListener"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setAppDropDownOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 100
    :cond_0
    return-void
.end method

.method setLeftButtonEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setLeftButtonEnabled(Z)V

    .line 115
    :cond_0
    return-void
.end method

.method setLeftButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "onClickListener"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setLeftButtonListener(Landroid/view/View$OnClickListener;)V

    .line 71
    :cond_0
    return-void
.end method

.method setMainTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setMainTitle(Ljava/lang/String;)V

    .line 81
    :cond_0
    return-void
.end method

.method setRightButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "onClickListener"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setRightButtonListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :cond_0
    return-void
.end method

.method setSubTitle(I)V
    .locals 1
    .parameter "stringId"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setSubTitle(I)V

    .line 110
    :cond_0
    return-void
.end method

.method setSubTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setSubTitle(Ljava/lang/String;)V

    .line 105
    :cond_0
    return-void
.end method

.method setTitleLabel(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->setTitleLabel(Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method

.method setWindowContentView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->addViewToBody(Landroid/view/View;)V

    .line 126
    :cond_0
    return-void
.end method

.method showProgressBar(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/htc/app/FilePickerEditWindowController;->mEditWindowLayout:Lcom/htc/widget/EditWindowLayout;

    invoke-virtual {v0, p1}, Lcom/htc/widget/EditWindowLayout;->showProgressBar(Z)V

    .line 120
    :cond_0
    return-void
.end method
