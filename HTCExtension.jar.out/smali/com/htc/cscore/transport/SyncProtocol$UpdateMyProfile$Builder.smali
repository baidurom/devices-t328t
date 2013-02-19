.class public final Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25200
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$47000(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25195
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$47100()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;
    .locals 1

    .prologue
    .line 25195
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25274
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25275
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 25278
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;
    .locals 3

    .prologue
    .line 25203
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;-><init>()V

    .line 25204
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    .line 25205
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    .locals 1

    .prologue
    .line 25266
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25267
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 25269
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 25195
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 25195
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    .locals 3

    .prologue
    .line 25286
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    if-nez v1, :cond_0

    .line 25287
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25290
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    .line 25291
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    .line 25292
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 25195
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 25195
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;
    .locals 2

    .prologue
    .line 25221
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    if-nez v0, :cond_0

    .line 25222
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25225
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    .line 25226
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 25195
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 25195
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 25195
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearMyProfile()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;
    .locals 2

    .prologue
    .line 25412
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->hasMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->access$47302(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;Z)Z

    .line 25413
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->access$47402(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .line 25414
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;
    .locals 2

    .prologue
    .line 25234
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 25195
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 25195
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 25195
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 25195
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 25195
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

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
    .line 25195
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    .locals 1

    .prologue
    .line 25251
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 25195
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 25195
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 25243
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1

    .prologue
    .line 25369
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->getMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public hasMyProfile()Z
    .locals 1

    .prologue
    .line 25362
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->hasMyProfile()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    .locals 1

    .prologue
    .line 25213
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 25195
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 25259
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 25309
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 25314
    :goto_0
    return-object p0

    .line 25310
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->hasMyProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25311
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->getMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->mergeMyProfile(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    .line 25313
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25325
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 25329
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 25330
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 25335
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 25337
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 25338
    :goto_1
    return-object p0

    .line 25332
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 25343
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    .line 25344
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->hasMyProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 25345
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->getMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 25347
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 25348
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->setMyProfile(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    goto :goto_0

    .line 25330
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1fb2 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 25300
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    if-eqz v0, :cond_0

    .line 25301
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object p0

    .line 25304
    .end local p0
    :goto_0
    return-object p0

    .line 25303
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
    .line 25195
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25195
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

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
    .line 25195
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

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
    .line 25195
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25195
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

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
    .line 25195
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeMyProfile(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 25397
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->hasMyProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->access$47400(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 25399
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->access$47400(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->access$47402(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .line 25404
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->hasMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->access$47302(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;Z)Z

    .line 25405
    return-object p0

    .line 25402
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->access$47402(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    goto :goto_0
.end method

.method public setMyProfile(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 25388
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->hasMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->access$47302(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;Z)Z

    .line 25389
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->access$47402(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .line 25390
    return-object p0
.end method

.method public setMyProfile(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 25376
    if-nez p1, :cond_0

    .line 25377
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25379
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->hasMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->access$47302(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;Z)Z

    .line 25380
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->access$47402(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .line 25381
    return-object p0
.end method
