.class public Lcom/htc/wrap/android/webkit/HtcWrapGeolocationPermissions;
.super Ljava/lang/Object;
.source "HtcWrapGeolocationPermissions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disAllow(Landroid/webkit/GeolocationPermissions;Ljava/lang/String;)V
    .locals 0
    .parameter "gp"
    .parameter "origin"

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Landroid/webkit/GeolocationPermissions;->disAllow(Ljava/lang/String;)V

    .line 8
    return-void
.end method
