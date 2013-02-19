.class public Lcom/htc/widget/HeaderBarTall;
.super Lcom/htc/widget/HeaderBar;
.source "HeaderBarTall.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/htc/widget/HeaderBar;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrset"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HeaderBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrset"
    .parameter "defStyle"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HeaderBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method private setupHeaderHeight(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const v4, 0x20e008b

    .line 58
    if-eqz p1, :cond_1

    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, lparams:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarTall;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 76
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/widget/HeaderBarTall;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    return-void

    .line 69
    :cond_0
    const/4 v2, -0x1

    .line 70
    .local v2, width:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 72
    .local v0, height:I
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .end local v1           #lparams:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v1, v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .restart local v1       #lparams:Landroid/view/ViewGroup$LayoutParams;
    goto :goto_0

    .line 79
    .end local v0           #height:I
    .end local v1           #lparams:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #width:I
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "context is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 51
    invoke-super {p0}, Lcom/htc/widget/HeaderBar;->onAttachedToWindow()V

    .line 52
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarTall;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/widget/HeaderBarTall;->setupHeaderHeight(Landroid/content/Context;)V

    .line 53
    return-void
.end method
