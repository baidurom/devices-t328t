.class public final Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12693
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$23900(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12688
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$24000()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;
    .locals 1

    .prologue
    .line 12688
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12767
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12768
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 12771
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;
    .locals 3

    .prologue
    .line 12696
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;-><init>()V

    .line 12697
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    .line 12698
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1

    .prologue
    .line 12759
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12760
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 12762
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 12688
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12688
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 3

    .prologue
    .line 12779
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    if-nez v1, :cond_0

    .line 12780
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12783
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    .line 12784
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    .line 12785
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 12688
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12688
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;
    .locals 2

    .prologue
    .line 12714
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    if-nez v0, :cond_0

    .line 12715
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12718
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    .line 12719
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 12688
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 12688
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12688
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFootprint()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;
    .locals 2

    .prologue
    .line 12905
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->hasFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->access$24202(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;Z)Z

    .line 12906
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->footprint_:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->access$24302(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    .line 12907
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;
    .locals 2

    .prologue
    .line 12727
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 12688
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 12688
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 12688
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 12688
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12688
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

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
    .line 12688
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1

    .prologue
    .line 12744
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 12688
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12688
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 12736
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFootprint()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1

    .prologue
    .line 12862
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->getFootprint()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public hasFootprint()Z
    .locals 1

    .prologue
    .line 12855
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->hasFootprint()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1

    .prologue
    .line 12706
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 12688
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 12752
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFootprint(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12890
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->hasFootprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->footprint_:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->access$24300(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 12892
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->footprint_:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->access$24300(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->footprint_:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->access$24302(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    .line 12897
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->hasFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->access$24202(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;Z)Z

    .line 12898
    return-object p0

    .line 12895
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->footprint_:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->access$24302(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 12802
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 12807
    :goto_0
    return-object p0

    .line 12803
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->hasFootprint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12804
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->getFootprint()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFootprint(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    .line 12806
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12818
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 12822
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 12823
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 12828
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 12830
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 12831
    :goto_1
    return-object p0

    .line 12825
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 12836
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    .line 12837
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->hasFootprint()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12838
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->getFootprint()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    .line 12840
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 12841
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->setFootprint(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    goto :goto_0

    .line 12823
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x25a -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 12793
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    if-eqz v0, :cond_0

    .line 12794
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object p0

    .line 12797
    .end local p0
    :goto_0
    return-object p0

    .line 12796
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
    .line 12688
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12688
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

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
    .line 12688
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

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
    .line 12688
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12688
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

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
    .line 12688
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFootprint(Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 12881
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->hasFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->access$24202(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;Z)Z

    .line 12882
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->footprint_:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->access$24302(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    .line 12883
    return-object p0
.end method

.method public setFootprint(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12869
    if-nez p1, :cond_0

    .line 12870
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12872
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->hasFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->access$24202(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;Z)Z

    .line 12873
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->footprint_:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->access$24302(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    .line 12874
    return-object p0
.end method
