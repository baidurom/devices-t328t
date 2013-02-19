.class public Lcom/htc/opensense/album/plugin/MediumData;
.super Lcom/htc/opensense/social/data/Medium;
.source "MediumData.java"


# static fields
.field public static final MEDIUM_TYPE_PHOTO:I = 0x0

.field public static final MEDIUM_TYPE_VIDEO:I = 0x1


# instance fields
.field protected mThumbnailUrlHeader:Ljava/lang/String;

.field protected mUrlHeader:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10
    .parameter "mid"
    .parameter "name"
    .parameter "url"
    .parameter "thumbUrl"
    .parameter "webLink"
    .parameter "description"
    .parameter "createTime"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/htc/opensense/social/data/Medium;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/plugin/MediumData;->mUrlHeader:Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/plugin/MediumData;->mThumbnailUrlHeader:Ljava/lang/String;

    .line 36
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/htc/opensense/album/plugin/MediumData;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 1
    .parameter "mid"
    .parameter "name"
    .parameter "url"
    .parameter "thumbUrl"
    .parameter "webLink"
    .parameter "description"
    .parameter "createTime"
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lcom/htc/opensense/social/data/Medium;-><init>()V

    .line 115
    iput-object v0, p0, Lcom/htc/opensense/album/plugin/MediumData;->mUrlHeader:Ljava/lang/String;

    .line 120
    iput-object v0, p0, Lcom/htc/opensense/album/plugin/MediumData;->mThumbnailUrlHeader:Ljava/lang/String;

    .line 53
    invoke-direct/range {p0 .. p9}, Lcom/htc/opensense/album/plugin/MediumData;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 54
    return-void
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0
    .parameter "mid"
    .parameter "name"
    .parameter "url"
    .parameter "thumbUrl"
    .parameter "webLink"
    .parameter "description"
    .parameter "createTime"
    .parameter "type"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/opensense/social/data/Medium;->id:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/htc/opensense/social/data/Medium;->name:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/htc/opensense/social/data/Medium;->url:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/htc/opensense/social/data/Medium;->thumbnailUrl:Ljava/lang/String;

    .line 65
    iput-wide p7, p0, Lcom/htc/opensense/social/data/Medium;->createTime:J

    .line 66
    iput-object p5, p0, Lcom/htc/opensense/social/data/Medium;->webLink:Ljava/lang/String;

    .line 67
    iput-object p6, p0, Lcom/htc/opensense/social/data/Medium;->description:Ljava/lang/String;

    .line 68
    iput p9, p0, Lcom/htc/opensense/social/data/Medium;->type:I

    .line 69
    return-void
.end method


# virtual methods
.method public getThumbnailUrlHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/opensense/album/plugin/MediumData;->mThumbnailUrlHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/opensense/album/plugin/MediumData;->mUrlHeader:Ljava/lang/String;

    return-object v0
.end method

.method public setThumbnailUrlHeader(Ljava/lang/String;)V
    .locals 0
    .parameter "szUrlHeader"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/opensense/album/plugin/MediumData;->mThumbnailUrlHeader:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setUrlHeader(Ljava/lang/String;)V
    .locals 0
    .parameter "szUrlHeader"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/htc/opensense/album/plugin/MediumData;->mUrlHeader:Ljava/lang/String;

    .line 79
    return-void
.end method
