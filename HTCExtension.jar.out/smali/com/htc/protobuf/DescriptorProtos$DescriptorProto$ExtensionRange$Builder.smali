.class public final Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2009
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2004
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    .locals 1

    .prologue
    .line 2004
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2079
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2080
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2083
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    .locals 3

    .prologue
    .line 2012
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;-><init>()V

    .line 2013
    .local v0, builder:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    new-instance v1, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    .line 2014
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1

    .prologue
    .line 2071
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2072
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2074
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2004
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2004
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 3

    .prologue
    .line 2091
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    if-nez v1, :cond_0

    .line 2092
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2095
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    .line 2096
    .local v0, returnMe:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    .line 2097
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2004
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2004
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2004
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    .locals 2

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    if-nez v0, :cond_0

    .line 2027
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2030
    :cond_0
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    .line 2031
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2004
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2004
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearEnd()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2226
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->hasEnd:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->access$3102(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;Z)Z

    .line 2227
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->end_:I
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->access$3202(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;I)I

    .line 2228
    return-object p0
.end method

.method public clearStart()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2192
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->hasStart:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->access$2902(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;Z)Z

    .line 2193
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->start_:I
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->access$3002(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;I)I

    .line 2194
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2004
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2004
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    .locals 2

    .prologue
    .line 2039
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2004
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2004
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2004
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

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
    .line 2004
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1

    .prologue
    .line 2056
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2004
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2004
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2048
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 2210
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getEnd()I

    move-result v0

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 2176
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getStart()I

    move-result v0

    return v0
.end method

.method public hasEnd()Z
    .locals 1

    .prologue
    .line 2203
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->hasEnd()Z

    move-result v0

    return v0
.end method

.method public hasStart()Z
    .locals 1

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->hasStart()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1

    .prologue
    .line 2018
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2004
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->isInitialized()Z

    move-result v0

    return v0
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
    .line 2004
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2004
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

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
    .line 2004
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2133
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 2137
    .local v1, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2138
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2143
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2145
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 2146
    :goto_1
    return-object p0

    .line 2140
    :sswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 2151
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->setStart(I)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    goto :goto_0

    .line 2155
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->setEnd(I)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    goto :goto_0

    .line 2138
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 2114
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2122
    :goto_0
    return-object p0

    .line 2115
    :cond_0
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2116
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->setStart(I)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    .line 2118
    :cond_1
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2119
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getEnd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->setEnd(I)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    .line 2121
    :cond_2
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 2105
    instance-of v0, p1, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    if-eqz v0, :cond_0

    .line 2106
    check-cast p1, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object p0

    .line 2109
    .end local p0
    :goto_0
    return-object p0

    .line 2108
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;

    goto :goto_0
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
    .line 2004
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2004
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

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
    .line 2004
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setEnd(I)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2217
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->hasEnd:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->access$3102(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;Z)Z

    .line 2218
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->end_:I
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->access$3202(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;I)I

    .line 2219
    return-object p0
.end method

.method public setStart(I)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2183
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->hasStart:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->access$2902(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;Z)Z

    .line 2184
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->start_:I
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->access$3002(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;I)I

    .line 2185
    return-object p0
.end method
