.class public final Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddPeopleToPeopleGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;
    }
.end annotation


# static fields
.field public static final MAPPING_FIELD_NUMBER:I = 0x7a6

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;


# instance fields
.field private mapping_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36488
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    .line 36948
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 36952
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 36953
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36486
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 36529
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->mapping_:Ljava/util/List;

    .line 36574
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->memoizedSerializedSize:I

    .line 36486
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36483
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;-><init>()V

    return-void
.end method

.method static synthetic access$70200(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36483
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->mapping_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$70202(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36483
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->mapping_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    .locals 1

    .prologue
    .line 36494
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 36511
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$69700()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;
    .locals 1

    .prologue
    .line 36679
    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->access$70000()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 36686
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36649
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->access$69900(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36659
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->access$69900(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 36600
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->access$69900(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 36610
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->access$69900(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36665
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->access$69900(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36671
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->access$69900(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36630
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->access$69900(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36640
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->access$69900(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 36615
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->access$69900(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 36621
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->access$69900(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    .locals 1

    .prologue
    .line 36502
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 36483
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 36483
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getMapping(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    .locals 1
    .parameter "index"

    .prologue
    .line 36548
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->mapping_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    return-object v0
.end method

.method public getMappingCount()I
    .locals 1

    .prologue
    .line 36542
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->mapping_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMappingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36536
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->mapping_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 36580
    iget v2, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->memoizedSerializedSize:I

    .line 36581
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 36590
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 36583
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 36584
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->getMappingList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    .line 36585
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    const/16 v4, 0x7a6

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 36588
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 36589
    iput v2, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->memoizedSerializedSize:I

    move v3, v2

    .line 36590
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 36520
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$69800()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    .line 36556
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->getMappingList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    .line 36557
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 36559
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;
    .locals 1

    .prologue
    .line 36684
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 36483
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 36483
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;
    .locals 1

    .prologue
    .line 36692
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 36483
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 36483
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

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
    .line 36568
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->getMappingList()Ljava/util/List;

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

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    .line 36569
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    const/16 v2, 0x7a6

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    .line 36571
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 36572
    return-void
.end method
