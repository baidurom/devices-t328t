.class Lcom/android/internal/telephony/gsm/CBMessage$1;
.super Ljava/lang/Object;
.source "CBMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/CBMessage;->setCBChannel(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/CBMessage;

.field final synthetic val$sChannels:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/CBMessage;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/CBMessage$1;->this$0:Lcom/android/internal/telephony/gsm/CBMessage;

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/CBMessage$1;->val$sChannels:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 337
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 338
    .local v0, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 339
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/CBMessage$1;->val$sChannels:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ISms;->updateCBMI(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v1

    goto :goto_0
.end method
