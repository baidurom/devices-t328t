.class public final Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HSyncItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;,
        Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$HSyncItemType;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final SYNCITEMTYPE_FIELD_NUMBER:I = 0x398

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;


# instance fields
.field private hasId:Z

.field private hasSyncItemType:Z

.field private hasTimestamp:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private syncItemType_:I

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58460
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    .line 59134
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 59138
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 59139
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 58458
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 58661
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 58672
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->syncItemType_:I

    .line 58687
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->timestamp_:J

    .line 58728
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->memoizedSerializedSize:I

    .line 58458
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58455
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;-><init>()V

    return-void
.end method

.method static synthetic access$112402(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58455
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasId:Z

    return p1
.end method

.method static synthetic access$112500(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58455
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$112502(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58455
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$112602(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58455
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasSyncItemType:Z

    return p1
.end method

.method static synthetic access$112702(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58455
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->syncItemType_:I

    return p1
.end method

.method static synthetic access$112802(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58455
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$112902(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58455
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1

    .prologue
    .line 58466
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 58483
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$111900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 1

    .prologue
    .line 58833
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->access$112200()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 58840
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58807
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->access$112100(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58817
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->access$112100(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 58758
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->access$112100(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 58768
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->access$112100(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58823
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->access$112100(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58829
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->access$112100(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58788
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->access$112100(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58798
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->access$112100(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 58773
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->access$112100(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 58779
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->access$112100(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1

    .prologue
    .line 58474
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 58455
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 58455
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 58667
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 58730
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->memoizedSerializedSize:I

    .line 58731
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 58748
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 58733
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 58734
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58735
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 58738
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasSyncItemType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58739
    const/16 v2, 0x398

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getSyncItemType()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 58742
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 58743
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 58746
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 58747
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->memoizedSerializedSize:I

    move v1, v0

    .line 58748
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getSyncItemType()I
    .locals 1

    .prologue
    .line 58678
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->syncItemType_:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 58697
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->timestamp_:J

    return-wide v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 58666
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasId:Z

    return v0
.end method

.method public hasSyncItemType()Z
    .locals 1

    .prologue
    .line 58677
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasSyncItemType:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 58692
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 58492
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$112000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 58704
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58705
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 58707
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 1

    .prologue
    .line 58838
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 58455
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 58455
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 1

    .prologue
    .line 58846
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 58455
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 58455
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

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
    .line 58716
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58717
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 58719
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasSyncItemType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58720
    const/16 v0, 0x398

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getSyncItemType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 58722
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58723
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 58725
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 58726
    return-void
.end method
