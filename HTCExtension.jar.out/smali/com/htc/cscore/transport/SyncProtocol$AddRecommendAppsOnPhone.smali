.class public final Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddRecommendAppsOnPhone"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;
    }
.end annotation


# static fields
.field public static final APPSONPHONE_FIELD_NUMBER:I = 0x565

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;


# instance fields
.field private appsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

.field private hasAppsOnPhone:Z

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49251
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    .line 49671
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 49675
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 49676
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49249
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 49293
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->appsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    .line 49327
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->memoizedSerializedSize:I

    .line 49249
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49246
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;-><init>()V

    return-void
.end method

.method static synthetic access$94702(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49246
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->hasAppsOnPhone:Z

    return p1
.end method

.method static synthetic access$94800(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49246
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->appsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    return-object v0
.end method

.method static synthetic access$94802(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49246
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->appsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    .locals 1

    .prologue
    .line 49257
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 49274
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$94200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;
    .locals 1

    .prologue
    .line 49432
    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->access$94500()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 49439
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49402
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->access$94400(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49412
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->access$94400(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 49353
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->access$94400(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 49363
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->access$94400(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49418
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->access$94400(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49424
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->access$94400(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49383
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->access$94400(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49393
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->access$94400(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 49368
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->access$94400(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 49374
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->access$94400(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1

    .prologue
    .line 49303
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->appsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    .locals 1

    .prologue
    .line 49265
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 49246
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 49246
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 49333
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->memoizedSerializedSize:I

    .line 49334
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 49343
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 49336
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 49337
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->hasAppsOnPhone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49338
    const/16 v2, 0x565

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->getAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 49341
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 49342
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->memoizedSerializedSize:I

    move v1, v0

    .line 49343
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasAppsOnPhone()Z
    .locals 1

    .prologue
    .line 49298
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->hasAppsOnPhone:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 49283
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$94300()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 49310
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->hasAppsOnPhone:Z

    if-nez v1, :cond_1

    .line 49312
    :cond_0
    :goto_0
    return v0

    .line 49311
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->getAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49312
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;
    .locals 1

    .prologue
    .line 49437
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 49246
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 49246
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;
    .locals 1

    .prologue
    .line 49445
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 49246
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 49246
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

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
    .line 49321
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->hasAppsOnPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49322
    const/16 v0, 0x565

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->getAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 49324
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 49325
    return-void
.end method
