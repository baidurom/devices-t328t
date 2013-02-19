.class Lcom/android/server/HtcLocationAwareWifi$3;
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
    .line 428
    iput-object p1, p0, Lcom/android/server/HtcLocationAwareWifi$3;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/server/HtcLocationAwareWifi$3;->this$0:Lcom/android/server/HtcLocationAwareWifi;

    #calls: Lcom/android/server/HtcLocationAwareWifi;->mainLocationAwareWifiLogic()V
    invoke-static {v0}, Lcom/android/server/HtcLocationAwareWifi;->access$800(Lcom/android/server/HtcLocationAwareWifi;)V

    .line 435
    return-void
.end method
