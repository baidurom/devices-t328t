.class public final Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddAggregatePerson"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;
    }
.end annotation


# static fields
.field public static final PERSON_FIELD_NUMBER:I = 0x38

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;


# instance fields
.field private hasPerson:Z

.field private memoizedSerializedSize:I

.field private person_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2009
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    .line 2429
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 2433
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 2434
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2007
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 2051
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->person_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    .line 2085
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->memoizedSerializedSize:I

    .line 2007
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2004
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;-><init>()V

    return-void
.end method

.method static synthetic access$4102(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2004
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->hasPerson:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->person_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2004
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->person_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    .locals 1

    .prologue
    .line 2015
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2032
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$3600()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;
    .locals 1

    .prologue
    .line 2190
    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->access$3900()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 2197
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2160
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->access$3800(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2170
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->access$3800(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2111
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->access$3800(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2121
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->access$3800(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2176
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->access$3800(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2182
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->access$3800(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2141
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->access$3800(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2151
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->access$3800(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2126
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->access$3800(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2132
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->access$3800(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    .locals 1

    .prologue
    .line 2023
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2004
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2004
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public getPerson()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1

    .prologue
    .line 2061
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->person_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2091
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->memoizedSerializedSize:I

    .line 2092
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 2101
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 2094
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 2095
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->hasPerson()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2096
    const/16 v2, 0x38

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->getPerson()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2099
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 2100
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->memoizedSerializedSize:I

    move v1, v0

    .line 2101
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasPerson()Z
    .locals 1

    .prologue
    .line 2056
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->hasPerson:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2041
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$3700()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2068
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->hasPerson:Z

    if-nez v1, :cond_1

    .line 2070
    :cond_0
    :goto_0
    return v0

    .line 2069
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->getPerson()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2070
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;
    .locals 1

    .prologue
    .line 2195
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2004
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2004
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;
    .locals 1

    .prologue
    .line 2203
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2004
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2004
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

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
    .line 2079
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->hasPerson()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2080
    const/16 v0, 0x38

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->getPerson()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 2082
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 2083
    return-void
.end method
