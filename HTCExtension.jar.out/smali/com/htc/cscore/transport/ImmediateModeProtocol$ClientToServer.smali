.class public final Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "ImmediateModeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/ImmediateModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientToServer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;,
        Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;
    }
.end annotation


# static fields
.field public static final KEEPALIVE_FIELD_NUMBER:I = 0x2

.field public static final LOC_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;


# instance fields
.field private hasKeepAlive:Z

.field private hasLoc:Z

.field private keepAlive_:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

.field private loc_:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2221
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    invoke-direct {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->defaultInstance:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    .line 2805
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 2809
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->internalForceInit()V

    .line 2810
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2219
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 2328
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->getDefaultInstance()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->loc_:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    .line 2347
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->getDefaultInstance()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->keepAlive_:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    .line 2388
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->memoizedSerializedSize:I

    .line 2219
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/ImmediateModeProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2216
    invoke-direct {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;-><init>()V

    return-void
.end method

.method static synthetic access$4402(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2216
    iput-boolean p1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->hasLoc:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2216
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->loc_:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;)Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2216
    iput-object p1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->loc_:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2216
    iput-boolean p1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->hasKeepAlive:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2216
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->keepAlive_:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;)Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2216
    iput-object p1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->keepAlive_:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
    .locals 1

    .prologue
    .line 2227
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->defaultInstance:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2244
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->access$3900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;
    .locals 1

    .prologue
    .line 2493
    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->create()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->access$4200()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 2500
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->mergeFrom(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2467
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->access$4100(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2477
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->access$4100(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2418
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->access$4100(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2428
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->access$4100(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2483
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->access$4100(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2489
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->access$4100(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2448
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->access$4100(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2458
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->access$4100(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2433
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->access$4100(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2439
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    #calls: Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;->access$4100(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
    .locals 1

    .prologue
    .line 2235
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->defaultInstance:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2216
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2216
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;

    move-result-object v0

    return-object v0
.end method

.method public getKeepAlive()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;
    .locals 1

    .prologue
    .line 2357
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->keepAlive_:Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    return-object v0
.end method

.method public getLoc()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;
    .locals 1

    .prologue
    .line 2338
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->loc_:Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2394
    iget v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->memoizedSerializedSize:I

    .line 2395
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 2408
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 2397
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 2398
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->hasLoc()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2399
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->getLoc()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2402
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->hasKeepAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2403
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->getKeepAlive()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2406
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 2407
    iput v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->memoizedSerializedSize:I

    move v1, v0

    .line 2408
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasKeepAlive()Z
    .locals 1

    .prologue
    .line 2352
    iget-boolean v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->hasKeepAlive:Z

    return v0
.end method

.method public hasLoc()Z
    .locals 1

    .prologue
    .line 2333
    iget-boolean v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->hasLoc:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 2253
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->access$4000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2364
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->hasLoc()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2365
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->getLoc()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2370
    :cond_0
    :goto_0
    return v0

    .line 2367
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->hasKeepAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2368
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->getKeepAlive()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2370
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;
    .locals 1

    .prologue
    .line 2498
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->newBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2216
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->newBuilderForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2216
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->newBuilderForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;
    .locals 1

    .prologue
    .line 2506
    invoke-static {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->newBuilder(Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2216
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->toBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2216
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->toBuilder()Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$Builder;

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
    .line 2379
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->hasLoc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2380
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->getLoc()Lcom/htc/cscore/transport/ImmediateModeProtocol$Location;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 2382
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->hasKeepAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2383
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->getKeepAlive()Lcom/htc/cscore/transport/ImmediateModeProtocol$KeepAliveInterval;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 2385
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 2386
    return-void
.end method
