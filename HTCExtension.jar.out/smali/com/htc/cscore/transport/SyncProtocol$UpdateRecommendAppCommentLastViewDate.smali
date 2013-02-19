.class public final Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateRecommendAppCommentLastViewDate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;


# instance fields
.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54164
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    .line 54483
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 54487
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 54488
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54162
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 54216
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->memoizedSerializedSize:I

    .line 54162
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54159
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;-><init>()V

    return-void
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1

    .prologue
    .line 54170
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 54187
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$103900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;
    .locals 1

    .prologue
    .line 54317
    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->access$104200()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 54324
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54287
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->access$104100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54297
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->access$104100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 54238
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->access$104100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 54248
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->access$104100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54303
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->access$104100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54309
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->access$104100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54268
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->access$104100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54278
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->access$104100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 54253
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->access$104100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 54259
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->access$104100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1

    .prologue
    .line 54178
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 54159
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 54159
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 54222
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->memoizedSerializedSize:I

    .line 54223
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 54228
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 54225
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 54226
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 54227
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->memoizedSerializedSize:I

    move v1, v0

    .line 54228
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 54196
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$104000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 54204
    const/4 v0, 0x1

    return v0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;
    .locals 1

    .prologue
    .line 54322
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 54159
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 54159
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;
    .locals 1

    .prologue
    .line 54330
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 54159
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 54159
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 1
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54213
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 54214
    return-void
.end method
