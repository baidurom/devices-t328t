.class public Lcom/htc/opensense/album/plugin/PersonData;
.super Lcom/htc/opensense/social/data/Person;
.source "PersonData.java"


# instance fields
.field protected mAvatarUrlHeader:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pid"
    .parameter "userName"
    .parameter "displayName"
    .parameter "avatarUrl"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/htc/opensense/social/data/Person;-><init>(Ljava/lang/String;)V

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense/album/plugin/PersonData;->mAvatarUrlHeader:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/htc/opensense/social/data/Person;->fullname:Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/PersonData;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v0

    .line 24
    .local v0, profile:Lcom/htc/opensense/social/data/Profile;
    if-eqz v0, :cond_0

    .line 26
    iput-object p2, v0, Lcom/htc/opensense/social/data/Profile;->user_name:Ljava/lang/String;

    .line 27
    iput-object p3, v0, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    .line 28
    iput-object p4, v0, Lcom/htc/opensense/social/data/Profile;->user_avatar:Ljava/lang/String;

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public getAvatarUrlHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/opensense/album/plugin/PersonData;->mAvatarUrlHeader:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatarUrlHeader(Ljava/lang/String;)V
    .locals 0
    .parameter "szUrlHeader"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/opensense/album/plugin/PersonData;->mAvatarUrlHeader:Ljava/lang/String;

    .line 44
    return-void
.end method
