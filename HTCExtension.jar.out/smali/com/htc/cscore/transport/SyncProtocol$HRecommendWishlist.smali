.class public final Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HRecommendWishlist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;,
        Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$HWishlistAppTypes;
    }
.end annotation


# static fields
.field public static final APPID_FIELD_NUMBER:I = 0x75f

.field public static final APPTYPE_FIELD_NUMBER:I = 0x248

.field public static final APPURL_FIELD_NUMBER:I = 0x389

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final ISHTCHUBCONTENT_FIELD_NUMBER:I = 0x2df

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;


# instance fields
.field private appId_:Ljava/lang/String;

.field private appType_:Ljava/lang/String;

.field private appURL_:Ljava/lang/String;

.field private hasAppId:Z

.field private hasAppType:Z

.field private hasAppURL:Z

.field private hasId:Z

.field private hasIsHTCHubContent:Z

.field private hasTimestamp:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private isHTCHubContent_:Z

.field private memoizedSerializedSize:I

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56507
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    .line 57303
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 57307
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 57308
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 56505
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 56616
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->appId_:Ljava/lang/String;

    .line 56627
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->appType_:Ljava/lang/String;

    .line 56638
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->appURL_:Ljava/lang/String;

    .line 56649
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 56664
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->isHTCHubContent_:Z

    .line 56679
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->timestamp_:J

    .line 56725
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->memoizedSerializedSize:I

    .line 56505
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56502
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;-><init>()V

    return-void
.end method

.method static synthetic access$108502(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56502
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppId:Z

    return p1
.end method

.method static synthetic access$108602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56502
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->appId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$108702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56502
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppType:Z

    return p1
.end method

.method static synthetic access$108802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56502
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->appType_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$108902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56502
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppURL:Z

    return p1
.end method

.method static synthetic access$109002(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56502
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->appURL_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$109102(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56502
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasId:Z

    return p1
.end method

.method static synthetic access$109200(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56502
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$109202(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56502
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$109302(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56502
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasIsHTCHubContent:Z

    return p1
.end method

.method static synthetic access$109402(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56502
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->isHTCHubContent_:Z

    return p1
.end method

.method static synthetic access$109502(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56502
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$109602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56502
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1

    .prologue
    .line 56513
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 56530
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$108000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    .locals 1

    .prologue
    .line 56850
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->access$108300()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 56857
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56820
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->access$108200(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56830
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->access$108200(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 56771
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->access$108200(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 56781
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->access$108200(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56836
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->access$108200(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56842
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->access$108200(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56801
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->access$108200(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56811
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->access$108200(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 56786
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->access$108200(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 56792
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->access$108200(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56618
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->appId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56629
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->appType_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56640
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->appURL_:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1

    .prologue
    .line 56521
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 56502
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 56502
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 56655
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getIsHTCHubContent()Z
    .locals 1

    .prologue
    .line 56670
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->isHTCHubContent_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 56731
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->memoizedSerializedSize:I

    .line 56732
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 56761
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 56734
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 56735
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56736
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 56739
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56740
    const/16 v2, 0x248

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getAppType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 56743
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasIsHTCHubContent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 56744
    const/16 v2, 0x2df

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getIsHTCHubContent()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 56747
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppURL()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 56748
    const/16 v2, 0x389

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getAppURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 56751
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 56752
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 56755
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppId()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 56756
    const/16 v2, 0x75f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 56759
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 56760
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->memoizedSerializedSize:I

    move v1, v0

    .line 56761
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 56685
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->timestamp_:J

    return-wide v0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 56617
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppId:Z

    return v0
.end method

.method public hasAppType()Z
    .locals 1

    .prologue
    .line 56628
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppType:Z

    return v0
.end method

.method public hasAppURL()Z
    .locals 1

    .prologue
    .line 56639
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppURL:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 56654
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasId:Z

    return v0
.end method

.method public hasIsHTCHubContent()Z
    .locals 1

    .prologue
    .line 56665
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasIsHTCHubContent:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 56684
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 56539
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$108100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 56692
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56693
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 56695
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    .locals 1

    .prologue
    .line 56855
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 56502
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 56502
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    .locals 1

    .prologue
    .line 56863
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 56502
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 56502
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

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
    .line 56704
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56705
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 56707
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56708
    const/16 v0, 0x248

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getAppType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 56710
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasIsHTCHubContent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56711
    const/16 v0, 0x2df

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getIsHTCHubContent()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 56713
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppURL()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56714
    const/16 v0, 0x389

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getAppURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 56716
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56717
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 56719
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 56720
    const/16 v0, 0x75f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 56722
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 56723
    return-void
.end method
