.class Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcCdmaGpsOne.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne$1;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaGpsOne;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.htc.intent.action.PPST_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    :cond_0
    return-void
.end method
