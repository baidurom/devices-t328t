.class public Lcom/htc/widget/HtcWidgetTaskBar;
.super Lcom/htc/widget/TaskBar;
.source "HtcWidgetTaskBar.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPanelTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/htc/widget/TaskBar;-><init>(Landroid/content/Context;)V

    .line 17
    const/16 v0, 0x12

    iput v0, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mPanelTextSize:I

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mContext:Landroid/content/Context;

    .line 21
    iput-object p1, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mContext:Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Lcom/htc/widget/HtcWidgetTaskBar;->init()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/TaskBar;-><init>(Landroid/content/Context;I)V

    .line 17
    const/16 v0, 0x12

    iput v0, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mPanelTextSize:I

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mContext:Landroid/content/Context;

    .line 33
    iput-object p1, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mContext:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/htc/widget/HtcWidgetTaskBar;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/TaskBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/16 v0, 0x12

    iput v0, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mPanelTextSize:I

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mContext:Landroid/content/Context;

    .line 45
    iput-object p1, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mContext:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/htc/widget/HtcWidgetTaskBar;->init()V

    .line 47
    return-void
.end method

.method private init()V
    .locals 7

    .prologue
    const/16 v6, 0x140

    const/16 v5, 0xf0

    const/high16 v4, -0x4080

    .line 73
    iget-object v2, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 75
    .local v1, manager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 76
    .local v0, mDisplay:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-ne v2, v6, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-eq v2, v5, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-ne v2, v5, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 78
    :cond_1
    const/16 v2, 0xe

    iput v2, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mPanelTextSize:I

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcWidgetTaskBar;->getCurrentMode()I

    move-result v2

    const v3, 0x209005a

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcWidgetTaskBar;->init(II)V

    .line 82
    iget v2, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mPanelTextSize:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcWidgetTaskBar;->setCenterTextsize(F)V

    .line 83
    const/high16 v2, 0x3f80

    const v3, -0xdcdcdd

    invoke-virtual {p0, v2, v4, v4, v3}, Lcom/htc/widget/HtcWidgetTaskBar;->setCenterShadow(FFFI)V

    .line 84
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcWidgetTaskBar;->setCenterColor(I)V

    .line 85
    const/16 v2, 0x92

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcWidgetTaskBar;->setCenterTextLength(I)V

    .line 86
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcWidgetTaskBar;->setButtonFocusable(Z)V

    .line 87
    return-void
.end method


# virtual methods
.method public init(I)V
    .locals 7
    .parameter "mode"

    .prologue
    const/16 v6, 0x140

    const/16 v5, 0xf0

    const/high16 v4, -0x4080

    .line 55
    iget-object v2, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 57
    .local v1, manager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 58
    .local v0, mDisplay:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-ne v2, v6, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-eq v2, v5, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-ne v2, v5, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 60
    :cond_1
    const/16 v2, 0xe

    iput v2, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mPanelTextSize:I

    .line 63
    :cond_2
    const v2, 0x209005a

    invoke-virtual {p0, p1, v2}, Lcom/htc/widget/HtcWidgetTaskBar;->init(II)V

    .line 64
    iget v2, p0, Lcom/htc/widget/HtcWidgetTaskBar;->mPanelTextSize:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcWidgetTaskBar;->setCenterTextsize(F)V

    .line 65
    const/high16 v2, 0x3f80

    const v3, -0xdcdcdd

    invoke-virtual {p0, v2, v4, v4, v3}, Lcom/htc/widget/HtcWidgetTaskBar;->setCenterShadow(FFFI)V

    .line 66
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcWidgetTaskBar;->setCenterColor(I)V

    .line 67
    const/16 v2, 0x92

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcWidgetTaskBar;->setCenterTextLength(I)V

    .line 68
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcWidgetTaskBar;->setButtonFocusable(Z)V

    .line 69
    return-void
.end method

.method public setButtonFocusable(Z)V
    .locals 2
    .parameter "bFocusable"

    .prologue
    .line 95
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcWidgetTaskBar;->getLeftButton()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/htc/widget/HtcWidgetTaskBar;->getRightButton()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/htc/widget/HtcWidgetTaskBar;->getCenterButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setFocusable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
