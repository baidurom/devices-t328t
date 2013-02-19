.class public Lcom/htc/wrap/android/content/pm/HtcWrapPackageParser_EX;
.super Ljava/lang/Object;
.source "HtcWrapPackageParser_EX.java"


# instance fields
.field private mPkg:Landroid/content/pm/PackageParser$Package;

.field private mPkgpr:Landroid/content/pm/PackageParser;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "archiveSourcePath"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/content/pm/PackageParser;

    invoke-direct {v0, p1}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/wrap/android/content/pm/HtcWrapPackageParser_EX;->mPkgpr:Landroid/content/pm/PackageParser;

    .line 27
    return-void
.end method


# virtual methods
.method public collectCertificates(I)Z
    .locals 2
    .parameter "flags"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/wrap/android/content/pm/HtcWrapPackageParser_EX;->mPkgpr:Landroid/content/pm/PackageParser;

    iget-object v1, p0, Lcom/htc/wrap/android/content/pm/HtcWrapPackageParser_EX;->mPkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z

    move-result v0

    return v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/wrap/android/content/pm/HtcWrapPackageParser_EX;->mPkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getSharedUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/wrap/android/content/pm/HtcWrapPackageParser_EX;->mPkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    return-object v0
.end method

.method public parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)V
    .locals 1
    .parameter "sourceFile"
    .parameter "destCodePath"
    .parameter "metrics"
    .parameter "flags"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/wrap/android/content/pm/HtcWrapPackageParser_EX;->mPkgpr:Landroid/content/pm/PackageParser;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/wrap/android/content/pm/HtcWrapPackageParser_EX;->mPkg:Landroid/content/pm/PackageParser$Package;

    .line 35
    return-void
.end method
