.class public Lcom/htc/wrap/android/media/HtcWrapMetadata;
.super Landroid/media/Metadata;
.source "HtcWrapMetadata.java"


# static fields
.field public static final PAUSE_AVAILABLE:I = 0x1

.field public static final SEEK_BACKWARD_AVAILABLE:I = 0x2

.field public static final SEEK_FORWARD_AVAILABLE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/media/Metadata;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoolean(I)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public has(I)Z
    .locals 1
    .parameter "metadataId"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/media/Metadata;->has(I)Z

    move-result v0

    return v0
.end method
