.class public abstract Lcom/htc/sdk/service/cloudstorage/HtcPhoto;
.super Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
.source "HtcPhoto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;,
        Lcom/htc/sdk/service/cloudstorage/HtcPhoto$Comment;,
        Lcom/htc/sdk/service/cloudstorage/HtcPhoto$Tag;
    }
.end annotation


# instance fields
.field protected caption:Ljava/lang/String;

.field protected comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/sdk/service/cloudstorage/HtcPhoto$Comment;",
            ">;"
        }
    .end annotation
.end field

.field protected tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/sdk/service/cloudstorage/HtcPhoto$Tag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;-><init>()V

    .line 74
    return-void
.end method


# virtual methods
.method public abstract getCaption()Ljava/lang/String;
.end method

.method public abstract getComments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sdk/service/cloudstorage/HtcPhoto$Comment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLink(Lcom/htc/sdk/service/cloudstorage/HtcPhoto$ImageSize;)Ljava/lang/String;
.end method

.method public abstract getTags()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sdk/service/cloudstorage/HtcPhoto$Tag;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setCaption(Ljava/lang/String;)V
.end method

.method public abstract setComments(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sdk/service/cloudstorage/HtcPhoto$Comment;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTags(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sdk/service/cloudstorage/HtcPhoto$Tag;",
            ">;)V"
        }
    .end annotation
.end method
