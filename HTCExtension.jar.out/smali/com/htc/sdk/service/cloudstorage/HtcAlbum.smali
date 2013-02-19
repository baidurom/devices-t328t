.class public abstract Lcom/htc/sdk/service/cloudstorage/HtcAlbum;
.super Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
.source "HtcAlbum.java"


# instance fields
.field public coverImage:Lcom/htc/sdk/service/cloudstorage/HtcPhoto;

.field public photoCount:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCoverImage()Lcom/htc/sdk/service/cloudstorage/HtcPhoto;
.end method

.method public abstract getPhotoCount()J
.end method

.method public abstract setCoverImage(Lcom/htc/sdk/service/cloudstorage/HtcPhoto;)V
.end method

.method public abstract setPhotoCount(J)V
.end method
