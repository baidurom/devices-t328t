.class final Lcom/htc/app/AppLaunchObserver$Transport;
.super Lcom/android/internal/os/IHtcAppLaunchObserver$Stub;
.source "AppLaunchObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/AppLaunchObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Transport"
.end annotation


# instance fields
.field mAppLaunchObserver:Lcom/htc/app/AppLaunchObserver;


# direct methods
.method public constructor <init>(Lcom/htc/app/AppLaunchObserver;)V
    .locals 0
    .parameter "appLaunchObserver"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/internal/os/IHtcAppLaunchObserver$Stub;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/htc/app/AppLaunchObserver$Transport;->mAppLaunchObserver:Lcom/htc/app/AppLaunchObserver;

    .line 46
    return-void
.end method


# virtual methods
.method public onAppLaunch(Lcom/android/internal/os/HtcAppUsageStats;)V
    .locals 1
    .parameter "stat"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/app/AppLaunchObserver$Transport;->mAppLaunchObserver:Lcom/htc/app/AppLaunchObserver;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/htc/app/AppLaunchObserver$Transport;->mAppLaunchObserver:Lcom/htc/app/AppLaunchObserver;

    invoke-virtual {v0, p1}, Lcom/htc/app/AppLaunchObserver;->dispatchChange(Lcom/android/internal/os/HtcAppUsageStats;)V

    .line 55
    :cond_0
    return-void
.end method

.method public releaseHtcAppLaunchObserver()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/AppLaunchObserver$Transport;->mAppLaunchObserver:Lcom/htc/app/AppLaunchObserver;

    .line 59
    return-void
.end method
