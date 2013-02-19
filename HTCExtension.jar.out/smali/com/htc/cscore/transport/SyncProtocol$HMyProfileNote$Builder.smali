.class public final Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30752
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$58000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 30747
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$58100()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 1

    .prologue
    .line 30747
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 30826
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30827
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 30830
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 3

    .prologue
    .line 30755
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;-><init>()V

    .line 30756
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    .line 30757
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    .locals 1

    .prologue
    .line 30818
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30819
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 30821
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 30747
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 30747
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    .locals 3

    .prologue
    .line 30838
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    if-nez v1, :cond_0

    .line 30839
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30842
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    .line 30843
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    .line 30844
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 30747
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 30747
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2

    .prologue
    .line 30773
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    if-nez v0, :cond_0

    .line 30774
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30777
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    .line 30778
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 30747
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 30747
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 30747
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2

    .prologue
    .line 30997
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z

    .line 30998
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 30999
    return-object p0
.end method

.method public clearMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2

    .prologue
    .line 31058
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z

    .line 31059
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 31060
    return-object p0
.end method

.method public clearNote()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2

    .prologue
    .line 31095
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasNote:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z

    .line 31096
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getNote()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->note_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Ljava/lang/String;)Ljava/lang/String;

    .line 31097
    return-object p0
.end method

.method public clearPriority()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31129
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z

    .line 31130
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->priority_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$59002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;I)I

    .line 31131
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 3

    .prologue
    .line 31163
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$59102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z

    .line 31164
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$59202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;J)J

    .line 31165
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2

    .prologue
    .line 30786
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 30747
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 30747
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 30747
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 30747
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 30747
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

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
    .line 30747
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    .locals 1

    .prologue
    .line 30803
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 30747
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 30747
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 30795
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 30954
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 31015
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31076
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getNote()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 31113
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getPriority()I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 31147
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 30947
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileId()Z
    .locals 1

    .prologue
    .line 31008
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasMyProfileId()Z

    move-result v0

    return v0
.end method

.method public hasNote()Z
    .locals 1

    .prologue
    .line 31069
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasNote()Z

    move-result v0

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 31106
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasPriority()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 31140
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    .locals 1

    .prologue
    .line 30765
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 30747
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 30811
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 30861
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 30878
    :goto_0
    return-object p0

    .line 30862
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30863
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    .line 30865
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30866
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    .line 30868
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasNote()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30869
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getNote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->setNote(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    .line 30871
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 30872
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    .line 30874
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 30875
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    .line 30877
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30889
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 30893
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 30894
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 30899
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 30901
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 30902
    :goto_1
    return-object p0

    .line 30896
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 30907
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    goto :goto_0

    .line 30911
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->setNote(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    goto :goto_0

    .line 30915
    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 30916
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 30917
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 30919
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 30920
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    goto :goto_0

    .line 30924
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_4
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 30925
    .restart local v0       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->hasMyProfileId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 30926
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 30928
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 30929
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    goto :goto_0

    .line 30933
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    goto :goto_0

    .line 30894
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1088 -> :sswitch_1
        0x16c2 -> :sswitch_2
        0x2892 -> :sswitch_3
        0x2d3a -> :sswitch_4
        0x2eb0 -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 30852
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    if-eqz v0, :cond_0

    .line 30853
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object p0

    .line 30856
    .end local p0
    :goto_0
    return-object p0

    .line 30855
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
    .line 30747
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30747
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

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
    .line 30747
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

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
    .line 30747
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30747
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

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
    .line 30747
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 30982
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 30984
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 30989
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z

    .line 30990
    return-object p0

    .line 30987
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 31043
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 31045
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 31050
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z

    .line 31051
    return-object p0

    .line 31048
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 30973
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z

    .line 30974
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 30975
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 30961
    if-nez p1, :cond_0

    .line 30962
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30964
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z

    .line 30965
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 30966
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 31034
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z

    .line 31035
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 31036
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 31022
    if-nez p1, :cond_0

    .line 31023
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31025
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z

    .line 31026
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 31027
    return-object p0
.end method

.method public setNote(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 31083
    if-nez p1, :cond_0

    .line 31084
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31086
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasNote:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z

    .line 31087
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->note_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Ljava/lang/String;)Ljava/lang/String;

    .line 31088
    return-object p0
.end method

.method public setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 31120
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z

    .line 31121
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->priority_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$59002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;I)I

    .line 31122
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 31154
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$59102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z

    .line 31155
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$59202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;J)J

    .line 31156
    return-object p0
.end method
