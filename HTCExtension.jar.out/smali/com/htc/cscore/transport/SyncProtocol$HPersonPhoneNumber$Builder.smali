.class public final Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43992
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$82900(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 43987
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$83000()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 1

    .prologue
    .line 43987
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44066
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44067
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 44070
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 3

    .prologue
    .line 43995
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;-><init>()V

    .line 43996
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    .line 43997
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    .locals 1

    .prologue
    .line 44058
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44059
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 44061
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 43987
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 43987
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    .locals 3

    .prologue
    .line 44078
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    if-nez v1, :cond_0

    .line 44079
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44082
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    .line 44083
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    .line 44084
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 43987
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 43987
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2

    .prologue
    .line 44013
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    if-nez v0, :cond_0

    .line 44014
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44017
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    .line 44018
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 43987
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 43987
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 43987
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCanonicalPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 3

    .prologue
    .line 44230
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasCanonicalPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83202(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 44231
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->canonicalPhoneNumber_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83302(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;J)J

    .line 44232
    return-object p0
.end method

.method public clearDisplayPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2

    .prologue
    .line 44267
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasDisplayPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83402(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 44268
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getDisplayPhoneNumber()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->displayPhoneNumber_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83502(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    .line 44269
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2

    .prologue
    .line 44328
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83602(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 44329
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83702(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 44330
    return-object p0
.end method

.method public clearPersonId()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2

    .prologue
    .line 44389
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83802(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 44390
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83902(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 44391
    return-object p0
.end method

.method public clearPhoneNumberType()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2

    .prologue
    .line 44426
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPhoneNumberType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$84002(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 44427
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;->PhoneMobile:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->phoneNumberType_:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$84102(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;

    .line 44428
    return-object p0
.end method

.method public clearPriority()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44460
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$84202(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 44461
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->priority_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$84302(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;I)I

    .line 44462
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 3

    .prologue
    .line 44494
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$84402(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 44495
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$84502(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;J)J

    .line 44496
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2

    .prologue
    .line 44026
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 43987
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 43987
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 43987
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 43987
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 43987
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

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
    .line 43987
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalPhoneNumber()J
    .locals 2

    .prologue
    .line 44214
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getCanonicalPhoneNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    .locals 1

    .prologue
    .line 44043
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 43987
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 43987
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 44035
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44248
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getDisplayPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 44285
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 44346
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumberType()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;
    .locals 1

    .prologue
    .line 44407
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getPhoneNumberType()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 44444
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getPriority()I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 44478
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCanonicalPhoneNumber()Z
    .locals 1

    .prologue
    .line 44207
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasCanonicalPhoneNumber()Z

    move-result v0

    return v0
.end method

.method public hasDisplayPhoneNumber()Z
    .locals 1

    .prologue
    .line 44241
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasDisplayPhoneNumber()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 44278
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasPersonId()Z
    .locals 1

    .prologue
    .line 44339
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPersonId()Z

    move-result v0

    return v0
.end method

.method public hasPhoneNumberType()Z
    .locals 1

    .prologue
    .line 44400
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPhoneNumberType()Z

    move-result v0

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 44437
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPriority()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 44471
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    .locals 1

    .prologue
    .line 44005
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 43987
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 44051
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 44101
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 44124
    :goto_0
    return-object p0

    .line 44102
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasCanonicalPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44103
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getCanonicalPhoneNumber()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->setCanonicalPhoneNumber(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    .line 44105
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasDisplayPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44106
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getDisplayPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->setDisplayPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    .line 44108
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44109
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    .line 44111
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 44112
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    .line 44114
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPhoneNumberType()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 44115
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getPhoneNumberType()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->setPhoneNumberType(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    .line 44117
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 44118
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    .line 44120
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 44121
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    .line 44123
    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44135
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 44139
    .local v3, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 44140
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 44145
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 44147
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 44148
    :goto_1
    return-object p0

    .line 44142
    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 44153
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    goto :goto_0

    .line 44157
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->setDisplayPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    goto :goto_0

    .line 44161
    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 44162
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->hasPersonId()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 44163
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 44165
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 44166
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    goto :goto_0

    .line 44170
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->setCanonicalPhoneNumber(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    goto :goto_0

    .line 44174
    :sswitch_5
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 44175
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->hasId()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 44176
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 44178
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 44179
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    goto :goto_0

    .line 44183
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    goto :goto_0

    .line 44187
    :sswitch_7
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 44188
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;

    move-result-object v4

    .line 44189
    .local v4, value:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;
    if-nez v4, :cond_3

    .line 44190
    const/16 v5, 0x609

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 44192
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->setPhoneNumberType(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    goto/16 :goto_0

    .line 44140
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1088 -> :sswitch_1
        0x1f5a -> :sswitch_2
        0x2512 -> :sswitch_3
        0x2640 -> :sswitch_4
        0x2892 -> :sswitch_5
        0x2eb0 -> :sswitch_6
        0x3048 -> :sswitch_7
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 44092
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    if-eqz v0, :cond_0

    .line 44093
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object p0

    .line 44096
    .end local p0
    :goto_0
    return-object p0

    .line 44095
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
    .line 43987
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43987
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

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
    .line 43987
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

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
    .line 43987
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43987
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

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
    .line 43987
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 44313
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83700(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 44315
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83700(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83702(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 44320
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83602(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 44321
    return-object p0

    .line 44318
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83702(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 44374
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83900(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 44376
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83900(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83902(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 44381
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83802(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 44382
    return-object p0

    .line 44379
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83902(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setCanonicalPhoneNumber(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 44221
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasCanonicalPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83202(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 44222
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->canonicalPhoneNumber_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83302(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;J)J

    .line 44223
    return-object p0
.end method

.method public setDisplayPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 44255
    if-nez p1, :cond_0

    .line 44256
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 44258
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasDisplayPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83402(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 44259
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->displayPhoneNumber_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83502(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    .line 44260
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 44304
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83602(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 44305
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83702(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 44306
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 44292
    if-nez p1, :cond_0

    .line 44293
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 44295
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83602(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 44296
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83702(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 44297
    return-object p0
.end method

.method public setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 44365
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83802(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 44366
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83902(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 44367
    return-object p0
.end method

.method public setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 44353
    if-nez p1, :cond_0

    .line 44354
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 44356
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83802(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 44357
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83902(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 44358
    return-object p0
.end method

.method public setPhoneNumberType(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 44414
    if-nez p1, :cond_0

    .line 44415
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 44417
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPhoneNumberType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$84002(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 44418
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->phoneNumberType_:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$84102(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;

    .line 44419
    return-object p0
.end method

.method public setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 44451
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$84202(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 44452
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->priority_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$84302(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;I)I

    .line 44453
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 44485
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$84402(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 44486
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$84502(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;J)J

    .line 44487
    return-object p0
.end method
