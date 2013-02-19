.class public Lcom/htc/quickselection/HtcQuickAction;
.super Ljava/lang/Object;
.source "HtcQuickAction.java"


# static fields
.field private static mHtcQuickAction:Lcom/htc/quickselection/HtcQuickAction;

.field private static mOutsideTouchListener:Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;

.field private static mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;


# instance fields
.field private IsShowing:Z

.field private mCurrentView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/quickselection/HtcQuickAction;->IsShowing:Z

    return-void
.end method

.method public static getInstance()Lcom/htc/quickselection/HtcQuickAction;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mHtcQuickAction:Lcom/htc/quickselection/HtcQuickAction;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/htc/quickselection/HtcQuickAction;

    invoke-direct {v0}, Lcom/htc/quickselection/HtcQuickAction;-><init>()V

    sput-object v0, Lcom/htc/quickselection/HtcQuickAction;->mHtcQuickAction:Lcom/htc/quickselection/HtcQuickAction;

    .line 38
    :cond_0
    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mHtcQuickAction:Lcom/htc/quickselection/HtcQuickAction;

    return-object v0
.end method

.method private prepareSelectionWindow(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 89
    sget-object v1, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-nez v1, :cond_1

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    .local v0, ctx:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    :cond_0
    new-instance v1, Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-direct {v1, v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    .line 96
    .end local v0           #ctx:Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickAction;->mCurrentView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickAction;->mCurrentView:Landroid/view/View;

    if-eq v1, p1, :cond_2

    .line 99
    sget-object v1, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->dismiss()V

    .line 101
    :cond_2
    return-void
.end method

.method private updateCurrentView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 104
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickAction;->mCurrentView:Landroid/view/View;

    if-eq v0, p1, :cond_1

    .line 105
    iput-object p1, p0, Lcom/htc/quickselection/HtcQuickAction;->mCurrentView:Landroid/view/View;

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    if-nez p1, :cond_0

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/quickselection/HtcQuickAction;->mCurrentView:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public addQuickActionMenu(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "icon"
    .parameter "listener"
    .parameter "description"

    .prologue
    .line 46
    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public dismissQuickAction(Z)V
    .locals 1
    .parameter "fakeDismiss"

    .prologue
    .line 78
    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    if-eqz p1, :cond_1

    .line 80
    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->fakeDismiss()V

    .line 84
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/quickselection/HtcQuickAction;->IsShowing:Z

    .line 86
    :cond_0
    return-void

    .line 82
    :cond_1
    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->dismiss()V

    goto :goto_0
.end method

.method public isHtcQuickActionshowing()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/htc/quickselection/HtcQuickAction;->IsShowing:Z

    return v0
.end method

.method public prepareQuickActions(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/content/Context;)V
    .locals 1
    .parameter "view"
    .parameter "listener"
    .parameter "context"

    .prologue
    .line 54
    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-nez v0, :cond_0

    .line 55
    invoke-direct {p0, p1}, Lcom/htc/quickselection/HtcQuickAction;->prepareSelectionWindow(Landroid/view/View;)V

    .line 56
    :cond_0
    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->reset()V

    .line 57
    return-void
.end method

.method public showQuickAction(Landroid/widget/TextView;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "parent"
    .parameter "r"

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/quickselection/HtcQuickAction;->prepareSelectionWindow(Landroid/view/View;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/htc/quickselection/HtcQuickAction;->updateCurrentView(Landroid/view/View;)V

    .line 69
    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->show(Landroid/view/View;Landroid/graphics/Rect;Z)V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/quickselection/HtcQuickAction;->IsShowing:Z

    goto :goto_0
.end method
