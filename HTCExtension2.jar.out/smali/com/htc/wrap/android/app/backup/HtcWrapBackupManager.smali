.class public Lcom/htc/wrap/android/app/backup/HtcWrapBackupManager;
.super Landroid/app/backup/BackupManager;
.source "HtcWrapBackupManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 10
    return-void
.end method


# virtual methods
.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "transport"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/backup/BackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/backup/BackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "transport"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/backup/BackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAutoRestore(Z)V
    .locals 0
    .parameter "doAutoRestore"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/backup/BackupManager;->setAutoRestore(Z)V

    .line 19
    return-void
.end method

.method public setBackupEnabled(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/backup/BackupManager;->setBackupEnabled(Z)V

    .line 28
    return-void
.end method

.method public setBackupProvisioned(Z)V
    .locals 0
    .parameter "isProvisioned"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/backup/BackupManager;->setBackupProvisioned(Z)V

    .line 37
    return-void
.end method
