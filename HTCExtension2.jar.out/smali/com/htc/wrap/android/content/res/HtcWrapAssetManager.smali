.class public Lcom/htc/wrap/android/content/res/HtcWrapAssetManager;
.super Ljava/lang/Object;
.source "HtcWrapAssetManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CalladdAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I
    .locals 1
    .parameter "am"
    .parameter "path"

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getSystem()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method
