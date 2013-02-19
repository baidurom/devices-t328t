.class public Lcom/htc/widget/internal/PopupMenuWrapper;
.super Ljava/lang/Object;
.source "PopupMenuWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableHtcPopup(Lcom/android/internal/view/menu/MenuPopupHelper;Z)V
    .locals 0
    .parameter "helper"
    .parameter "enable"

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper;->enableHtcPopup(Z)V

    .line 18
    return-void
.end method
