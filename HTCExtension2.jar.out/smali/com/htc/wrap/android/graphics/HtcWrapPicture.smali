.class public Lcom/htc/wrap/android/graphics/HtcWrapPicture;
.super Landroid/graphics/Picture;
.source "HtcWrapPicture.java"


# direct methods
.method public constructor <init>(Landroid/graphics/Picture;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/graphics/Picture;-><init>(Landroid/graphics/Picture;)V

    .line 20
    return-void
.end method

.method public static writeToStream(Landroid/graphics/Picture;Ljava/io/OutputStream;Z)V
    .locals 0
    .parameter "pic"
    .parameter "stream"
    .parameter "isAll"

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Picture;->writeToStream(Ljava/io/OutputStream;Z)V

    .line 32
    return-void
.end method


# virtual methods
.method public writeToStream(Ljava/io/OutputStream;Z)V
    .locals 0
    .parameter "stream"
    .parameter "isAll"

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Landroid/graphics/Picture;->writeToStream(Ljava/io/OutputStream;Z)V

    .line 28
    return-void
.end method
