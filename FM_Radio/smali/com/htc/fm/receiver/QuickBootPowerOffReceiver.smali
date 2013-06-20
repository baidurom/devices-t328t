.class public abstract Lcom/htc/fm/receiver/QuickBootPowerOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QuickBootPowerOffReceiver.java"


# static fields
.field public static final ACTION_FILTER:Landroid/content/IntentFilter; = null

.field public static final TAG:Ljava/lang/String; = "QuickBootPowerOffReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/fm/receiver/QuickBootPowerOffReceiver;->ACTION_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onQuickBoot()V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 17
    const-string v1, "QuickBootPowerOffReceiver"

    const-string v2, "onReceiver()"

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    if-eqz p2, :cond_0

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, tAction:Ljava/lang/String;
    const-string v1, "QuickBootPowerOffReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  onReceiver() action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/htc/fm/receiver/QuickBootPowerOffReceiver;->onQuickBoot()V

    .line 23
    .end local v0           #tAction:Ljava/lang/String;
    :cond_0
    return-void
.end method
