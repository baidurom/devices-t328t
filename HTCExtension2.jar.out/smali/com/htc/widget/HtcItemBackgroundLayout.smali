.class public Lcom/htc/widget/HtcItemBackgroundLayout;
.super Landroid/widget/FrameLayout;
.source "HtcItemBackgroundLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcItemBackgroundLayout;->init(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcItemBackgroundLayout;->init(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcItemBackgroundLayout;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    if-eqz p1, :cond_0

    .line 36
    const v0, 0x208003b

    .line 39
    .local v0, resid:I
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcItemBackgroundLayout;->setBackgroundResource(I)V

    .line 41
    .end local v0           #resid:I
    :cond_0
    return-void
.end method
