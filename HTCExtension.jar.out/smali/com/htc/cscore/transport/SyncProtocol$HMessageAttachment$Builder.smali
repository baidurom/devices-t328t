.class public final Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20650
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$38400(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20645
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$38500()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 1

    .prologue
    .line 20645
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20724
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20725
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 20728
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 3

    .prologue
    .line 20653
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;-><init>()V

    .line 20654
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    .line 20655
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    .locals 1

    .prologue
    .line 20716
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20717
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 20719
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 20645
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 20645
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    .locals 3

    .prologue
    .line 20736
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    if-nez v1, :cond_0

    .line 20737
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20740
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    .line 20741
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    .line 20742
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 20645
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 20645
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2

    .prologue
    .line 20671
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    if-nez v0, :cond_0

    .line 20672
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20675
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    .line 20676
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 20645
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 20645
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 20645
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearContentType()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2

    .prologue
    .line 20878
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasContentType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$38702(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 20879
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->contentType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$38802(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Ljava/lang/String;)Ljava/lang/String;

    .line 20880
    return-object p0
.end method

.method public clearData()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2

    .prologue
    .line 20915
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$38902(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 20916
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->data_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39002(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 20917
    return-object p0
.end method

.method public clearFileType()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2

    .prologue
    .line 20952
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasFileType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39102(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 20953
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getFileType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->fileType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39202(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Ljava/lang/String;)Ljava/lang/String;

    .line 20954
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2

    .prologue
    .line 21013
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39302(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 21014
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39402(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 21015
    return-object p0
.end method

.method public clearMessageId()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2

    .prologue
    .line 21074
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasMessageId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39502(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 21075
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39602(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 21076
    return-object p0
.end method

.method public clearName()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2

    .prologue
    .line 21111
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39702(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 21112
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39802(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Ljava/lang/String;)Ljava/lang/String;

    .line 21113
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2

    .prologue
    .line 20684
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 20645
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 20645
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 20645
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 20645
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 20645
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

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
    .line 20645
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20859
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/htc/protobuf/ByteString;
    .locals 1

    .prologue
    .line 20896
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    .locals 1

    .prologue
    .line 20701
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 20645
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 20645
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 20693
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20933
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getFileType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 20970
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 21031
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getMessageId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21092
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasContentType()Z
    .locals 1

    .prologue
    .line 20852
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasContentType()Z

    move-result v0

    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 20889
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasData()Z

    move-result v0

    return v0
.end method

.method public hasFileType()Z
    .locals 1

    .prologue
    .line 20926
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasFileType()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 20963
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasMessageId()Z
    .locals 1

    .prologue
    .line 21024
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasMessageId()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 21085
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasName()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    .locals 1

    .prologue
    .line 20663
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 20645
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 20709
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 20759
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 20779
    :goto_0
    return-object p0

    .line 20760
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasContentType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20761
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->setContentType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    .line 20763
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20764
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    .line 20766
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasFileType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20767
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getFileType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    .line 20769
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20770
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    .line 20772
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasMessageId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20773
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getMessageId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeMessageId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    .line 20775
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20776
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    .line 20778
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20790
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 20794
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 20795
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 20800
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 20802
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 20803
    :goto_1
    return-object p0

    .line 20797
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 20808
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    goto :goto_0

    .line 20812
    :sswitch_2
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 20813
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->hasMessageId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 20814
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->getMessageId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 20816
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 20817
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->setMessageId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    goto :goto_0

    .line 20821
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->setContentType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    goto :goto_0

    .line 20825
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBytes()Lcom/htc/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    goto :goto_0

    .line 20829
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    goto :goto_0

    .line 20833
    :sswitch_6
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 20834
    .restart local v0       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 20835
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 20837
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 20838
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    goto :goto_0

    .line 20795
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xee2 -> :sswitch_1
        0x1182 -> :sswitch_2
        0x15a2 -> :sswitch_3
        0x1e72 -> :sswitch_4
        0x223a -> :sswitch_5
        0x2892 -> :sswitch_6
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 20750
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    if-eqz v0, :cond_0

    .line 20751
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object p0

    .line 20754
    .end local p0
    :goto_0
    return-object p0

    .line 20753
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
    .line 20645
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20645
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

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
    .line 20645
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

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
    .line 20645
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20645
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

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
    .line 20645
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 20998
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39400(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 21000
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39400(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39402(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 21005
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39302(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 21006
    return-object p0

    .line 21003
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39402(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeMessageId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 21059
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasMessageId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39600(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 21061
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39600(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39602(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 21066
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasMessageId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39502(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 21067
    return-object p0

    .line 21064
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39602(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 20866
    if-nez p1, :cond_0

    .line 20867
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20869
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasContentType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$38702(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 20870
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->contentType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$38802(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Ljava/lang/String;)Ljava/lang/String;

    .line 20871
    return-object p0
.end method

.method public setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 20903
    if-nez p1, :cond_0

    .line 20904
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20906
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$38902(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 20907
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->data_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39002(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 20908
    return-object p0
.end method

.method public setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 20940
    if-nez p1, :cond_0

    .line 20941
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20943
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasFileType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39102(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 20944
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->fileType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39202(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Ljava/lang/String;)Ljava/lang/String;

    .line 20945
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 20989
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39302(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 20990
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39402(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 20991
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 20977
    if-nez p1, :cond_0

    .line 20978
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20980
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39302(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 20981
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39402(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 20982
    return-object p0
.end method

.method public setMessageId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 21050
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasMessageId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39502(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 21051
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39602(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 21052
    return-object p0
.end method

.method public setMessageId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 21038
    if-nez p1, :cond_0

    .line 21039
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21041
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasMessageId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39502(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 21042
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39602(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 21043
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 21099
    if-nez p1, :cond_0

    .line 21100
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21102
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39702(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 21103
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39802(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Ljava/lang/String;)Ljava/lang/String;

    .line 21104
    return-object p0
.end method
