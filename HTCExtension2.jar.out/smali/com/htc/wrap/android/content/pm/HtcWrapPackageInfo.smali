.class public Lcom/htc/wrap/android/content/pm/HtcWrapPackageInfo;
.super Ljava/lang/Object;
.source "HtcWrapPackageInfo.java"


# static fields
.field public static final INSTALL_LOCATION_INTERNAL_ONLY:I = 0x1

.field public static final INSTALL_LOCATION_UNSPECIFIED:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstallLocation(Landroid/content/pm/PackageInfo;)I
    .locals 1
    .parameter "pi"

    .prologue
    .line 13
    iget v0, p0, Landroid/content/pm/PackageInfo;->installLocation:I

    return v0
.end method
