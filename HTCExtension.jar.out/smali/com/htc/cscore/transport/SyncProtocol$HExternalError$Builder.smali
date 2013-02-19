.class public final Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7672
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$13800(Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7667
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13900()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 1

    .prologue
    .line 7667
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7746
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7747
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 7750
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 3

    .prologue
    .line 7675
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;-><init>()V

    .line 7676
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    .line 7677
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1

    .prologue
    .line 7738
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7739
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 7741
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 3

    .prologue
    .line 7758
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    if-nez v1, :cond_0

    .line 7759
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7762
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    .line 7763
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    .line 7764
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 2

    .prologue
    .line 7693
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    if-nez v0, :cond_0

    .line 7694
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7697
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    .line 7698
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearErrorCode()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7879
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCode:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14102(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z

    .line 7880
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorCode_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14202(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;I)I

    .line 7881
    return-object p0
.end method

.method public clearErrorCodeType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 2

    .prologue
    .line 7916
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCodeType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14302(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z

    .line 7917
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;->GeneralError:Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorCodeType_:Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14402(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;

    .line 7918
    return-object p0
.end method

.method public clearErrorString()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 2

    .prologue
    .line 7953
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorString:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14502(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z

    .line 7954
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getErrorString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorString_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14602(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Ljava/lang/String;)Ljava/lang/String;

    .line 7955
    return-object p0
.end method

.method public clearIsServerError()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7987
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasIsServerError:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14702(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z

    .line 7988
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->isServerError_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14802(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z

    .line 7989
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 2

    .prologue
    .line 7706
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

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
    .line 7667
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1

    .prologue
    .line 7723
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7715
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 7863
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public getErrorCodeType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;
    .locals 1

    .prologue
    .line 7897
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getErrorCodeType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;

    move-result-object v0

    return-object v0
.end method

.method public getErrorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7934
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getErrorString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsServerError()Z
    .locals 1

    .prologue
    .line 7971
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getIsServerError()Z

    move-result v0

    return v0
.end method

.method public hasErrorCode()Z
    .locals 1

    .prologue
    .line 7856
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCode()Z

    move-result v0

    return v0
.end method

.method public hasErrorCodeType()Z
    .locals 1

    .prologue
    .line 7890
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCodeType()Z

    move-result v0

    return v0
.end method

.method public hasErrorString()Z
    .locals 1

    .prologue
    .line 7927
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorString()Z

    move-result v0

    return v0
.end method

.method public hasIsServerError()Z
    .locals 1

    .prologue
    .line 7964
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasIsServerError()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1

    .prologue
    .line 7685
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 7731
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 7781
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 7795
    :goto_0
    return-object p0

    .line 7782
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7783
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getErrorCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->setErrorCode(I)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    .line 7785
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCodeType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7786
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getErrorCodeType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->setErrorCodeType(Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    .line 7788
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorString()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7789
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getErrorString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->setErrorString(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    .line 7791
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasIsServerError()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7792
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getIsServerError()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->setIsServerError(Z)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    .line 7794
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7806
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 7810
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 7811
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 7816
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 7818
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 7819
    :goto_1
    return-object p0

    .line 7813
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 7824
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->setErrorCode(I)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    goto :goto_0

    .line 7828
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->setIsServerError(Z)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    goto :goto_0

    .line 7832
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->setErrorString(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    goto :goto_0

    .line 7836
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 7837
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;

    move-result-object v3

    .line 7838
    .local v3, value:Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;
    if-nez v3, :cond_1

    .line 7839
    const/16 v4, 0x7bf

    invoke-virtual {v2, v4, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 7841
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->setErrorCodeType(Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    goto :goto_0

    .line 7811
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x588 -> :sswitch_1
        0x20c8 -> :sswitch_2
        0x39f2 -> :sswitch_3
        0x3df8 -> :sswitch_4
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 7772
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    if-eqz v0, :cond_0

    .line 7773
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object p0

    .line 7776
    .end local p0
    :goto_0
    return-object p0

    .line 7775
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
    .line 7667
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7667
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

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
    .line 7667
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

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
    .line 7667
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7667
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

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
    .line 7667
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setErrorCode(I)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7870
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCode:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14102(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z

    .line 7871
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorCode_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14202(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;I)I

    .line 7872
    return-object p0
.end method

.method public setErrorCodeType(Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7904
    if-nez p1, :cond_0

    .line 7905
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7907
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCodeType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14302(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z

    .line 7908
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorCodeType_:Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14402(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;

    .line 7909
    return-object p0
.end method

.method public setErrorString(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7941
    if-nez p1, :cond_0

    .line 7942
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7944
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorString:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14502(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z

    .line 7945
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorString_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14602(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Ljava/lang/String;)Ljava/lang/String;

    .line 7946
    return-object p0
.end method

.method public setIsServerError(Z)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7978
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasIsServerError:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14702(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z

    .line 7979
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->isServerError_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14802(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z

    .line 7980
    return-object p0
.end method
