.class public final Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "ImmediateModeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/ImmediateModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeepAliveInterval"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;
    }
.end annotation


# static fields
.field public static final INTERVAL_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;


# instance fields
.field private hasInterval:Z

.field private interval_:I

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1361
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    invoke-direct {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->defaultInstance:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    .line 1744
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 1748
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->internalForceInit()V

    .line 1749
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1359
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 1403
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->interval_:I

    .line 1436
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->memoizedSerializedSize:I

    .line 1359
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/ImmediateModeProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1356
    invoke-direct {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;-><init>()V

    return-void
.end method

.method static synthetic access$2802(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1356
    iput-boolean p1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->hasInterval:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1356
    iput p1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->interval_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    .locals 1

    .prologue
    .line 1367
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->defaultInstance:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1384
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->access$2300()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;
    .locals 1

    .prologue
    .line 1537
    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->create()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->access$2600()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1544
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->mergeFrom(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1511
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->access$2500(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1521
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->access$2500(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1462
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->access$2500(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1472
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->access$2500(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1527
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->access$2500(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1533
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->access$2500(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1492
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->access$2500(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1502
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->access$2500(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1477
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->access$2500(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1483
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;->access$2500(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    .locals 1

    .prologue
    .line 1375
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->defaultInstance:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1356
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1356
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v0

    return-object v0
.end method

.method public getInterval()I
    .locals 1

    .prologue
    .line 1413
    iget v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->interval_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1442
    iget v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->memoizedSerializedSize:I

    .line 1443
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1452
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 1445
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 1446
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->hasInterval()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1447
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->getInterval()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1450
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 1451
    iput v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->memoizedSerializedSize:I

    move v1, v0

    .line 1452
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasInterval()Z
    .locals 1

    .prologue
    .line 1408
    iget-boolean v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->hasInterval:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1393
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->access$2400()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1420
    iget-boolean v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->hasInterval:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1421
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;
    .locals 1

    .prologue
    .line 1542
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1356
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->newBuilderForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1356
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->newBuilderForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;
    .locals 1

    .prologue
    .line 1550
    invoke-static {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->newBuilder(Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1356
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->toBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1356
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->toBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval$Builder;

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
    .line 1430
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->hasInterval()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1431
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->getInterval()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1433
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 1434
    return-void
.end method
