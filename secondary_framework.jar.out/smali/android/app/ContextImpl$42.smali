.class final Landroid/app/ContextImpl$42;
.super Landroid/app/ContextImpl$StaticServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 578
    invoke-direct {p0}, Landroid/app/ContextImpl$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createStaticService()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 580
    const-string/jumbo v1, "htctelephony"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 581
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 582
    const/4 v1, 0x0

    .line 584
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/htc/service/HtcTelephonyManager;

    invoke-static {v0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/service/HtcTelephonyManager;-><init>(Lcom/android/internal/telephony/IHtcTelephony;)V

    goto :goto_0
.end method
