.class public Lcom/htc/wrap/android/content/pm/HtcWrapPackageParser$HtcPackage;
.super Ljava/lang/Object;
.source "HtcWrapPackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/content/pm/HtcWrapPackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtcPackage"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getmSharedUserId(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;
    .locals 1
    .parameter "pkg"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    return-object v0
.end method
