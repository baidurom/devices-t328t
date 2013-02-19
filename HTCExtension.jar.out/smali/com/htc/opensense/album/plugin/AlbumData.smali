.class public Lcom/htc/opensense/album/plugin/AlbumData;
.super Lcom/htc/opensense/social/data/Album;
.source "AlbumData.java"


# instance fields
.field protected mCoverUrlHeader:Ljava/lang/String;

.field protected mPid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .parameter "aid"
    .parameter "pid"
    .parameter "photoCount"
    .parameter "name"
    .parameter "coverUrl"
    .parameter "webLink"
    .parameter "createTime"

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Lcom/htc/opensense/social/data/Album;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/htc/opensense/album/plugin/AlbumData;->mPid:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/htc/opensense/album/plugin/AlbumData;->mCoverUrlHeader:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    .line 24
    iput p3, p0, Lcom/htc/opensense/social/data/Album;->count:I

    .line 25
    iput-object p2, p0, Lcom/htc/opensense/album/plugin/AlbumData;->mPid:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/htc/opensense/social/data/Album;->coverUrl:Ljava/lang/String;

    .line 28
    iput-object p6, p0, Lcom/htc/opensense/social/data/Album;->webLink:Ljava/lang/String;

    .line 29
    iput-wide p7, p0, Lcom/htc/opensense/social/data/Album;->createTime:J

    .line 30
    return-void
.end method


# virtual methods
.method public getCoverUrlHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/opensense/album/plugin/AlbumData;->mCoverUrlHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/opensense/album/plugin/AlbumData;->mPid:Ljava/lang/String;

    return-object v0
.end method

.method public setCoverUrlHeader(Ljava/lang/String;)V
    .locals 0
    .parameter "szUrlHeader"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/htc/opensense/album/plugin/AlbumData;->mCoverUrlHeader:Ljava/lang/String;

    .line 49
    return-void
.end method
