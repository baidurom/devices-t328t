.class public final Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HWallpaper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;
    }
.end annotation


# static fields
.field public static final FEEDID_FIELD_NUMBER:I = 0x40f

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field public static final TYPE_FIELD_NUMBER:I = 0x5ba

.field public static final URI_FIELD_NUMBER:I = 0x5e4

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;


# instance fields
.field private feedId_:Ljava/lang/String;

.field private hasFeedId:Z

.field private hasId:Z

.field private hasTimestamp:Z

.field private hasType:Z

.field private hasUri:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private timestamp_:J

.field private type_:Ljava/lang/String;

.field private uri_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->feedId_:Ljava/lang/String;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->timestamp_:J

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->type_:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->uri_:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;-><init>()V

    return-void
.end method

.method static synthetic access$140202(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->hasFeedId:Z

    return p1
.end method

.method static synthetic access$140302(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->feedId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$140402(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->hasId:Z

    return p1
.end method

.method static synthetic access$140500(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$140502(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$140602(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$140702(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$140802(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->hasType:Z

    return p1
.end method

.method static synthetic access$140902(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->type_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$141002(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->hasUri:Z

    return p1
.end method

.method static synthetic access$141102(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->uri_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    .locals 1

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$139700()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;
    .locals 1

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->access$140000()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->access$139900(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->access$139900(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->access$139900(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->access$139900(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->access$139900(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->access$139900(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->access$139900(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->access$139900(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->access$139900(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;->access$139900(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;
    .locals 1

    .prologue
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public getFeedId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->feedId_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->memoizedSerializedSize:I

    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->hasFeedId()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x40f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->getFeedId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->hasId()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->hasType()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x5ba

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->hasUri()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x5e4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->memoizedSerializedSize:I

    move v1, v0

    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->timestamp_:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->uri_:Ljava/lang/String;

    return-object v0
.end method

.method public hasFeedId()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->hasFeedId:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->hasId:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->hasTimestamp:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->hasType:Z

    return v0
.end method

.method public hasUri()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->hasUri:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$139800()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;
    .locals 1

    .prologue
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;
    .locals 1

    .prologue
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HWallpaper$Builder;

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
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->hasFeedId()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x40f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->getFeedId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x5ba

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->hasUri()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x5e4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    return-void
.end method
