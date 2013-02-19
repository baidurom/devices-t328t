.class public final Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateRecommendAppLastViewDate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;


# instance fields
.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54496
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    .line 54815
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 54819
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 54820
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54494
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 54548
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->memoizedSerializedSize:I

    .line 54494
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54491
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;-><init>()V

    return-void
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1

    .prologue
    .line 54502
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 54519
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$104400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;
    .locals 1

    .prologue
    .line 54649
    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->access$104700()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 54656
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54619
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->access$104600(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54629
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->access$104600(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 54570
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->access$104600(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 54580
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->access$104600(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54635
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->access$104600(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54641
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->access$104600(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54600
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->access$104600(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54610
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->access$104600(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 54585
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->access$104600(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 54591
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->access$104600(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1

    .prologue
    .line 54510
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 54491
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 54491
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 54554
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->memoizedSerializedSize:I

    .line 54555
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 54560
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 54557
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 54558
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 54559
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->memoizedSerializedSize:I

    move v1, v0

    .line 54560
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 54528
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$104500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 54536
    const/4 v0, 0x1

    return v0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;
    .locals 1

    .prologue
    .line 54654
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 54491
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 54491
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;
    .locals 1

    .prologue
    .line 54662
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 54491
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 54491
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

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
    .line 54545
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 54546
    return-void
.end method
