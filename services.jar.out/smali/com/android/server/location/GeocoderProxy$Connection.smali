.class Lcom/android/server/location/GeocoderProxy$Connection;
.super Ljava/lang/Object;
.source "GeocoderProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GeocoderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field private mProvider:Landroid/location/IGeocodeProvider;

.field final synthetic this$0:Lcom/android/server/location/GeocoderProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/location/GeocoderProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/server/location/GeocoderProxy$Connection;->this$0:Lcom/android/server/location/GeocoderProxy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/GeocoderProxy;Lcom/android/server/location/GeocoderProxy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/location/GeocoderProxy$Connection;-><init>(Lcom/android/server/location/GeocoderProxy;)V

    return-void
.end method


# virtual methods
.method public getProvider()Landroid/location/IGeocodeProvider;
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy$Connection;->mProvider:Landroid/location/IGeocodeProvider;

    monitor-exit p0

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "className"
    .parameter "service"

    .prologue
    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    invoke-static {p2}, Landroid/location/IGeocodeProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GeocoderProxy$Connection;->mProvider:Landroid/location/IGeocodeProvider;

    .line 84
    monitor-exit p0

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 88
    monitor-enter p0

    .line 89
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/location/GeocoderProxy$Connection;->mProvider:Landroid/location/IGeocodeProvider;

    .line 90
    monitor-exit p0

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
