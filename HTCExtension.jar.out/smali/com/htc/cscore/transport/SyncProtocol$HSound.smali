.class public final Lcom/htc/cscore/transport/SyncProtocol$HSound;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HSound"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;
    }
.end annotation


# static fields
.field public static final FEEDID_FIELD_NUMBER:I = 0x40f

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field public static final TYPE_FIELD_NUMBER:I = 0x5ba

.field public static final URI_FIELD_NUMBER:I = 0x5e4

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HSound;


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

    .prologue
    .line 57316
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSound;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    .line 58014
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 58018
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 58019
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 57314
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 57358
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->feedId_:Ljava/lang/String;

    .line 57377
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 57396
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->timestamp_:J

    .line 57415
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->type_:Ljava/lang/String;

    .line 57434
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->uri_:Ljava/lang/String;

    .line 57481
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->memoizedSerializedSize:I

    .line 57314
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57311
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;-><init>()V

    return-void
.end method

.method static synthetic access$110202(Lcom/htc/cscore/transport/SyncProtocol$HSound;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57311
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasFeedId:Z

    return p1
.end method

.method static synthetic access$110302(Lcom/htc/cscore/transport/SyncProtocol$HSound;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57311
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->feedId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$110402(Lcom/htc/cscore/transport/SyncProtocol$HSound;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57311
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasId:Z

    return p1
.end method

.method static synthetic access$110500(Lcom/htc/cscore/transport/SyncProtocol$HSound;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57311
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$110502(Lcom/htc/cscore/transport/SyncProtocol$HSound;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57311
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$110602(Lcom/htc/cscore/transport/SyncProtocol$HSound;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57311
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$110702(Lcom/htc/cscore/transport/SyncProtocol$HSound;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57311
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$110802(Lcom/htc/cscore/transport/SyncProtocol$HSound;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57311
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasType:Z

    return p1
.end method

.method static synthetic access$110902(Lcom/htc/cscore/transport/SyncProtocol$HSound;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57311
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->type_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$111002(Lcom/htc/cscore/transport/SyncProtocol$HSound;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57311
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasUri:Z

    return p1
.end method

.method static synthetic access$111102(Lcom/htc/cscore/transport/SyncProtocol$HSound;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57311
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->uri_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HSound;
    .locals 1

    .prologue
    .line 57322
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 57339
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$109700()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;
    .locals 1

    .prologue
    .line 57602
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->access$110000()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HSound;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 57609
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HSound;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HSound;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57572
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSound;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->access$109900(Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSound;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57582
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSound;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->access$109900(Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HSound;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 57523
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSound;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->access$109900(Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSound;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 57533
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSound;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->access$109900(Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HSound;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57588
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSound;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->access$109900(Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSound;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57594
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSound;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->access$109900(Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HSound;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57553
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSound;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->access$109900(Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSound;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57563
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSound;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->access$109900(Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HSound;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 57538
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSound;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->access$109900(Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSound;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 57544
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSound;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;->access$109900(Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSound;
    .locals 1

    .prologue
    .line 57330
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HSound;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 57311
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 57311
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSound;

    move-result-object v0

    return-object v0
.end method

.method public getFeedId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57368
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->feedId_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 57387
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 57487
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->memoizedSerializedSize:I

    .line 57488
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 57513
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 57490
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 57491
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57492
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 57495
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasFeedId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57496
    const/16 v2, 0x40f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getFeedId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 57499
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57500
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 57503
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasType()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 57504
    const/16 v2, 0x5ba

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 57507
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasUri()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 57508
    const/16 v2, 0x5e4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 57511
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 57512
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->memoizedSerializedSize:I

    move v1, v0

    .line 57513
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 57406
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->timestamp_:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57425
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57444
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->uri_:Ljava/lang/String;

    return-object v0
.end method

.method public hasFeedId()Z
    .locals 1

    .prologue
    .line 57363
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasFeedId:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 57382
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasId:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 57401
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasTimestamp:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 57420
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasType:Z

    return v0
.end method

.method public hasUri()Z
    .locals 1

    .prologue
    .line 57439
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasUri:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 57348
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$109800()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 57451
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57452
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 57454
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;
    .locals 1

    .prologue
    .line 57607
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 57311
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 57311
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;
    .locals 1

    .prologue
    .line 57615
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HSound;)Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 57311
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 57311
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSound$Builder;

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
    .line 57463
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57464
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 57466
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasFeedId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57467
    const/16 v0, 0x40f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getFeedId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 57469
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57470
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 57472
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57473
    const/16 v0, 0x5ba

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 57475
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->hasUri()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 57476
    const/16 v0, 0x5e4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 57478
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSound;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 57479
    return-void
.end method
