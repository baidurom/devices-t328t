.class public Lcom/htc/wrap/android/os/HtcWrapRecoverySystem;
.super Landroid/os/RecoverySystem;
.source "HtcWrapRecoverySystem.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/os/RecoverySystem;-><init>()V

    .line 13
    return-void
.end method

.method public static handleAftermath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Landroid/os/RecoverySystem;->handleAftermath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static installMultiplePackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "filePathList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {p0, p1}, Landroid/os/RecoverySystem;->installMultiplePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static rebootWipeDataVzwHpst(Landroid/content/Context;)V
    .locals 0
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-static {p0}, Landroid/os/RecoverySystem;->rebootWipeDataVzwHpst(Landroid/content/Context;)V

    .line 29
    return-void
.end method
