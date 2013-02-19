.class public Lcom/htc/widget/HtcFlagButton;
.super Lcom/htc/widget/HtcCompoundButton;
.source "HtcFlagButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcFlagButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcFlagButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    iput-boolean v3, p0, Lcom/htc/widget/HtcCompoundButton;->mIsContentMultiplyRequired:Z

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcCompoundButton;->mHasOnState:Z

    .line 22
    const v1, 0x208016d

    const v2, 0x208016e

    const v4, 0x208016f

    const v5, 0x208016c

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcFlagButton;->setButtonDrawableResources(IIIII)V

    .line 24
    return-void
.end method
