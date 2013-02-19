.class public Lcom/htc/fragment/widget/Gallery2$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "Gallery2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/Gallery2;
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
    .line 1892
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1893
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "c"
    .parameter "attrs"

    .prologue
    .line 1884
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1885
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 1900
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1901
    return-void
.end method
