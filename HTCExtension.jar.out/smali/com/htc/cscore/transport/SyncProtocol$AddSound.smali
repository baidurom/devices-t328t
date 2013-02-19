.class public final Lcom/htc/cscore/transport/SyncProtocol$AddSound;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddSound"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;
    }
.end annotation


# static fields
.field public static final SOUND_FIELD_NUMBER:I = 0x1dd

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddSound;


# instance fields
.field private hasSound:Z

.field private memoizedSerializedSize:I

.field private sound_:Lcom/htc/cscore/transport/SyncProtocol$HSound;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58027
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    .line 58447
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 58451
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 58452
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 58025
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 58069
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->sound_:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    .line 58103
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->memoizedSerializedSize:I

    .line 58025
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58022
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;-><init>()V

    return-void
.end method

.method static synthetic access$111702(Lcom/htc/cscore/transport/SyncProtocol$AddSound;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58022
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->hasSound:Z

    return p1
.end method

.method static synthetic access$111800(Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$HSound;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58022
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->sound_:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    return-object v0
.end method

.method static synthetic access$111802(Lcom/htc/cscore/transport/SyncProtocol$AddSound;Lcom/htc/cscore/transport/SyncProtocol$HSound;)Lcom/htc/cscore/transport/SyncProtocol$HSound;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58022
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->sound_:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    .locals 1

    .prologue
    .line 58033
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 58050
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$111200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;
    .locals 1

    .prologue
    .line 58208
    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->access$111500()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 58215
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58178
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->access$111400(Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58188
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->access$111400(Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 58129
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->access$111400(Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 58139
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->access$111400(Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58194
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->access$111400(Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58200
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->access$111400(Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58159
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->access$111400(Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58169
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->access$111400(Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 58144
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->access$111400(Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 58150
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->access$111400(Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    .locals 1

    .prologue
    .line 58041
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 58022
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 58022
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 58109
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->memoizedSerializedSize:I

    .line 58110
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 58119
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 58112
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 58113
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->hasSound()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58114
    const/16 v2, 0x1dd

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->getSound()Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 58117
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 58118
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->memoizedSerializedSize:I

    move v1, v0

    .line 58119
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getSound()Lcom/htc/cscore/transport/SyncProtocol$HSound;
    .locals 1

    .prologue
    .line 58079
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->sound_:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    return-object v0
.end method

.method public hasSound()Z
    .locals 1

    .prologue
    .line 58074
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->hasSound:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 58059
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$111300()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 58086
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->hasSound:Z

    if-nez v1, :cond_1

    .line 58088
    :cond_0
    :goto_0
    return v0

    .line 58087
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->getSound()Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58088
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;
    .locals 1

    .prologue
    .line 58213
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 58022
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 58022
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;
    .locals 1

    .prologue
    .line 58221
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 58022
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 58022
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58097
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->hasSound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58098
    const/16 v0, 0x1dd

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->getSound()Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 58100
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 58101
    return-void
.end method
