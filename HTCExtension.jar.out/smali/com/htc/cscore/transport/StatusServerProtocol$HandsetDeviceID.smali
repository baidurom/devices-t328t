.class public final Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "StatusServerProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/StatusServerProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandsetDeviceID"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;


# instance fields
.field private hasId:Z

.field private id_:Lcom/htc/protobuf/ByteString;

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;

    invoke-direct {v0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->defaultInstance:Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;

    .line 405
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 409
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol;->internalForceInit()V

    .line 410
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 61
    sget-object v0, Lcom/htc/protobuf/ByteString;->EMPTY:Lcom/htc/protobuf/ByteString;

    iput-object v0, p0, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->id_:Lcom/htc/protobuf/ByteString;

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->memoizedSerializedSize:I

    .line 17
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/StatusServerProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;-><init>()V

    return-void
.end method

.method static synthetic access$502(Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->hasId:Z

    return p1
.end method

.method static synthetic access$602(Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->id_:Lcom/htc/protobuf/ByteString;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->defaultInstance:Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol;->access$000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;
    .locals 1

    .prologue
    .line 195
    #calls: Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->create()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->access$300()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;)Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 202
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->newBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->mergeFrom(Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;)Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->newBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;

    #calls: Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->buildParsed()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;
    invoke-static {v0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->access$200(Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;)Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->newBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;

    #calls: Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->buildParsed()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;
    invoke-static {v0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->access$200(Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;)Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->newBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;

    #calls: Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->buildParsed()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;
    invoke-static {v0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->access$200(Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;)Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->newBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;

    #calls: Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->buildParsed()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;
    invoke-static {v0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->access$200(Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;)Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->newBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;

    #calls: Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->buildParsed()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;
    invoke-static {v0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->access$200(Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;)Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->newBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->buildParsed()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;
    invoke-static {v0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->access$200(Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;)Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->newBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;

    #calls: Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->buildParsed()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;
    invoke-static {v0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->access$200(Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;)Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->newBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;

    #calls: Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->buildParsed()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;
    invoke-static {v0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->access$200(Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;)Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->newBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;

    #calls: Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->buildParsed()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;
    invoke-static {v0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->access$200(Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;)Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->newBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;

    #calls: Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->buildParsed()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;
    invoke-static {v0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;->access$200(Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;)Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->defaultInstance:Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->getDefaultInstanceForType()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->getDefaultInstanceForType()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/protobuf/ByteString;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->id_:Lcom/htc/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 100
    iget v0, p0, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->memoizedSerializedSize:I

    .line 101
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 110
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 103
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->hasId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->getId()Lcom/htc/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeBytesSize(ILcom/htc/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 109
    iput v0, p0, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->memoizedSerializedSize:I

    move v1, v0

    .line 110
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->hasId:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol;->access$100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->hasId:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;
    .locals 1

    .prologue
    .line 200
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->newBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->newBuilderForType()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->newBuilderForType()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;
    .locals 1

    .prologue
    .line 208
    invoke-static {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->newBuilder(Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;)Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->toBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->toBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID$Builder;

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
    .line 88
    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->getId()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBytes(ILcom/htc/protobuf/ByteString;)V

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$HandsetDeviceID;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 92
    return-void
.end method
