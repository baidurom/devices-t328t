.class public final Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetRecommendNewApplicationCommentsLikes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;
    }
.end annotation


# static fields
.field public static final COUNT_FIELD_NUMBER:I = 0x56c

.field public static final SORTBY_FIELD_NUMBER:I = 0xe3

.field public static final SORTDESCENDING_FIELD_NUMBER:I = 0x4e

.field public static final START_FIELD_NUMBER:I = 0x5cc

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;


# instance fields
.field private count_:I

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
    .line 52808
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    .line 53402
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 53406
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 53407
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52806
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 52850
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->sortBy_:Ljava/lang/String;

    .line 52869
    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->sortDescending_:Z

    .line 52888
    iput v1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->start_:I

    .line 52907
    iput v1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->count_:I

    .line 52952
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->memoizedSerializedSize:I

    .line 52806
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52803
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;-><init>()V

    return-void
.end method

.method static synthetic access$101402(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52803
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasSortBy:Z

    return p1
.end method

.method static synthetic access$101502(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52803
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->sortBy_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$101602(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52803
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasSortDescending:Z

    return p1
.end method

.method static synthetic access$101702(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52803
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->sortDescending_:Z

    return p1
.end method

.method static synthetic access$101802(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52803
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasStart:Z

    return p1
.end method

.method static synthetic access$101902(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52803
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->start_:I

    return p1
.end method

.method static synthetic access$102002(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52803
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasCount:Z

    return p1
.end method

.method static synthetic access$102102(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52803
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->count_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    .locals 1

    .prologue
    .line 52814
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 52831
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$100900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;
    .locals 1

    .prologue
    .line 53069
    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->access$101200()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 53076
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53039
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->access$101100(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53049
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->access$101100(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 52990
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->access$101100(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 53000
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->access$101100(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53055
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->access$101100(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53061
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->access$101100(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53020
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->access$101100(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53030
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->access$101100(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 53005
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->access$101100(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 53011
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->access$101100(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 52917
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->count_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    .locals 1

    .prologue
    .line 52822
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 52803
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 52803
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 52958
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->memoizedSerializedSize:I

    .line 52959
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 52980
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 52961
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 52962
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasSortDescending()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52963
    const/16 v2, 0x4e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getSortDescending()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 52966
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasSortBy()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52967
    const/16 v2, 0xe3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getSortBy()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52970
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasCount()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 52971
    const/16 v2, 0x56c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 52974
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasStart()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 52975
    const/16 v2, 0x5cc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getStart()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 52978
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 52979
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->memoizedSerializedSize:I

    move v1, v0

    .line 52980
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getSortBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52860
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->sortBy_:Ljava/lang/String;

    return-object v0
.end method

.method public getSortDescending()Z
    .locals 1

    .prologue
    .line 52879
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->sortDescending_:Z

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 52898
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->start_:I

    return v0
.end method

.method public hasCount()Z
    .locals 1

    .prologue
    .line 52912
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasCount:Z

    return v0
.end method

.method public hasSortBy()Z
    .locals 1

    .prologue
    .line 52855
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasSortBy:Z

    return v0
.end method

.method public hasSortDescending()Z
    .locals 1

    .prologue
    .line 52874
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasSortDescending:Z

    return v0
.end method

.method public hasStart()Z
    .locals 1

    .prologue
    .line 52893
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasStart:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 52840
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$101000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 52924
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasSortBy:Z

    if-nez v1, :cond_1

    .line 52928
    :cond_0
    :goto_0
    return v0

    .line 52925
    :cond_1
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasSortDescending:Z

    if-eqz v1, :cond_0

    .line 52926
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasStart:Z

    if-eqz v1, :cond_0

    .line 52927
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasCount:Z

    if-eqz v1, :cond_0

    .line 52928
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;
    .locals 1

    .prologue
    .line 53074
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 52803
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 52803
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;
    .locals 1

    .prologue
    .line 53082
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 52803
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 52803
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

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
    .line 52937
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasSortDescending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52938
    const/16 v0, 0x4e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getSortDescending()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 52940
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasSortBy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52941
    const/16 v0, 0xe3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getSortBy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 52943
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52944
    const/16 v0, 0x56c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 52946
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52947
    const/16 v0, 0x5cc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getStart()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 52949
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 52950
    return-void
.end method
