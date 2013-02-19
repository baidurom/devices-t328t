.class public Lcom/htc/widget/DecorFlow$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "DecorFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DecorFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1773
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1774
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "c"
    .parameter "attrs"

    .prologue
    .line 1769
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1770
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 1777
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1778
    return-void
.end method
