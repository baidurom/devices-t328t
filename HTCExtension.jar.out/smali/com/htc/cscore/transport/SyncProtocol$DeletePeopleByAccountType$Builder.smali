.class public final Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3576
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$6100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3571
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6200()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
    .locals 1

    .prologue
    .line 3571
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3650
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3651
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3654
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
    .locals 3

    .prologue
    .line 3579
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;-><init>()V

    .line 3580
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    .line 3581
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 1

    .prologue
    .line 3642
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3643
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3645
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 3571
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3571
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 3

    .prologue
    .line 3662
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    if-nez v1, :cond_0

    .line 3663
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3666
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    .line 3667
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    .line 3668
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 3571
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3571
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
    .locals 2

    .prologue
    .line 3597
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    if-nez v0, :cond_0

    .line 3598
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3601
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    .line 3602
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3571
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3571
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3571
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAccountType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
    .locals 2

    .prologue
    .line 3765
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->hasAccountType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->access$6402(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;Z)Z

    .line 3766
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;->AccountGmail:Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->accountType_:Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->access$6502(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    .line 3767
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
    .locals 2

    .prologue
    .line 3610
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3571
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3571
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3571
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3571
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3571
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

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
    .line 3571
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;
    .locals 1

    .prologue
    .line 3746
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->getAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 1

    .prologue
    .line 3627
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 3571
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3571
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3619
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasAccountType()Z
    .locals 1

    .prologue
    .line 3739
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->hasAccountType()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 1

    .prologue
    .line 3589
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 3571
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3635
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 3685
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3690
    :goto_0
    return-object p0

    .line 3686
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->hasAccountType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3687
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->getAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->setAccountType(Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    .line 3689
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3701
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 3705
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3706
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 3711
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3713
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 3714
    :goto_1
    return-object p0

    .line 3708
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 3719
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 3720
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    move-result-object v3

    .line 3721
    .local v3, value:Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;
    if-nez v3, :cond_1

    .line 3722
    const/16 v4, 0x1f

    invoke-virtual {v2, v4, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 3724
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->setAccountType(Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    goto :goto_0

    .line 3706
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xf8 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 3676
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    if-eqz v0, :cond_0

    .line 3677
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object p0

    .line 3680
    .end local p0
    :goto_0
    return-object p0

    .line 3679
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
    .line 3571
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3571
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

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
    .line 3571
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

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
    .line 3571
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3571
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

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
    .line 3571
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAccountType(Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3753
    if-nez p1, :cond_0

    .line 3754
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3756
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->hasAccountType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->access$6402(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;Z)Z

    .line 3757
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->accountType_:Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->access$6502(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    .line 3758
    return-object p0
.end method
