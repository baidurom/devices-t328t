.class public final Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35783
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$68600(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 35778
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$68700()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;
    .locals 1

    .prologue
    .line 35778
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 35857
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35858
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 35861
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;
    .locals 3

    .prologue
    .line 35786
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;-><init>()V

    .line 35787
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    .line 35788
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    .locals 1

    .prologue
    .line 35849
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35850
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 35852
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 35778
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 35778
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    .locals 3

    .prologue
    .line 35869
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    if-nez v1, :cond_0

    .line 35870
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35873
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    .line 35874
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    .line 35875
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 35778
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 35778
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;
    .locals 2

    .prologue
    .line 35804
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    if-nez v0, :cond_0

    .line 35805
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35808
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    .line 35809
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 35778
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 35778
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 35778
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;
    .locals 2

    .prologue
    .line 35995
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->hasPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->access$68902(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;Z)Z

    .line 35996
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->peopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->access$69002(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    .line 35997
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;
    .locals 2

    .prologue
    .line 35817
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 35778
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 35778
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 35778
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 35778
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 35778
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

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
    .line 35778
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    .locals 1

    .prologue
    .line 35834
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 35778
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 35778
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 35826
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1

    .prologue
    .line 35952
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->getPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public hasPeopleGroup()Z
    .locals 1

    .prologue
    .line 35945
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->hasPeopleGroup()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    .locals 1

    .prologue
    .line 35796
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 35778
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 35842
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 35892
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 35897
    :goto_0
    return-object p0

    .line 35893
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->hasPeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35894
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->getPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->mergePeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    .line 35896
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35908
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 35912
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 35913
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 35918
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 35920
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 35921
    :goto_1
    return-object p0

    .line 35915
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 35926
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    .line 35927
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->hasPeopleGroup()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35928
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->getPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    .line 35930
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 35931
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->setPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    goto :goto_0

    .line 35913
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x371a -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 35883
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    if-eqz v0, :cond_0

    .line 35884
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object p0

    .line 35887
    .end local p0
    :goto_0
    return-object p0

    .line 35886
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
    .line 35778
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35778
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

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
    .line 35778
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

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
    .line 35778
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35778
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

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
    .line 35778
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergePeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 35980
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->hasPeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->peopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->access$69000(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 35982
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->peopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->access$69000(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->peopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->access$69002(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    .line 35987
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->hasPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->access$68902(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;Z)Z

    .line 35988
    return-object p0

    .line 35985
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->peopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->access$69002(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    goto :goto_0
.end method

.method public setPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 35971
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->hasPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->access$68902(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;Z)Z

    .line 35972
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->peopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->access$69002(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    .line 35973
    return-object p0
.end method

.method public setPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 35959
    if-nez p1, :cond_0

    .line 35960
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35962
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->hasPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->access$68902(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;Z)Z

    .line 35963
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->peopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->access$69002(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    .line 35964
    return-object p0
.end method
