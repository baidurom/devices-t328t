.class public final Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HMyProfileOrganization"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;,
        Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final MYPROFILEID_FIELD_NUMBER:I = 0x5a7

.field public static final ORGANIZATIONNAME_FIELD_NUMBER:I = 0x79c

.field public static final ORGANIZATIONTYPE_FIELD_NUMBER:I = 0x29b

.field public static final PRIORITY_FIELD_NUMBER:I = 0x5d6

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;


# instance fields
.field private hasId:Z

.field private hasMyProfileId:Z

.field private hasOrganizationName:Z

.field private hasOrganizationType:Z

.field private hasPriority:Z

.field private hasTimestamp:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private organizationName_:Ljava/lang/String;

.field private organizationType_:I

.field private priority_:I

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31183
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    .line 32042
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 32046
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 32047
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31181
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 31290
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 31309
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 31328
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->organizationName_:Ljava/lang/String;

    .line 31347
    iput v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->organizationType_:I

    .line 31366
    iput v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->priority_:I

    .line 31385
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->timestamp_:J

    .line 31438
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->memoizedSerializedSize:I

    .line 31181
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31178
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;-><init>()V

    return-void
.end method

.method static synthetic access$59802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31178
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasId:Z

    return p1
.end method

.method static synthetic access$59900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31178
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$59902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31178
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$60002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31178
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasMyProfileId:Z

    return p1
.end method

.method static synthetic access$60100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31178
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$60102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31178
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$60202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31178
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasOrganizationName:Z

    return p1
.end method

.method static synthetic access$60302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31178
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->organizationName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$60402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31178
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasOrganizationType:Z

    return p1
.end method

.method static synthetic access$60502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31178
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->organizationType_:I

    return p1
.end method

.method static synthetic access$60602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31178
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasPriority:Z

    return p1
.end method

.method static synthetic access$60702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31178
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->priority_:I

    return p1
.end method

.method static synthetic access$60802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31178
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$60902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31178
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1

    .prologue
    .line 31189
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 31206
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$59300()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 1

    .prologue
    .line 31563
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->access$59600()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 31570
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31533
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->access$59500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31543
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->access$59500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 31484
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->access$59500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 31494
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->access$59500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31549
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->access$59500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31555
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->access$59500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31514
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->access$59500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31524
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->access$59500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 31499
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->access$59500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 31505
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->access$59500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1

    .prologue
    .line 31197
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 31178
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 31178
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 31300
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 31319
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getOrganizationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31338
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->organizationName_:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizationType()I
    .locals 1

    .prologue
    .line 31357
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->organizationType_:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 31376
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->priority_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 31444
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->memoizedSerializedSize:I

    .line 31445
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 31474
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 31447
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 31448
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 31449
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 31452
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasOrganizationType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 31453
    const/16 v2, 0x29b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getOrganizationType()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 31456
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 31457
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 31460
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasMyProfileId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 31461
    const/16 v2, 0x5a7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 31464
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasPriority()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 31465
    const/16 v2, 0x5d6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getPriority()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 31468
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasOrganizationName()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 31469
    const/16 v2, 0x79c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getOrganizationName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 31472
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 31473
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->memoizedSerializedSize:I

    move v1, v0

    .line 31474
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 31395
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->timestamp_:J

    return-wide v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 31295
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasId:Z

    return v0
.end method

.method public hasMyProfileId()Z
    .locals 1

    .prologue
    .line 31314
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasMyProfileId:Z

    return v0
.end method

.method public hasOrganizationName()Z
    .locals 1

    .prologue
    .line 31333
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasOrganizationName:Z

    return v0
.end method

.method public hasOrganizationType()Z
    .locals 1

    .prologue
    .line 31352
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasOrganizationType:Z

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 31371
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasPriority:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 31390
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 31215
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$59400()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 31402
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31403
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 31408
    :cond_0
    :goto_0
    return v0

    .line 31405
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasMyProfileId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 31406
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31408
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 1

    .prologue
    .line 31568
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 31178
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 31178
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 1

    .prologue
    .line 31576
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 31178
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 31178
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

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
    .line 31417
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31418
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 31420
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasOrganizationType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31421
    const/16 v0, 0x29b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getOrganizationType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 31423
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31424
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 31426
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31427
    const/16 v0, 0x5a7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 31429
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 31430
    const/16 v0, 0x5d6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getPriority()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 31432
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasOrganizationName()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 31433
    const/16 v0, 0x79c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getOrganizationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 31435
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 31436
    return-void
.end method
