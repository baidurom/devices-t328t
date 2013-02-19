.class public Lcom/htc/wrap/android/content/pm/HtcWrapPackageParser;
.super Landroid/content/pm/PackageParser;
.source "HtcWrapPackageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/content/pm/HtcWrapPackageParser$HtcPackage;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "archiveSourcePath"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z
    .locals 1
    .parameter "pkg"
    .parameter "flags"

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z

    move-result v0

    return v0
.end method

.method public parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .parameter "sourceFile"
    .parameter "destCodePath"
    .parameter "metrics"
    .parameter "flags"

    .prologue
    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method
