.class public final Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4822
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$8200(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4817
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8300()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;
    .locals 1

    .prologue
    .line 4817
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4896
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4897
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 4900
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;
    .locals 3

    .prologue
    .line 4825
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;-><init>()V

    .line 4826
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    .line 4827
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    .locals 1

    .prologue
    .line 4888
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4889
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4891
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 4817
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4817
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    .locals 3

    .prologue
    .line 4908
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    if-nez v1, :cond_0

    .line 4909
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4912
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    .line 4913
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    .line 4914
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 4817
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4817
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;
    .locals 2

    .prologue
    .line 4843
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    if-nez v0, :cond_0

    .line 4844
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4847
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    .line 4848
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4817
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4817
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4817
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearPersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;
    .locals 2

    .prologue
    .line 5034
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->hasPersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->access$8502(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;Z)Z

    .line 5035
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->access$8602(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    .line 5036
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;
    .locals 2

    .prologue
    .line 4856
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4817
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4817
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 4817
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4817
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4817
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

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
    .line 4817
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    .locals 1

    .prologue
    .line 4873
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 4817
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4817
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4865
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    .locals 1

    .prologue
    .line 4991
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->getPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public hasPersonImage()Z
    .locals 1

    .prologue
    .line 4984
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->hasPersonImage()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    .locals 1

    .prologue
    .line 4835
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 4817
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 4881
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 4931
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 4936
    :goto_0
    return-object p0

    .line 4932
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->hasPersonImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4933
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->getPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->mergePersonImage(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    .line 4935
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4947
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 4951
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 4952
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 4957
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4959
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 4960
    :goto_1
    return-object p0

    .line 4954
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 4965
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    .line 4966
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->hasPersonImage()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4967
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->getPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    .line 4969
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 4970
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->setPersonImage(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    goto :goto_0

    .line 4952
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1192 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 4922
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    if-eqz v0, :cond_0

    .line 4923
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object p0

    .line 4926
    .end local p0
    :goto_0
    return-object p0

    .line 4925
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
    .line 4817
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4817
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

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
    .line 4817
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

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
    .line 4817
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4817
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

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
    .line 4817
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergePersonImage(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5019
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->hasPersonImage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->access$8600(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5021
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->access$8600(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->access$8602(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    .line 5026
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->hasPersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->access$8502(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;Z)Z

    .line 5027
    return-object p0

    .line 5024
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->access$8602(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    goto :goto_0
.end method

.method public setPersonImage(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 5010
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->hasPersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->access$8502(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;Z)Z

    .line 5011
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->access$8602(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    .line 5012
    return-object p0
.end method

.method public setPersonImage(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4998
    if-nez p1, :cond_0

    .line 4999
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5001
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->hasPersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->access$8502(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;Z)Z

    .line 5002
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->access$8602(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    .line 5003
    return-object p0
.end method
