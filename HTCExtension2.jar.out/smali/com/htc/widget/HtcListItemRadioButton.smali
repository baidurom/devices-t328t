.class public Lcom/htc/widget/HtcListItemRadioButton;
.super Landroid/widget/RadioButton;
.source "HtcListItemRadioButton.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemControl;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemRadioButton;->init(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemRadioButton;->init(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemRadioButton;->init(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemRadioButton;->setVisibility(I)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemRadioButton;->setFocusable(Z)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemRadioButton;->setClickable(Z)V

    .line 31
    return-void
.end method


# virtual methods
.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 49
    iget-object v1, p0, Lcom/htc/widget/HtcListItemRadioButton;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/htc/widget/HtcListItemRadioButton;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 56
    :goto_0
    return-object v0

    .line 52
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 55
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iput-object v0, p0, Lcom/htc/widget/HtcListItemRadioButton;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemRadioButton;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 94
    invoke-static {p0, p1}, Lcom/htc/widget/HtcListItemUtil;->setViewOpacity(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "params"

    .prologue
    const/4 v0, -0x2

    .line 38
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 39
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 41
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 81
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemRadioButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setPressed(Z)V

    goto :goto_0
.end method
