.class public Lcom/htc/wrap/android/content/HtcWrapContentProvider;
.super Ljava/lang/Object;
.source "HtcWrapContentProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIContentProvider(Landroid/content/ContentProvider;)Landroid/content/HtcIfIContentProvider;
    .locals 1
    .parameter "cp"

    .prologue
    .line 14
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getIContentProvider()Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method
