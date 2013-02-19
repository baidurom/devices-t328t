.class public Lcom/htc/widget/ActionBarQuickContact;
.super Lcom/htc/widget/QuickContactBadge;
.source "ActionBarQuickContact.java"


# instance fields
.field private resource:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 21
    invoke-direct {p0, p1}, Lcom/htc/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object v3, p0, Lcom/htc/widget/ActionBarQuickContact;->resource:Landroid/content/res/Resources;

    .line 23
    iput-object v3, p0, Lcom/htc/widget/ActionBarQuickContact;->resource:Landroid/content/res/Resources;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/ActionBarQuickContact;->resource:Landroid/content/res/Resources;

    .line 26
    iget-object v3, p0, Lcom/htc/widget/ActionBarQuickContact;->resource:Landroid/content/res/Resources;

    if-nez v3, :cond_0

    .line 27
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "package resouce null"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    .local v0, frameDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/htc/widget/ActionBarQuickContact;->resource:Landroid/content/res/Resources;

    const v4, 0x2080152

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 35
    .local v2, width:I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 37
    .local v1, height:I
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/widget/ActionBarQuickContact;->setDarkMode(Z)V

    .line 38
    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/htc/widget/ActionBarQuickContact;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 48
    invoke-super {p0}, Lcom/htc/widget/QuickContactBadge;->onAttachedToWindow()V

    .line 51
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarQuickContact;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarQuickContact;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 56
    .local v0, lparams:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v1, p0, Lcom/htc/widget/ActionBarQuickContact;->resource:Landroid/content/res/Resources;

    const v2, 0x2050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 58
    invoke-virtual {p0}, Lcom/htc/widget/ActionBarQuickContact;->requestLayout()V

    .line 60
    .end local v0           #lparams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method
