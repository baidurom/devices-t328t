.class public final Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45755
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$86700(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 45750
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$86800()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 1

    .prologue
    .line 45750
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 45829
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45830
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 45833
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 3

    .prologue
    .line 45758
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;-><init>()V

    .line 45759
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    .line 45760
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    .locals 1

    .prologue
    .line 45821
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45822
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 45824
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 45750
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 45750
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    .locals 3

    .prologue
    .line 45841
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    if-nez v1, :cond_0

    .line 45842
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45845
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    .line 45846
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    .line 45847
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 45750
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 45750
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2

    .prologue
    .line 45776
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    if-nez v0, :cond_0

    .line 45777
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45780
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    .line 45781
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 45750
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 45750
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 45750
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2

    .prologue
    .line 45998
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87002(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z

    .line 45999
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87102(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 46000
    return-object p0
.end method

.method public clearPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2

    .prologue
    .line 46059
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPeopleGroupId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87202(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z

    .line 46060
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87302(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 46061
    return-object p0
.end method

.method public clearPersonId()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2

    .prologue
    .line 46120
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87402(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z

    .line 46121
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87502(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 46122
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 3

    .prologue
    .line 46154
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87602(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z

    .line 46155
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87702(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;J)J

    .line 46156
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2

    .prologue
    .line 45789
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 45750
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 45750
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 45750
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 45750
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 45750
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

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
    .line 45750
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    .locals 1

    .prologue
    .line 45806
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 45750
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 45750
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 45798
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 45955
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 46016
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 46077
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 46138
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 45948
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasPeopleGroupId()Z
    .locals 1

    .prologue
    .line 46009
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPeopleGroupId()Z

    move-result v0

    return v0
.end method

.method public hasPersonId()Z
    .locals 1

    .prologue
    .line 46070
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPersonId()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 46131
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    .locals 1

    .prologue
    .line 45768
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 45750
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 45814
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 45864
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 45878
    :goto_0
    return-object p0

    .line 45865
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45866
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    .line 45868
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPeopleGroupId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45869
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergePeopleGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    .line 45871
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45872
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    .line 45874
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 45875
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    .line 45877
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45889
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 45893
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 45894
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 45899
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 45901
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 45902
    :goto_1
    return-object p0

    .line 45896
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 45907
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    goto :goto_0

    .line 45911
    :sswitch_2
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 45912
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->hasPersonId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45913
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 45915
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 45916
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    goto :goto_0

    .line 45920
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 45921
    .restart local v0       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 45922
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 45924
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 45925
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    goto :goto_0

    .line 45929
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_4
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 45930
    .restart local v0       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->hasPeopleGroupId()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 45931
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->getPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 45933
    :cond_3
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 45934
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->setPeopleGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    goto :goto_0

    .line 45894
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1088 -> :sswitch_1
        0x2512 -> :sswitch_2
        0x2892 -> :sswitch_3
        0x3802 -> :sswitch_4
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 45855
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    if-eqz v0, :cond_0

    .line 45856
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object p0

    .line 45859
    .end local p0
    :goto_0
    return-object p0

    .line 45858
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
    .line 45750
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45750
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

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
    .line 45750
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

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
    .line 45750
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45750
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

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
    .line 45750
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 45983
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87100(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 45985
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87100(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87102(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 45990
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87002(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z

    .line 45991
    return-object p0

    .line 45988
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87102(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergePeopleGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 46044
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPeopleGroupId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87300(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 46046
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87300(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87302(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 46051
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPeopleGroupId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87202(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z

    .line 46052
    return-object p0

    .line 46049
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87302(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 46105
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87500(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 46107
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87500(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87502(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 46112
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87402(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z

    .line 46113
    return-object p0

    .line 46110
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87502(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 45974
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87002(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z

    .line 45975
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87102(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 45976
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 45962
    if-nez p1, :cond_0

    .line 45963
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45965
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87002(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z

    .line 45966
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87102(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 45967
    return-object p0
.end method

.method public setPeopleGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 46035
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPeopleGroupId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87202(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z

    .line 46036
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87302(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 46037
    return-object p0
.end method

.method public setPeopleGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 46023
    if-nez p1, :cond_0

    .line 46024
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 46026
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPeopleGroupId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87202(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z

    .line 46027
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87302(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 46028
    return-object p0
.end method

.method public setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 46096
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87402(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z

    .line 46097
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87502(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 46098
    return-object p0
.end method

.method public setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 46084
    if-nez p1, :cond_0

    .line 46085
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 46087
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87402(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z

    .line 46088
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87502(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 46089
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 46145
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87602(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z

    .line 46146
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87702(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;J)J

    .line 46147
    return-object p0
.end method
