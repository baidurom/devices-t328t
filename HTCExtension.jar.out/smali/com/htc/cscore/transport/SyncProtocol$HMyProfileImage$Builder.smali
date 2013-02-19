.class public final Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28966
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$54200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28961
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$54300()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 1

    .prologue
    .line 28961
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 29040
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29041
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 29044
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 3

    .prologue
    .line 28969
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;-><init>()V

    .line 28970
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    .line 28971
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 1

    .prologue
    .line 29032
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29033
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 29035
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 28961
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 28961
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 3

    .prologue
    .line 29052
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    if-nez v1, :cond_0

    .line 29053
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29056
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    .line 29057
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    .line 29058
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 28961
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 28961
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2

    .prologue
    .line 28987
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    if-nez v0, :cond_0

    .line 28988
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28991
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    .line 28992
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 28961
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 28961
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 28961
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearContentType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2

    .prologue
    .line 29213
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasContentType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$54502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 29214
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getContentType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->contentType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$54602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Ljava/lang/String;)Ljava/lang/String;

    .line 29215
    return-object p0
.end method

.method public clearData()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2

    .prologue
    .line 29250
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$54702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 29251
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->data_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$54802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 29252
    return-object p0
.end method

.method public clearFileType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2

    .prologue
    .line 29287
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasFileType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$54902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 29288
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getFileType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->fileType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Ljava/lang/String;)Ljava/lang/String;

    .line 29289
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2

    .prologue
    .line 29348
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 29349
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 29350
    return-object p0
.end method

.method public clearMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2

    .prologue
    .line 29409
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 29410
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .line 29411
    return-object p0
.end method

.method public clearMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2

    .prologue
    .line 29470
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 29471
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 29472
    return-object p0
.end method

.method public clearName()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2

    .prologue
    .line 29507
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 29508
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Ljava/lang/String;)Ljava/lang/String;

    .line 29509
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 3

    .prologue
    .line 29541
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 29542
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$56002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;J)J

    .line 29543
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2

    .prologue
    .line 29000
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 28961
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 28961
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 28961
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 28961
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 28961
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 28961
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29194
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/htc/protobuf/ByteString;
    .locals 1

    .prologue
    .line 29231
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 1

    .prologue
    .line 29017
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 28961
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 28961
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 29009
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29268
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getFileType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 29305
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1

    .prologue
    .line 29366
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 29427
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29488
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 29525
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasContentType()Z
    .locals 1

    .prologue
    .line 29187
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasContentType()Z

    move-result v0

    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 29224
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasData()Z

    move-result v0

    return v0
.end method

.method public hasFileType()Z
    .locals 1

    .prologue
    .line 29261
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasFileType()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 29298
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasMyProfile()Z
    .locals 1

    .prologue
    .line 29359
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfile()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileId()Z
    .locals 1

    .prologue
    .line 29420
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfileId()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 29481
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 29518
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 1

    .prologue
    .line 28979
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 28961
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 29025
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 29075
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 29101
    :goto_0
    return-object p0

    .line 29076
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasContentType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29077
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setContentType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    .line 29079
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29080
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    .line 29082
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasFileType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29083
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getFileType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    .line 29085
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29086
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    .line 29088
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfile()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 29089
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeMyProfile(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    .line 29091
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29092
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    .line 29094
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasName()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 29095
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    .line 29097
    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 29098
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    .line 29100
    :cond_8
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29112
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 29116
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 29117
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 29122
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 29124
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 29125
    :goto_1
    return-object p0

    .line 29119
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 29130
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    goto :goto_0

    .line 29134
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    goto :goto_0

    .line 29138
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setContentType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    goto :goto_0

    .line 29142
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBytes()Lcom/htc/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    goto :goto_0

    .line 29146
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    goto :goto_0

    .line 29150
    :sswitch_6
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 29151
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 29152
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 29154
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 29155
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    goto :goto_0

    .line 29159
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_7
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 29160
    .restart local v0       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->hasMyProfileId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 29161
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 29163
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 29164
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    goto :goto_0

    .line 29168
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_8
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    .line 29169
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->hasMyProfile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 29170
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->getMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 29172
    :cond_3
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 29173
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->setMyProfile(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    goto/16 :goto_0

    .line 29117
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xee2 -> :sswitch_1
        0x1088 -> :sswitch_2
        0x15a2 -> :sswitch_3
        0x1e72 -> :sswitch_4
        0x223a -> :sswitch_5
        0x2892 -> :sswitch_6
        0x2d3a -> :sswitch_7
        0x3f2a -> :sswitch_8
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 29066
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    if-eqz v0, :cond_0

    .line 29067
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object p0

    .line 29070
    .end local p0
    :goto_0
    return-object p0

    .line 29069
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28961
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28961
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28961
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28961
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28961
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28961
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 29333
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 29335
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 29340
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 29341
    return-object p0

    .line 29338
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeMyProfile(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 29394
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 29396
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .line 29401
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 29402
    return-object p0

    .line 29399
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    goto :goto_0
.end method

.method public mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 29455
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 29457
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 29462
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 29463
    return-object p0

    .line 29460
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 29201
    if-nez p1, :cond_0

    .line 29202
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29204
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasContentType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$54502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 29205
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->contentType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$54602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Ljava/lang/String;)Ljava/lang/String;

    .line 29206
    return-object p0
.end method

.method public setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 29238
    if-nez p1, :cond_0

    .line 29239
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29241
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$54702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 29242
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->data_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$54802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 29243
    return-object p0
.end method

.method public setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 29275
    if-nez p1, :cond_0

    .line 29276
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29278
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasFileType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$54902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 29279
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->fileType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Ljava/lang/String;)Ljava/lang/String;

    .line 29280
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 29324
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 29325
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 29326
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 29312
    if-nez p1, :cond_0

    .line 29313
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29315
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 29316
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 29317
    return-object p0
.end method

.method public setMyProfile(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 29385
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 29386
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .line 29387
    return-object p0
.end method

.method public setMyProfile(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 29373
    if-nez p1, :cond_0

    .line 29374
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29376
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 29377
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .line 29378
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 29446
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 29447
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 29448
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 29434
    if-nez p1, :cond_0

    .line 29435
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29437
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 29438
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 29439
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 29495
    if-nez p1, :cond_0

    .line 29496
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29498
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 29499
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Ljava/lang/String;)Ljava/lang/String;

    .line 29500
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 29532
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$55902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z

    .line 29533
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->access$56002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;J)J

    .line 29534
    return-object p0
.end method
