.class Lcom/android/internal/telephony/cdma/HtcRadio$AlarmIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/HtcRadio;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/HtcRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcRadio$AlarmIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cdma/HtcRadio;Lcom/android/internal/telephony/cdma/HtcRadio$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcRadio$AlarmIntentReceiver;-><init>(Lcom/android/internal/telephony/cdma/HtcRadio;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 177
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.internal.telephony.cdma-flight.mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio$AlarmIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/HtcRadio;

    const-string v1, "timerId"

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio$AlarmIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/HtcRadio;

    #getter for: Lcom/android/internal/telephony/cdma/HtcRadio;->mFlightModeTimerId:I
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/HtcRadio;->access$100(Lcom/android/internal/telephony/cdma/HtcRadio;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #calls: Lcom/android/internal/telephony/cdma/HtcRadio;->timeoutFlightModePerioid(IZ)V
    invoke-static {v0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcRadio;->access$200(Lcom/android/internal/telephony/cdma/HtcRadio;IZ)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.internal.telephony.cdma-flight.workaround"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcRadio$AlarmIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/HtcRadio;

    const-string v1, "timerId"

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcRadio$AlarmIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/HtcRadio;

    #getter for: Lcom/android/internal/telephony/cdma/HtcRadio;->mWorkaroundTimerId:I
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/HtcRadio;->access$300(Lcom/android/internal/telephony/cdma/HtcRadio;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #calls: Lcom/android/internal/telephony/cdma/HtcRadio;->timeoutWorkaroundPerioid(IZ)V
    invoke-static {v0, v1, v3}, Lcom/android/internal/telephony/cdma/HtcRadio;->access$400(Lcom/android/internal/telephony/cdma/HtcRadio;IZ)V

    goto :goto_0
.end method
