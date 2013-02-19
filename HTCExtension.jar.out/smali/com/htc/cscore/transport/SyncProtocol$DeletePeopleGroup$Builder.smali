.class public final Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37662
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$71100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 37657
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$71200()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 1

    .prologue
    .line 37657
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 37736
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37737
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 37740
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 3

    .prologue
    .line 37665
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;-><init>()V

    .line 37666
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    .line 37667
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1

    .prologue
    .line 37728
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37729
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 37731
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 37657
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 37657
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 3

    .prologue
    .line 37748
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    if-nez v1, :cond_0

    .line 37749
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37752
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    .line 37753
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    .line 37754
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 37657
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 37657
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 2

    .prologue
    .line 37683
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    if-nez v0, :cond_0

    .line 37684
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37687
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    .line 37688
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 37657
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 37657
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 37657
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 2

    .prologue
    .line 37881
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasPeopleGroupId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71402(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;Z)Z

    .line 37882
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71502(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 37883
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 3

    .prologue
    .line 37915
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71602(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;Z)Z

    .line 37916
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71702(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;J)J

    .line 37917
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 2

    .prologue
    .line 37696
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 37657
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 37657
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 37657
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 37657
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 37657
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

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
    .line 37657
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1

    .prologue
    .line 37713
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 37657
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 37657
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 37705
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 37838
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 37899
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasPeopleGroupId()Z
    .locals 1

    .prologue
    .line 37831
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasPeopleGroupId()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 37892
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1

    .prologue
    .line 37675
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 37657
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 37721
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 37771
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 37779
    :goto_0
    return-object p0

    .line 37772
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasPeopleGroupId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37773
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergePeopleGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    .line 37775
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37776
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    .line 37778
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37790
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 37794
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 37795
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 37800
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 37802
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 37803
    :goto_1
    return-object p0

    .line 37797
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 37808
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    goto :goto_0

    .line 37812
    :sswitch_2
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 37813
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->hasPeopleGroupId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37814
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->getPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 37816
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 37817
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->setPeopleGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    goto :goto_0

    .line 37795
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3990 -> :sswitch_1
        0x3fba -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 37762
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    if-eqz v0, :cond_0

    .line 37763
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object p0

    .line 37766
    .end local p0
    :goto_0
    return-object p0

    .line 37765
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
    .line 37657
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37657
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

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
    .line 37657
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

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
    .line 37657
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37657
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

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
    .line 37657
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergePeopleGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 37866
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasPeopleGroupId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71500(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 37868
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71500(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71502(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 37873
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasPeopleGroupId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71402(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;Z)Z

    .line 37874
    return-object p0

    .line 37871
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71502(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setPeopleGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 37857
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasPeopleGroupId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71402(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;Z)Z

    .line 37858
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71502(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 37859
    return-object p0
.end method

.method public setPeopleGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 37845
    if-nez p1, :cond_0

    .line 37846
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37848
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasPeopleGroupId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71402(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;Z)Z

    .line 37849
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71502(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 37850
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 37906
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71602(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;Z)Z

    .line 37907
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->access$71702(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;J)J

    .line 37908
    return-object p0
.end method
