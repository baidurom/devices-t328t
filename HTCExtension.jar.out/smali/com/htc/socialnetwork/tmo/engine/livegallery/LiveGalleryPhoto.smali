.class public Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;
.super Ljava/lang/Object;
.source "LiveGalleryPhoto.java"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mPhotoPath:Ljava/lang/String;

.field private mPhotoUri:Ljava/lang/String;

.field private mPublishTime:J

.field private mThumbnailPath:Ljava/lang/String;

.field private mThumbnailUri:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUpdateTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GetDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public GetPhotoPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mPhotoPath:Ljava/lang/String;

    return-object v0
.end method

.method public GetPhotoUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mPhotoUri:Ljava/lang/String;

    return-object v0
.end method

.method public GetThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public GetThumbnailUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mThumbnailUri:Ljava/lang/String;

    return-object v0
.end method

.method public GetTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public SetDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mDescription:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public SetPhotoPath(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mPhotoPath:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public SetPhotoUri(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mPhotoUri:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public SetThumbnailUri(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mThumbnailUri:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public SetThumnailPath(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mThumbnailPath:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public SetTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mTitle:Ljava/lang/String;

    .line 35
    return-void
.end method
