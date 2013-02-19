.class public Lcom/htc/wrap/android/view/HtcWrapWindow;
.super Ljava/lang/Object;
.source "HtcWrapWindow.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableExtraPenLinstener(Landroid/view/Window;Z)Z
    .locals 1
    .parameter "window"
    .parameter "enable"

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Landroid/view/Window;->enableExtraPenLinstener(Z)Z

    move-result v0

    return v0
.end method

.method public static enablePenLinstener(Landroid/view/Window;Z)Z
    .locals 1
    .parameter "window"
    .parameter "enable"

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Landroid/view/Window;->enablePenLinstener(Z)Z

    move-result v0

    return v0
.end method

.method public static enablePenListener(Landroid/view/Window;Z)Z
    .locals 1
    .parameter "window"
    .parameter "enable"

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/Window;->enablePenLinstener(Z)Z

    move-result v0

    return v0
.end method
