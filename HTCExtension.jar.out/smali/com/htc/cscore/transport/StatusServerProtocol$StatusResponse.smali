.class public final Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "StatusServerProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/StatusServerProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;,
        Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;
    }
.end annotation


# static fields
.field public static final MINUMUMPOLLINTERVALINSECONDS_FIELD_NUMBER:I = 0x2

.field public static final QUEUESWITHDATA_FIELD_NUMBER:I = 0x1

.field public static final SUGGESTEDPOLLVARIANCEWINDOWINSECONDS_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;


# instance fields
.field private hasMinumumPollIntervalInSeconds:Z

.field private hasSuggestedPollVarianceWindowInSeconds:Z

.field private memoizedSerializedSize:I

.field private minumumPollIntervalInSeconds_:I

.field private queuesWithData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private suggestedPollVarianceWindowInSeconds_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 418
    new-instance v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;

    invoke-direct {v0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->defaultInstance:Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;

    .line 1064
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 1068
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol;->internalForceInit()V

    .line 1069
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 416
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 526
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->queuesWithData_:Ljava/util/List;

    .line 555
    iput v1, p0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->minumumPollIntervalInSeconds_:I

    .line 574
    iput v1, p0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->suggestedPollVarianceWindowInSeconds_:I

    .line 614
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->memoizedSerializedSize:I

    .line 416
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/StatusServerProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;-><init>()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->queuesWithData_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 413
    iput-object p1, p0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->queuesWithData_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 413
    iput-boolean p1, p0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->hasMinumumPollIntervalInSeconds:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 413
    iput p1, p0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->minumumPollIntervalInSeconds_:I

    return p1
.end method

.method static synthetic access$1502(Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 413
    iput-boolean p1, p0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->hasSuggestedPollVarianceWindowInSeconds:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 413
    iput p1, p0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->suggestedPollVarianceWindowInSeconds_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;
    .locals 1

    .prologue
    .line 424
    sget-object v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->defaultInstance:Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 441
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol;->access$700()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;
    .locals 1

    .prologue
    .line 728
    #calls: Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->create()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->access$1000()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;)Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 735
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->newBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->mergeFrom(Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;)Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 702
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->newBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;

    #calls: Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->buildParsed()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;
    invoke-static {v0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->access$900(Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;)Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 712
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->newBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;

    #calls: Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->buildParsed()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;
    invoke-static {v0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->access$900(Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;)Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 653
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->newBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;

    #calls: Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->buildParsed()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;
    invoke-static {v0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->access$900(Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;)Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 663
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->newBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;

    #calls: Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->buildParsed()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;
    invoke-static {v0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->access$900(Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;)Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 718
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->newBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;

    #calls: Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->buildParsed()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;
    invoke-static {v0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->access$900(Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;)Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 724
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->newBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->buildParsed()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;
    invoke-static {v0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->access$900(Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;)Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 683
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->newBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;

    #calls: Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->buildParsed()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;
    invoke-static {v0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->access$900(Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;)Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 693
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->newBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;

    #calls: Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->buildParsed()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;
    invoke-static {v0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->access$900(Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;)Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 668
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->newBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;

    #calls: Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->buildParsed()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;
    invoke-static {v0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->access$900(Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;)Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 674
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->newBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;

    #calls: Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->buildParsed()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;
    invoke-static {v0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;->access$900(Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;)Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;
    .locals 1

    .prologue
    .line 432
    sget-object v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->defaultInstance:Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->getDefaultInstanceForType()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->getDefaultInstanceForType()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public getMinumumPollIntervalInSeconds()I
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->minumumPollIntervalInSeconds_:I

    return v0
.end method

.method public getQueuesWithData(I)Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;
    .locals 1
    .parameter "index"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->queuesWithData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

    return-object v0
.end method

.method public getQueuesWithDataCount()I
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->queuesWithData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getQueuesWithDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 533
    iget-object v0, p0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->queuesWithData_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 620
    iget v3, p0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->memoizedSerializedSize:I

    .line 621
    .local v3, size:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    move v4, v3

    .line 643
    .end local v3           #size:I
    .local v4, size:I
    :goto_0
    return v4

    .line 623
    .end local v4           #size:I
    .restart local v3       #size:I
    :cond_0
    const/4 v3, 0x0

    .line 625
    const/4 v0, 0x0

    .line 626
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->getQueuesWithDataList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

    .line 627
    .local v1, element:Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;
    invoke-virtual {v1}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;->getNumber()I

    move-result v5

    invoke-static {v5}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_1

    .line 630
    .end local v1           #element:Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;
    :cond_1
    add-int/2addr v3, v0

    .line 631
    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->getQueuesWithDataList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v5

    .line 633
    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->hasMinumumPollIntervalInSeconds()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 634
    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->getMinumumPollIntervalInSeconds()I

    move-result v6

    invoke-static {v5, v6}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v3, v5

    .line 637
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->hasSuggestedPollVarianceWindowInSeconds()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 638
    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->getSuggestedPollVarianceWindowInSeconds()I

    move-result v6

    invoke-static {v5, v6}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v3, v5

    .line 641
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v5

    add-int/2addr v3, v5

    .line 642
    iput v3, p0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->memoizedSerializedSize:I

    move v4, v3

    .line 643
    .end local v3           #size:I
    .restart local v4       #size:I
    goto :goto_0
.end method

.method public getSuggestedPollVarianceWindowInSeconds()I
    .locals 1

    .prologue
    .line 584
    iget v0, p0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->suggestedPollVarianceWindowInSeconds_:I

    return v0
.end method

.method public hasMinumumPollIntervalInSeconds()Z
    .locals 1

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->hasMinumumPollIntervalInSeconds:Z

    return v0
.end method

.method public hasSuggestedPollVarianceWindowInSeconds()Z
    .locals 1

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->hasSuggestedPollVarianceWindowInSeconds:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 450
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol;->access$800()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 591
    iget-boolean v1, p0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->hasMinumumPollIntervalInSeconds:Z

    if-nez v1, :cond_1

    .line 593
    :cond_0
    :goto_0
    return v0

    .line 592
    :cond_1
    iget-boolean v1, p0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->hasSuggestedPollVarianceWindowInSeconds:Z

    if-eqz v1, :cond_0

    .line 593
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;
    .locals 1

    .prologue
    .line 733
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->newBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->newBuilderForType()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->newBuilderForType()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;
    .locals 1

    .prologue
    .line 741
    invoke-static {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->newBuilder(Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;)Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->toBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->toBuilder()Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->getQueuesWithDataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

    .line 603
    .local v0, element:Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;
    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;->getNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    goto :goto_0

    .line 605
    .end local v0           #element:Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->hasMinumumPollIntervalInSeconds()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 606
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->getMinumumPollIntervalInSeconds()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 608
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->hasSuggestedPollVarianceWindowInSeconds()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 609
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->getSuggestedPollVarianceWindowInSeconds()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 611
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 612
    return-void
.end method
