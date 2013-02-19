.class public final Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeleteFootprint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;
    }
.end annotation


# static fields
.field public static final FOOTPRINTID_FIELD_NUMBER:I = 0x4ca

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x732

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;


# instance fields
.field private footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private hasFootprintId:Z

.field private hasTimestamp:Z

.field private memoizedSerializedSize:I

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11125
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    .line 11613
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 11617
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 11618
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11123
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 11167
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 11186
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->timestamp_:J

    .line 11224
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->memoizedSerializedSize:I

    .line 11123
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11120
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;-><init>()V

    return-void
.end method

.method static synthetic access$21902(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11120
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->hasFootprintId:Z

    return p1
.end method

.method static synthetic access$22000(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11120
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$22002(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11120
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$22102(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11120
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$22202(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11120
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    .locals 1

    .prologue
    .line 11131
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 11148
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$21400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;
    .locals 1

    .prologue
    .line 11333
    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->access$21700()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 11340
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11303
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->access$21600(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11313
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->access$21600(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11254
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->access$21600(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11264
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->access$21600(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11319
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->access$21600(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11325
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->access$21600(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11284
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->access$21600(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11294
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->access$21600(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11269
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->access$21600(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11275
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->access$21600(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    .locals 1

    .prologue
    .line 11139
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 11120
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11120
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    return-object v0
.end method

.method public getFootprintId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 11177
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 11230
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->memoizedSerializedSize:I

    .line 11231
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 11244
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 11233
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 11234
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->hasFootprintId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11235
    const/16 v2, 0x4ca

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->getFootprintId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 11238
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11239
    const/16 v2, 0x732

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 11242
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 11243
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->memoizedSerializedSize:I

    move v1, v0

    .line 11244
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 11196
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->timestamp_:J

    return-wide v0
.end method

.method public hasFootprintId()Z
    .locals 1

    .prologue
    .line 11172
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->hasFootprintId:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 11191
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 11157
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$21500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 11203
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->hasFootprintId:Z

    if-nez v1, :cond_1

    .line 11206
    :cond_0
    :goto_0
    return v0

    .line 11204
    :cond_1
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->hasTimestamp:Z

    if-eqz v1, :cond_0

    .line 11205
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->getFootprintId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11206
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;
    .locals 1

    .prologue
    .line 11338
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11120
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11120
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;
    .locals 1

    .prologue
    .line 11346
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11120
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11120
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11215
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->hasFootprintId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11216
    const/16 v0, 0x4ca

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->getFootprintId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 11218
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11219
    const/16 v0, 0x732

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 11221
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 11222
    return-void
.end method
