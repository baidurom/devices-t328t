.class public final Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32509
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$61200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 32504
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$61300()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 1

    .prologue
    .line 32504
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 32583
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32584
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 32587
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 3

    .prologue
    .line 32512
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;-><init>()V

    .line 32513
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    .line 32514
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    .locals 1

    .prologue
    .line 32575
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32576
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 32578
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 32504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 32504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    .locals 3

    .prologue
    .line 32595
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    if-nez v1, :cond_0

    .line 32596
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32599
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    .line 32600
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    .line 32601
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 32504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 32504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2

    .prologue
    .line 32530
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    if-nez v0, :cond_0

    .line 32531
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32534
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    .line 32535
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 32504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 32504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 32504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCanonicalPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 3

    .prologue
    .line 32741
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasCanonicalPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$61502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    .line 32742
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->canonicalPhoneNumber_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$61602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;J)J

    .line 32743
    return-object p0
.end method

.method public clearDisplayPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2

    .prologue
    .line 32778
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasDisplayPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$61702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    .line 32779
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getDisplayPhoneNumber()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->displayPhoneNumber_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$61802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    .line 32780
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2

    .prologue
    .line 32839
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$61902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    .line 32840
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 32841
    return-object p0
.end method

.method public clearMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2

    .prologue
    .line 32900
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    .line 32901
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 32902
    return-object p0
.end method

.method public clearPhoneNumberType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32934
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasPhoneNumberType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    .line 32935
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->phoneNumberType_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;I)I

    .line 32936
    return-object p0
.end method

.method public clearPriority()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32968
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    .line 32969
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->priority_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;I)I

    .line 32970
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 3

    .prologue
    .line 33002
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    .line 33003
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;J)J

    .line 33004
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2

    .prologue
    .line 32543
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 32504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 32504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 32504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 32504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 32504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

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
    .line 32504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalPhoneNumber()J
    .locals 2

    .prologue
    .line 32725
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getCanonicalPhoneNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    .locals 1

    .prologue
    .line 32560
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 32504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 32504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 32552
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32759
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getDisplayPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 32796
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 32857
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumberType()I
    .locals 1

    .prologue
    .line 32918
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getPhoneNumberType()I

    move-result v0

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 32952
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getPriority()I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 32986
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCanonicalPhoneNumber()Z
    .locals 1

    .prologue
    .line 32718
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasCanonicalPhoneNumber()Z

    move-result v0

    return v0
.end method

.method public hasDisplayPhoneNumber()Z
    .locals 1

    .prologue
    .line 32752
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasDisplayPhoneNumber()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 32789
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileId()Z
    .locals 1

    .prologue
    .line 32850
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasMyProfileId()Z

    move-result v0

    return v0
.end method

.method public hasPhoneNumberType()Z
    .locals 1

    .prologue
    .line 32911
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasPhoneNumberType()Z

    move-result v0

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 32945
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasPriority()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 32979
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    .locals 1

    .prologue
    .line 32522
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 32504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 32568
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 32618
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 32641
    :goto_0
    return-object p0

    .line 32619
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasCanonicalPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32620
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getCanonicalPhoneNumber()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->setCanonicalPhoneNumber(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    .line 32622
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasDisplayPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32623
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getDisplayPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->setDisplayPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    .line 32625
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32626
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    .line 32628
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 32629
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    .line 32631
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasPhoneNumberType()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 32632
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getPhoneNumberType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->setPhoneNumberType(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    .line 32634
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32635
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    .line 32637
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 32638
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    .line 32640
    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32652
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 32656
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 32657
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 32662
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 32664
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 32665
    :goto_1
    return-object p0

    .line 32659
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 32670
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    goto :goto_0

    .line 32674
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->setDisplayPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    goto :goto_0

    .line 32678
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->setCanonicalPhoneNumber(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    goto :goto_0

    .line 32682
    :sswitch_4
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 32683
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 32684
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 32686
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 32687
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    goto :goto_0

    .line 32691
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_5
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 32692
    .restart local v0       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->hasMyProfileId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 32693
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 32695
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 32696
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    goto :goto_0

    .line 32700
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    goto :goto_0

    .line 32704
    :sswitch_7
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->setPhoneNumberType(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    goto :goto_0

    .line 32657
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1088 -> :sswitch_1
        0x1f5a -> :sswitch_2
        0x2640 -> :sswitch_3
        0x2892 -> :sswitch_4
        0x2d3a -> :sswitch_5
        0x2eb0 -> :sswitch_6
        0x3048 -> :sswitch_7
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 32609
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    if-eqz v0, :cond_0

    .line 32610
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object p0

    .line 32613
    .end local p0
    :goto_0
    return-object p0

    .line 32612
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
    .line 32504
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32504
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

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
    .line 32504
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

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
    .line 32504
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32504
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

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
    .line 32504
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 32824
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 32826
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 32831
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$61902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    .line 32832
    return-object p0

    .line 32829
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 32885
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 32887
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 32892
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    .line 32893
    return-object p0

    .line 32890
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setCanonicalPhoneNumber(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 32732
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasCanonicalPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$61502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    .line 32733
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->canonicalPhoneNumber_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$61602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;J)J

    .line 32734
    return-object p0
.end method

.method public setDisplayPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 32766
    if-nez p1, :cond_0

    .line 32767
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32769
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasDisplayPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$61702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    .line 32770
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->displayPhoneNumber_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$61802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    .line 32771
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 32815
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$61902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    .line 32816
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 32817
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 32803
    if-nez p1, :cond_0

    .line 32804
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32806
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$61902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    .line 32807
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 32808
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 32876
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    .line 32877
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 32878
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 32864
    if-nez p1, :cond_0

    .line 32865
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32867
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    .line 32868
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 32869
    return-object p0
.end method

.method public setPhoneNumberType(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 32925
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasPhoneNumberType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    .line 32926
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->phoneNumberType_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;I)I

    .line 32927
    return-object p0
.end method

.method public setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 32959
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    .line 32960
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->priority_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;I)I

    .line 32961
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 32993
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    .line 32994
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;J)J

    .line 32995
    return-object p0
.end method
