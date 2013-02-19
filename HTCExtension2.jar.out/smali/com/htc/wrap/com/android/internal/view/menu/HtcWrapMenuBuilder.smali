.class public Lcom/htc/wrap/com/android/internal/view/menu/HtcWrapMenuBuilder;
.super Ljava/lang/Object;
.source "HtcWrapMenuBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setCurrentMenuInfo(Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menu"
    .parameter "menuInfo"

    .prologue
    .line 24
    check-cast p0, Lcom/android/internal/view/menu/MenuBuilder;

    .end local p0
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 25
    return-void
.end method
