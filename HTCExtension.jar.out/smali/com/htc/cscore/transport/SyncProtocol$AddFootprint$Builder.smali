.class public final Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10893
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$20900(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10888
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$21000()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;
    .locals 1

    .prologue
    .line 10888
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10967
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10968
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 10971
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;
    .locals 3

    .prologue
    .line 10896
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;-><init>()V

    .line 10897
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    .line 10898
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    .locals 1

    .prologue
    .line 10959
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10960
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 10962
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 10888
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10888
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    .locals 3

    .prologue
    .line 10979
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    if-nez v1, :cond_0

    .line 10980
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10983
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    .line 10984
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    .line 10985
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 10888
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10888
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;
    .locals 2

    .prologue
    .line 10914
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    if-nez v0, :cond_0

    .line 10915
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10918
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    .line 10919
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 10888
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10888
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10888
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFootprint()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;
    .locals 2

    .prologue
    .line 11105
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->hasFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->access$21202(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;Z)Z

    .line 11106
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->footprint_:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->access$21302(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    .line 11107
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;
    .locals 2

    .prologue
    .line 10927
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 10888
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 10888
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 10888
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10888
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10888
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

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
    .line 10888
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    .locals 1

    .prologue
    .line 10944
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 10888
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10888
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 10936
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFootprint()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1

    .prologue
    .line 11062
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->getFootprint()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public hasFootprint()Z
    .locals 1

    .prologue
    .line 11055
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->hasFootprint()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    .locals 1

    .prologue
    .line 10906
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 10888
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 10952
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFootprint(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 11090
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->hasFootprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->footprint_:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->access$21300(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11092
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->footprint_:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->access$21300(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->footprint_:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->access$21302(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    .line 11097
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->hasFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->access$21202(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;Z)Z

    .line 11098
    return-object p0

    .line 11095
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->footprint_:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->access$21302(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 11002
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 11007
    :goto_0
    return-object p0

    .line 11003
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->hasFootprint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11004
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->getFootprint()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->mergeFootprint(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    .line 11006
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11018
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 11022
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 11023
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 11028
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 11030
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 11031
    :goto_1
    return-object p0

    .line 11025
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 11036
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    .line 11037
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->hasFootprint()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11038
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->getFootprint()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    .line 11040
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 11041
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->setFootprint(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    goto :goto_0

    .line 11023
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x25a -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 10993
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    if-eqz v0, :cond_0

    .line 10994
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object p0

    .line 10997
    .end local p0
    :goto_0
    return-object p0

    .line 10996
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
    .line 10888
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10888
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

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
    .line 10888
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

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
    .line 10888
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10888
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

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
    .line 10888
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFootprint(Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 11081
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->hasFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->access$21202(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;Z)Z

    .line 11082
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->footprint_:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->access$21302(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    .line 11083
    return-object p0
.end method

.method public setFootprint(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 11069
    if-nez p1, :cond_0

    .line 11070
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11072
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->hasFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->access$21202(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;Z)Z

    .line 11073
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->footprint_:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->access$21302(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    .line 11074
    return-object p0
.end method
