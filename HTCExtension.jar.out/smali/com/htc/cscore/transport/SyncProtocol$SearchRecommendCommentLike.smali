.class public final Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchRecommendCommentLike"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    }
.end annotation


# static fields
.field public static final APPID_FIELD_NUMBER:I = 0x631

.field public static final COUNT_FIELD_NUMBER:I = 0x56c

.field public static final KEYWORDS_FIELD_NUMBER:I = 0x667

.field public static final SORTBY_FIELD_NUMBER:I = 0xe3

.field public static final SORTDESCENDING_FIELD_NUMBER:I = 0x4e

.field public static final START_FIELD_NUMBER:I = 0x5cc

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;


# instance fields
.field private appId_:Ljava/lang/String;

.field private count_:I

.field private hasAppId:Z

.field private hasCount:Z

.field private hasKeywords:Z

.field private hasSortBy:Z

.field private hasSortDescending:Z

.field private hasStart:Z

.field private keywords_:Ljava/lang/String;

.field private memoizedSerializedSize:I

.field private sortBy_:Ljava/lang/String;

.field private sortDescending_:Z

.field private start_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53415
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    .line 54151
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 54155
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 54156
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53413
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 53457
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->keywords_:Ljava/lang/String;

    .line 53476
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->appId_:Ljava/lang/String;

    .line 53495
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->sortBy_:Ljava/lang/String;

    .line 53514
    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->sortDescending_:Z

    .line 53533
    iput v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->start_:I

    .line 53552
    iput v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->count_:I

    .line 53605
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->memoizedSerializedSize:I

    .line 53413
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53410
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;-><init>()V

    return-void
.end method

.method static synthetic access$102702(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53410
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasKeywords:Z

    return p1
.end method

.method static synthetic access$102802(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53410
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->keywords_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102902(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53410
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasAppId:Z

    return p1
.end method

.method static synthetic access$103002(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53410
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->appId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$103102(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53410
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortBy:Z

    return p1
.end method

.method static synthetic access$103202(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53410
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->sortBy_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$103302(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53410
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortDescending:Z

    return p1
.end method

.method static synthetic access$103402(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53410
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->sortDescending_:Z

    return p1
.end method

.method static synthetic access$103502(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53410
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasStart:Z

    return p1
.end method

.method static synthetic access$103602(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53410
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->start_:I

    return p1
.end method

.method static synthetic access$103702(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53410
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasCount:Z

    return p1
.end method

.method static synthetic access$103802(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53410
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->count_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1

    .prologue
    .line 53421
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 53438
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$102200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 1

    .prologue
    .line 53730
    #calls: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->access$102500()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 53737
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53700
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->access$102400(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53710
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->access$102400(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 53651
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->access$102400(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 53661
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->access$102400(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53716
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->access$102400(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53722
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->access$102400(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53681
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->access$102400(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53691
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->access$102400(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 53666
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->access$102400(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 53672
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->access$102400(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53486
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->appId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 53562
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->count_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1

    .prologue
    .line 53429
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 53410
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 53410
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53467
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->keywords_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 53611
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->memoizedSerializedSize:I

    .line 53612
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 53641
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 53614
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 53615
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortDescending()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53616
    const/16 v2, 0x4e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getSortDescending()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 53619
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortBy()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53620
    const/16 v2, 0xe3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getSortBy()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 53623
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasCount()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 53624
    const/16 v2, 0x56c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 53627
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasStart()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 53628
    const/16 v2, 0x5cc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getStart()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 53631
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasAppId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 53632
    const/16 v2, 0x631

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 53635
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasKeywords()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 53636
    const/16 v2, 0x667

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getKeywords()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 53639
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 53640
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->memoizedSerializedSize:I

    move v1, v0

    .line 53641
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getSortBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53505
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->sortBy_:Ljava/lang/String;

    return-object v0
.end method

.method public getSortDescending()Z
    .locals 1

    .prologue
    .line 53524
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->sortDescending_:Z

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 53543
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->start_:I

    return v0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 53481
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasAppId:Z

    return v0
.end method

.method public hasCount()Z
    .locals 1

    .prologue
    .line 53557
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasCount:Z

    return v0
.end method

.method public hasKeywords()Z
    .locals 1

    .prologue
    .line 53462
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasKeywords:Z

    return v0
.end method

.method public hasSortBy()Z
    .locals 1

    .prologue
    .line 53500
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortBy:Z

    return v0
.end method

.method public hasSortDescending()Z
    .locals 1

    .prologue
    .line 53519
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortDescending:Z

    return v0
.end method

.method public hasStart()Z
    .locals 1

    .prologue
    .line 53538
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasStart:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 53447
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$102300()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 53569
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasKeywords:Z

    if-nez v1, :cond_1

    .line 53575
    :cond_0
    :goto_0
    return v0

    .line 53570
    :cond_1
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasAppId:Z

    if-eqz v1, :cond_0

    .line 53571
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortBy:Z

    if-eqz v1, :cond_0

    .line 53572
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortDescending:Z

    if-eqz v1, :cond_0

    .line 53573
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasStart:Z

    if-eqz v1, :cond_0

    .line 53574
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasCount:Z

    if-eqz v1, :cond_0

    .line 53575
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 1

    .prologue
    .line 53735
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 53410
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 53410
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 1

    .prologue
    .line 53743
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 53410
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 53410
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

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
    .line 53584
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortDescending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53585
    const/16 v0, 0x4e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getSortDescending()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 53587
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortBy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53588
    const/16 v0, 0xe3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getSortBy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 53590
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53591
    const/16 v0, 0x56c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 53593
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53594
    const/16 v0, 0x5cc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getStart()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 53596
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 53597
    const/16 v0, 0x631

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 53599
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasKeywords()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 53600
    const/16 v0, 0x667

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getKeywords()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 53602
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 53603
    return-void
.end method
