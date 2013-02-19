.class public Lcom/htc/widget/HtcAbsListView2$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "HtcAbsListView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAbsListView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field recycledHeaderFooter:Z

.field viewType:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 4430
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4431
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "viewType"

    .prologue
    .line 4438
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4439
    iput p3, p0, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    .line 4440
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "c"
    .parameter "attrs"

    .prologue
    .line 4422
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4423
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 4447
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4448
    return-void
.end method
