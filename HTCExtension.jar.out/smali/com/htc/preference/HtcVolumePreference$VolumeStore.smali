.class public Lcom/htc/preference/HtcVolumePreference$VolumeStore;
.super Ljava/lang/Object;
.source "HtcVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/preference/HtcVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeStore"
.end annotation


# instance fields
.field public originalVolume:I

.field public volume:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 218
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput v0, p0, Lcom/htc/preference/HtcVolumePreference$VolumeStore;->volume:I

    .line 220
    iput v0, p0, Lcom/htc/preference/HtcVolumePreference$VolumeStore;->originalVolume:I

    return-void
.end method
