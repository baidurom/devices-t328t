.class public final Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "ImmediateModeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1557
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1552
    invoke-direct {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;
    .locals 1

    .prologue
    .line 1552
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->create()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1631
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1632
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1635
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;
    .locals 3

    .prologue
    .line 1560
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;-><init>()V

    .line 1561
    .local v0, builder:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;
    new-instance v1, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;-><init>(Lcom/htc/cscore/transport/ImmediateModeProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    .line 1562
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    .locals 1

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1624
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1626
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1552
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->build()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1552
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->build()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    .locals 3

    .prologue
    .line 1643
    iget-object v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    if-nez v1, :cond_0

    .line 1644
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1647
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    .line 1648
    .local v0, returnMe:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    .line 1649
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1552
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1552
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;
    .locals 2

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    if-nez v0, :cond_0

    .line 1579
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1582
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;-><init>(Lcom/htc/cscore/transport/ImmediateModeProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    .line 1583
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1552
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->clear()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1552
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->clear()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1552
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->clear()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearInterval()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1737
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->hasInterval:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->access$2802(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;Z)Z

    .line 1738
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->interval_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->access$2902(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;I)I

    .line 1739
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;
    .locals 2

    .prologue
    .line 1591
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->create()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->mergeFrom(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1552
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1552
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1552
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1552
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1552
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

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
    .line 1552
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    .locals 1

    .prologue
    .line 1608
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->getDefaultInstance()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1552
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1552
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1600
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInterval()I
    .locals 1

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->getInterval()I

    move-result v0

    return v0
.end method

.method public hasInterval()Z
    .locals 1

    .prologue
    .line 1714
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->hasInterval()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    .locals 1

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1552
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->internalGetResult()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1666
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->getDefaultInstance()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1671
    :goto_0
    return-object p0

    .line 1667
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->hasInterval()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1668
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->getInterval()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->setInterval(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    .line 1670
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1682
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 1686
    .local v1, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1687
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1692
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1694
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 1695
    :goto_1
    return-object p0

    .line 1689
    :sswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 1700
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->setInterval(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    goto :goto_0

    .line 1687
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1657
    instance-of v0, p1, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    if-eqz v0, :cond_0

    .line 1658
    check-cast p1, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->mergeFrom(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object p0

    .line 1661
    .end local p0
    :goto_0
    return-object p0

    .line 1660
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
    .line 1552
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1552
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

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
    .line 1552
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

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
    .line 1552
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1552
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

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
    .line 1552
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setInterval(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->hasInterval:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->access$2802(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;Z)Z

    .line 1729
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->interval_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->access$2902(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;I)I

    .line 1730
    return-object p0
.end method
