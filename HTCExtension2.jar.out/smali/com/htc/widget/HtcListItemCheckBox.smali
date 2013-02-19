.class public Lcom/htc/widget/HtcListItemCheckBox;
.super Landroid/widget/CheckBox;
.source "HtcListItemCheckBox.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemControl;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcListItemCheckBox;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemCheckBox;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemCheckBox;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemCheckBox;->setVisibility(I)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemCheckBox;->setFocusable(Z)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemCheckBox;->setClickable(Z)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemCheckBox;->setDuplicateParentStateEnabled(Z)V

    .line 59
    return-void
.end method


# virtual methods
.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 92
    iget-object v1, p0, Lcom/htc/widget/HtcListItemCheckBox;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBox;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 99
    :goto_0
    return-object v0

    .line 95
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 98
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iput-object v0, p0, Lcom/htc/widget/HtcListItemCheckBox;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemCheckBox;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 119
    invoke-static {p0, p1}, Lcom/htc/widget/HtcListItemUtil;->setViewOpacity(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "params"

    .prologue
    const/4 v0, -0x2

    .line 81
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 82
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 84
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 105
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemCheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_0
.end method
