.class public final Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeleteRecommendAppsOnPhone"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;
    }
.end annotation


# static fields
.field public static final APPSONPHONE_FIELD_NUMBER:I = 0x565

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;


# instance fields
.field private appsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

.field private hasAppsOnPhone:Z

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50610
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    .line 51030
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 51034
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 51035
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 50608
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 50652
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->appsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    .line 50686
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->memoizedSerializedSize:I

    .line 50608
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50605
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;-><init>()V

    return-void
.end method

.method static synthetic access$97002(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50605
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->hasAppsOnPhone:Z

    return p1
.end method

.method static synthetic access$97100(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50605
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->appsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    return-object v0
.end method

.method static synthetic access$97102(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50605
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->appsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    .locals 1

    .prologue
    .line 50616
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 50633
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$96500()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;
    .locals 1

    .prologue
    .line 50791
    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->access$96800()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 50798
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50761
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->access$96700(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50771
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->access$96700(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 50712
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->access$96700(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 50722
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->access$96700(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50777
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->access$96700(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50783
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->access$96700(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50742
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->access$96700(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50752
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->access$96700(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 50727
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->access$96700(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 50733
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->access$96700(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1

    .prologue
    .line 50662
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->appsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    .locals 1

    .prologue
    .line 50624
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 50605
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 50605
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 50692
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->memoizedSerializedSize:I

    .line 50693
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 50702
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 50695
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 50696
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->hasAppsOnPhone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50697
    const/16 v2, 0x565

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->getAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50700
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 50701
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->memoizedSerializedSize:I

    move v1, v0

    .line 50702
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasAppsOnPhone()Z
    .locals 1

    .prologue
    .line 50657
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->hasAppsOnPhone:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 50642
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$96600()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 50669
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->hasAppsOnPhone:Z

    if-nez v1, :cond_1

    .line 50671
    :cond_0
    :goto_0
    return v0

    .line 50670
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->getAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50671
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;
    .locals 1

    .prologue
    .line 50796
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 50605
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 50605
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;
    .locals 1

    .prologue
    .line 50804
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 50605
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 50605
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

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
    .line 50680
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->hasAppsOnPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50681
    const/16 v0, 0x565

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->getAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50683
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 50684
    return-void
.end method
