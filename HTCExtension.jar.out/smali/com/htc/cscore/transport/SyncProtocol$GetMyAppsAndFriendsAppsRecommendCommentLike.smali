.class public final Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetMyAppsAndFriendsAppsRecommendCommentLike"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;
    }
.end annotation


# static fields
.field public static final APPID_FIELD_NUMBER:I = 0x631

.field public static final APPTYPE_FIELD_NUMBER:I = 0x78a

.field public static final COUNT_FIELD_NUMBER:I = 0x56c

.field public static final SORTBY_FIELD_NUMBER:I = 0xe3

.field public static final SORTDESCENDING_FIELD_NUMBER:I = 0x4e

.field public static final START_FIELD_NUMBER:I = 0x5cc

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;


# instance fields
.field private appId_:Ljava/lang/String;

.field private appType_:Ljava/lang/String;

.field private count_:I

.field private hasAppId:Z

.field private hasAppType:Z

.field private hasCount:Z

.field private hasSortBy:Z

.field private hasSortDescending:Z

.field private hasStart:Z

.field private memoizedSerializedSize:I

.field private sortBy_:Ljava/lang/String;

.field private sortDescending_:Z

.field private start_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52059
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    .line 52795
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 52799
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 52800
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52057
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 52101
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->appId_:Ljava/lang/String;

    .line 52120
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->appType_:Ljava/lang/String;

    .line 52139
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->sortBy_:Ljava/lang/String;

    .line 52158
    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->sortDescending_:Z

    .line 52177
    iput v1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->start_:I

    .line 52196
    iput v1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->count_:I

    .line 52249
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->memoizedSerializedSize:I

    .line 52057
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52054
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;-><init>()V

    return-void
.end method

.method static synthetic access$100002(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52054
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->appType_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100102(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52054
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasSortBy:Z

    return p1
.end method

.method static synthetic access$100202(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52054
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->sortBy_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100302(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52054
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasSortDescending:Z

    return p1
.end method

.method static synthetic access$100402(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52054
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->sortDescending_:Z

    return p1
.end method

.method static synthetic access$100502(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52054
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasStart:Z

    return p1
.end method

.method static synthetic access$100602(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52054
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->start_:I

    return p1
.end method

.method static synthetic access$100702(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52054
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasCount:Z

    return p1
.end method

.method static synthetic access$100802(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52054
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->count_:I

    return p1
.end method

.method static synthetic access$99702(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52054
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasAppId:Z

    return p1
.end method

.method static synthetic access$99802(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52054
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->appId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$99902(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52054
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasAppType:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    .locals 1

    .prologue
    .line 52065
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 52082
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$99200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;
    .locals 1

    .prologue
    .line 52374
    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->access$99500()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 52381
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52344
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->access$99400(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52354
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->access$99400(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 52295
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->access$99400(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 52305
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->access$99400(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52360
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->access$99400(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52366
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->access$99400(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52325
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->access$99400(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52335
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->access$99400(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 52310
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->access$99400(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 52316
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->access$99400(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52111
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->appId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52130
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->appType_:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 52206
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->count_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    .locals 1

    .prologue
    .line 52073
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 52054
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 52054
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 52255
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->memoizedSerializedSize:I

    .line 52256
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 52285
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 52258
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 52259
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasSortDescending()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52260
    const/16 v2, 0x4e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getSortDescending()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 52263
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasSortBy()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52264
    const/16 v2, 0xe3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getSortBy()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52267
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasCount()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 52268
    const/16 v2, 0x56c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 52271
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasStart()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 52272
    const/16 v2, 0x5cc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getStart()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 52275
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasAppId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 52276
    const/16 v2, 0x631

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52279
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasAppType()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 52280
    const/16 v2, 0x78a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getAppType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52283
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 52284
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->memoizedSerializedSize:I

    move v1, v0

    .line 52285
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getSortBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52149
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->sortBy_:Ljava/lang/String;

    return-object v0
.end method

.method public getSortDescending()Z
    .locals 1

    .prologue
    .line 52168
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->sortDescending_:Z

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 52187
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->start_:I

    return v0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 52106
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasAppId:Z

    return v0
.end method

.method public hasAppType()Z
    .locals 1

    .prologue
    .line 52125
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasAppType:Z

    return v0
.end method

.method public hasCount()Z
    .locals 1

    .prologue
    .line 52201
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasCount:Z

    return v0
.end method

.method public hasSortBy()Z
    .locals 1

    .prologue
    .line 52144
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasSortBy:Z

    return v0
.end method

.method public hasSortDescending()Z
    .locals 1

    .prologue
    .line 52163
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasSortDescending:Z

    return v0
.end method

.method public hasStart()Z
    .locals 1

    .prologue
    .line 52182
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasStart:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 52091
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$99300()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 52213
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasAppId:Z

    if-nez v1, :cond_1

    .line 52219
    :cond_0
    :goto_0
    return v0

    .line 52214
    :cond_1
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasAppType:Z

    if-eqz v1, :cond_0

    .line 52215
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasSortBy:Z

    if-eqz v1, :cond_0

    .line 52216
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasSortDescending:Z

    if-eqz v1, :cond_0

    .line 52217
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasStart:Z

    if-eqz v1, :cond_0

    .line 52218
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasCount:Z

    if-eqz v1, :cond_0

    .line 52219
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;
    .locals 1

    .prologue
    .line 52379
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 52054
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 52054
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;
    .locals 1

    .prologue
    .line 52387
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 52054
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 52054
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

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
    .line 52228
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasSortDescending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52229
    const/16 v0, 0x4e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getSortDescending()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 52231
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasSortBy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52232
    const/16 v0, 0xe3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getSortBy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 52234
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52235
    const/16 v0, 0x56c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 52237
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52238
    const/16 v0, 0x5cc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getStart()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 52240
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 52241
    const/16 v0, 0x631

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 52243
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasAppType()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 52244
    const/16 v0, 0x78a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getAppType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 52246
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 52247
    return-void
.end method
