.class public final Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetFootprintImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;
    }
.end annotation


# static fields
.field public static final FOOTPRINTIMAGE_FIELD_NUMBER:I = 0x24e

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;


# instance fields
.field private footprintImage_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

.field private hasFootprintImage:Z

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11626
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    .line 12046
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 12050
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 12051
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11624
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 11668
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->footprintImage_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    .line 11702
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->memoizedSerializedSize:I

    .line 11624
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11621
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;-><init>()V

    return-void
.end method

.method static synthetic access$22802(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11621
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->hasFootprintImage:Z

    return p1
.end method

.method static synthetic access$22900(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11621
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->footprintImage_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    return-object v0
.end method

.method static synthetic access$22902(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11621
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->footprintImage_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    .locals 1

    .prologue
    .line 11632
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 11649
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$22300()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;
    .locals 1

    .prologue
    .line 11807
    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->access$22600()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 11814
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11777
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->access$22500(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11787
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->access$22500(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11728
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->access$22500(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11738
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->access$22500(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11793
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->access$22500(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11799
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->access$22500(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11758
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->access$22500(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11768
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->access$22500(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11743
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->access$22500(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11749
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->access$22500(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    .locals 1

    .prologue
    .line 11640
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 11621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public getFootprintImage()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    .locals 1

    .prologue
    .line 11678
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->footprintImage_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 11708
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->memoizedSerializedSize:I

    .line 11709
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 11718
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 11711
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 11712
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->hasFootprintImage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11713
    const/16 v2, 0x24e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->getFootprintImage()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 11716
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 11717
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->memoizedSerializedSize:I

    move v1, v0

    .line 11718
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasFootprintImage()Z
    .locals 1

    .prologue
    .line 11673
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->hasFootprintImage:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 11658
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$22400()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 11685
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->hasFootprintImage:Z

    if-nez v1, :cond_1

    .line 11687
    :cond_0
    :goto_0
    return v0

    .line 11686
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->getFootprintImage()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11687
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;
    .locals 1

    .prologue
    .line 11812
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;
    .locals 1

    .prologue
    .line 11820
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

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
    .line 11696
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->hasFootprintImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11697
    const/16 v0, 0x24e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->getFootprintImage()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 11699
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 11700
    return-void
.end method
