.class public Lcom/htc/wrap/com/android/internal/policy/HtcWrapPolicyManager;
.super Ljava/lang/Object;
.source "HtcWrapPolicyManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeNewWindow(Landroid/content/Context;)Landroid/view/Window;
    .locals 1
    .parameter "context"

    .prologue
    .line 14
    invoke-static {p0}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method
