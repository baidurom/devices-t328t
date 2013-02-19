.class public final Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "ImmediateModeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1114
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1109
    invoke-direct {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;
    .locals 1

    .prologue
    .line 1109
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->create()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1188
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1192
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;
    .locals 3

    .prologue
    .line 1117
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;-><init>()V

    .line 1118
    .local v0, builder:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;
    new-instance v1, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;-><init>(Lcom/htc/cscore/transport/ImmediateModeProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    .line 1119
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1183
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->build()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->build()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
    .locals 3

    .prologue
    .line 1200
    iget-object v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    if-nez v1, :cond_0

    .line 1201
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1204
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    .line 1205
    .local v0, returnMe:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    .line 1206
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;
    .locals 2

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    if-nez v0, :cond_0

    .line 1136
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1139
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;-><init>(Lcom/htc/cscore/transport/ImmediateModeProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    .line 1140
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->clear()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->clear()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->clear()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAuthTicket()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;
    .locals 2

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->hasAuthTicket:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->access$1902(Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;Z)Z

    .line 1305
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->getDefaultInstance()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->getAuthTicket()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->authTicket_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->access$2002(Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;Ljava/lang/String;)Ljava/lang/String;

    .line 1306
    return-object p0
.end method

.method public clearEmail()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;
    .locals 2

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->hasEmail:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->access$2102(Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;Z)Z

    .line 1342
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->getDefaultInstance()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->getEmail()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->email_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->access$2202(Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;Ljava/lang/String;)Ljava/lang/String;

    .line 1343
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;
    .locals 2

    .prologue
    .line 1148
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->create()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->mergeFrom(Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

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
    .line 1109
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAuthTicket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->getAuthTicket()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
    .locals 1

    .prologue
    .line 1165
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->getDefaultInstance()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1157
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAuthTicket()Z
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->hasAuthTicket()Z

    move-result v0

    return v0
.end method

.method public hasEmail()Z
    .locals 1

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->hasEmail()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->internalGetResult()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1223
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->getDefaultInstance()Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1231
    :goto_0
    return-object p0

    .line 1224
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->hasAuthTicket()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1225
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->getAuthTicket()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->setAuthTicket(Ljava/lang/String;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    .line 1227
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->hasEmail()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1228
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->setEmail(Ljava/lang/String;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    .line 1230
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1242
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 1246
    .local v1, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1247
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1252
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1254
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 1255
    :goto_1
    return-object p0

    .line 1249
    :sswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 1260
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->setAuthTicket(Ljava/lang/String;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    goto :goto_0

    .line 1264
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->setEmail(Ljava/lang/String;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    goto :goto_0

    .line 1247
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1214
    instance-of v0, p1, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    if-eqz v0, :cond_0

    .line 1215
    check-cast p1, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->mergeFrom(Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object p0

    .line 1218
    .end local p0
    :goto_0
    return-object p0

    .line 1217
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
    .line 1109
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1109
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

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
    .line 1109
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

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
    .line 1109
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1109
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

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
    .line 1109
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAuthTicket(Ljava/lang/String;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1292
    if-nez p1, :cond_0

    .line 1293
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1295
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->hasAuthTicket:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->access$1902(Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;Z)Z

    .line 1296
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->authTicket_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->access$2002(Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;Ljava/lang/String;)Ljava/lang/String;

    .line 1297
    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1329
    if-nez p1, :cond_0

    .line 1330
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->hasEmail:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->access$2102(Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;Z)Z

    .line 1333
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->email_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;->access$2202(Lcom/htc/cscore/transport/ImmediateModeProtocol$Authentication;Ljava/lang/String;)Ljava/lang/String;

    .line 1334
    return-object p0
.end method
