.class final Lcom/android/server/HtcPowerSaver$DataConn;
.super Lcom/android/server/HtcPowerSaver$Feature;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcPowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataConn"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/HtcPowerSaver;


# direct methods
.method constructor <init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "ctx"

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/android/server/HtcPowerSaver$DataConn;->this$0:Lcom/android/server/HtcPowerSaver;

    .line 1143
    const-string v2, "DataConn"

    const-string v3, "powersaver_dataconnection"

    const/4 v4, 0x1

    const-string v5, "sys.psaver.dconn"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/HtcPowerSaver$Feature;-><init>(Lcom/android/server/HtcPowerSaver;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1144
    iput-object p2, p0, Lcom/android/server/HtcPowerSaver$DataConn;->mContext:Landroid/content/Context;

    .line 1145
    return-void
.end method


# virtual methods
.method protected applyPowerSaverSettings()I
    .locals 3

    .prologue
    .line 1155
    const-string v1, "HtcPowerSaver"

    const-string v2, "applyPowerSaverSettings: SMARTSYNC_SERVICE_BROADCAST_SERVICE_RUNNING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    new-instance v0, Landroid/content/Intent;

    const-string v1, "SMARTSYNC_SERVICE_BROADCAST_SERVICE_RUNNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1157
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/HtcPowerSaver$DataConn;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1158
    const/4 v1, 0x0

    return v1
.end method

.method protected restoreSystemSettings()I
    .locals 3

    .prologue
    .line 1163
    const-string v1, "HtcPowerSaver"

    const-string v2, "restoreSystemSettings: SMARTSYNC_SERVICE_BROADCAST_SERVICE_STOPING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    new-instance v0, Landroid/content/Intent;

    const-string v1, "SMARTSYNC_SERVICE_BROADCAST_SERVICE_STOPING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1165
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/HtcPowerSaver$DataConn;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1166
    const/4 v1, 0x0

    return v1
.end method

.method protected saveSystemSettings()I
    .locals 2

    .prologue
    .line 1149
    const-string v0, "HtcPowerSaver"

    const-string v1, "saveSystemSettings: do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    const/4 v0, 0x0

    return v0
.end method
