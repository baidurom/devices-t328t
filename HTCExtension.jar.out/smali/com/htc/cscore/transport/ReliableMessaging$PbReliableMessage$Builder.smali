.class public final Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "ReliableMessaging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;
    .locals 1

    .prologue
    .line 368
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->create()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 451
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;
    .locals 3

    .prologue
    .line 376
    new-instance v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;-><init>()V

    .line 377
    .local v0, builder:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;
    new-instance v1, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;-><init>(Lcom/htc/cscore/transport/ReliableMessaging$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    .line 378
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 442
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->build()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->build()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    .locals 3

    .prologue
    .line 459
    iget-object v1, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    if-nez v1, :cond_0

    .line 460
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    .line 464
    .local v0, returnMe:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    .line 465
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;-><init>(Lcom/htc/cscore/transport/ReliableMessaging$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    .line 399
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->clear()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->clear()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->clear()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearPayloadBuf()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasPayloadBuf:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->access$1102(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;Z)Z

    .line 692
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->getDefaultInstance()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->getPayloadBuf()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->payloadBuf_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->access$1202(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 693
    return-object p0
.end method

.method public clearSequenceId()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasSequenceId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->access$702(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;Z)Z

    .line 621
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->getDefaultInstance()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->getSequenceId()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->sequenceId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->access$802(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;Ljava/lang/String;)Ljava/lang/String;

    .line 622
    return-object p0
.end method

.method public clearSequenceNum()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 654
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    #setter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasSequenceNum:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->access$902(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;Z)Z

    .line 655
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    #setter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->sequenceNum_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->access$1002(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;I)I

    .line 656
    return-object p0
.end method

.method public clearType()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->access$502(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;Z)Z

    .line 584
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    sget-object v1, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->Payload:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    #setter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->type_:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->access$602(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    .line 585
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;
    .locals 2

    .prologue
    .line 407
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->create()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->clone()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->clone()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->clone()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->clone()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->clone()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

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
    .line 368
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->clone()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    .locals 1

    .prologue
    .line 424
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->getDefaultInstance()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 416
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPayloadBuf()Lcom/htc/protobuf/ByteString;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->getPayloadBuf()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSequenceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->getSequenceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSequenceNum()I
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->getSequenceNum()I

    move-result v0

    return v0
.end method

.method public getType()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->getType()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    move-result-object v0

    return-object v0
.end method

.method public hasPayloadBuf()Z
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasPayloadBuf()Z

    move-result v0

    return v0
.end method

.method public hasSequenceId()Z
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasSequenceId()Z

    move-result v0

    return v0
.end method

.method public hasSequenceNum()Z
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasSequenceNum()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasType()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->internalGetResult()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 482
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->getDefaultInstance()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 496
    :goto_0
    return-object p0

    .line 483
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->getType()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->setType(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    .line 486
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasSequenceId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 487
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->getSequenceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->setSequenceId(Ljava/lang/String;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    .line 489
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasSequenceNum()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 490
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->getSequenceNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->setSequenceNum(I)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    .line 492
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasPayloadBuf()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 493
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->getPayloadBuf()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->setPayloadBuf(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    .line 495
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 511
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 512
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 517
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 519
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 520
    :goto_1
    return-object p0

    .line 514
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 525
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 526
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->valueOf(I)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    move-result-object v3

    .line 527
    .local v3, value:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;
    if-nez v3, :cond_1

    .line 528
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 530
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->setType(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    goto :goto_0

    .line 535
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->setSequenceId(Ljava/lang/String;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    goto :goto_0

    .line 539
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->setSequenceNum(I)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    goto :goto_0

    .line 543
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBytes()Lcom/htc/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->setPayloadBuf(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    goto :goto_0

    .line 512
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 473
    instance-of v0, p1, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    if-eqz v0, :cond_0

    .line 474
    check-cast p1, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object p0

    .line 477
    .end local p0
    :goto_0
    return-object p0

    .line 476
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
    .line 368
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

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
    .line 368
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

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
    .line 368
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

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
    .line 368
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPayloadBuf(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 679
    if-nez p1, :cond_0

    .line 680
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasPayloadBuf:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->access$1102(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;Z)Z

    .line 683
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    #setter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->payloadBuf_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->access$1202(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 684
    return-object p0
.end method

.method public setSequenceId(Ljava/lang/String;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 608
    if-nez p1, :cond_0

    .line 609
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasSequenceId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->access$702(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;Z)Z

    .line 612
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    #setter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->sequenceId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->access$802(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;Ljava/lang/String;)Ljava/lang/String;

    .line 613
    return-object p0
.end method

.method public setSequenceNum(I)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 645
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasSequenceNum:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->access$902(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;Z)Z

    .line 646
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    #setter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->sequenceNum_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->access$1002(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;I)I

    .line 647
    return-object p0
.end method

.method public setType(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 571
    if-nez p1, :cond_0

    .line 572
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->access$502(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;Z)Z

    .line 575
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->result:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    #setter for: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->type_:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->access$602(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    .line 576
    return-object p0
.end method
