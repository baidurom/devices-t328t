.class Lcom/android/server/HtcLocationAwareWifi$2;
.super Ljava/lang/Object;
.source "HtcLocationAwareWifi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcLocationAwareWifi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HtcLocationAwareWifi;


# direct methods
.method constructor <init>(Lcom/android/server/HtcLocationAwareWifi;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/server/HtcLocationAwareWifi$2;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/server/HtcLocationAwareWifi$2;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/HtcLocationAwareWifi;->mWifiTimeout:Z
    invoke-static {v0, v1}, Lcom/android/server/HtcLocationAwareWifi;->access$1302(Lcom/android/server/HtcLocationAwareWifi;Z)Z

    .line 423
    iget-object v0, p0, Lcom/android/server/HtcLocationAwareWifi$2;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    #calls: Lcom/android/server/HtcLocationAwareWifi;->wifiNotConnected()V
    invoke-static {v0}, Lcom/android/server/HtcLocationAwareWifi;->access$1400(Lcom/android/server/HtcLocationAwareWifi;)V

    .line 424
    return-void
.end method
