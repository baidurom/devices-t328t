.class public Lcom/htc/wrap/android/view/HtcWrapDisplay;
.super Ljava/lang/Object;
.source "HtcWrapDisplay.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRealMetrics(Landroid/view/Display;Landroid/util/DisplayMetrics;)V
    .locals 0
    .parameter "display"
    .parameter "outMetrics"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 14
    return-void
.end method
