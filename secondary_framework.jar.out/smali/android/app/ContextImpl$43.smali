.class final Landroid/app/ContextImpl$43;
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
    .line 590
    invoke-direct {p0}, Landroid/app/ContextImpl$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createStaticService()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 592
    const-string/jumbo v1, "htc.sim_authentication"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 593
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 594
    const/4 v1, 0x0

    .line 596
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager;->getInstance()Lcom/orange/authentication/simcard/SimCardAuthenticationManager;

    move-result-object v1

    goto :goto_0
.end method
