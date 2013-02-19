.class public final Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetAggregatePersonImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;
    }
.end annotation


# static fields
.field public static final PERSONIMAGE_FIELD_NUMBER:I = 0x232

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;


# instance fields
.field private hasPersonImage:Z

.field private memoizedSerializedSize:I

.field private personImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4188
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    .line 4608
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 4612
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 4613
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4186
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 4230
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    .line 4264
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->memoizedSerializedSize:I

    .line 4186
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4183
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;-><init>()V

    return-void
.end method

.method static synthetic access$7802(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4183
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->hasPersonImage:Z

    return p1
.end method

.method static synthetic access$7900(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4183
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    return-object v0
.end method

.method static synthetic access$7902(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4183
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    .locals 1

    .prologue
    .line 4194
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4211
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$7300()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;
    .locals 1

    .prologue
    .line 4369
    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->access$7600()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 4376
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4339
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->access$7500(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4349
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->access$7500(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4290
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->access$7500(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4300
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->access$7500(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4355
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->access$7500(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4361
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->access$7500(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4320
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->access$7500(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4330
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->access$7500(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4305
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->access$7500(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4311
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->access$7500(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    .locals 1

    .prologue
    .line 4202
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 4183
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4183
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public getPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    .locals 1

    .prologue
    .line 4240
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 4270
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->memoizedSerializedSize:I

    .line 4271
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 4280
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 4273
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 4274
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->hasPersonImage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4275
    const/16 v2, 0x232

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->getPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4278
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 4279
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->memoizedSerializedSize:I

    move v1, v0

    .line 4280
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasPersonImage()Z
    .locals 1

    .prologue
    .line 4235
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->hasPersonImage:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 4220
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$7400()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4247
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->hasPersonImage:Z

    if-nez v1, :cond_1

    .line 4249
    :cond_0
    :goto_0
    return v0

    .line 4248
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->getPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4249
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;
    .locals 1

    .prologue
    .line 4374
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4183
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4183
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;
    .locals 1

    .prologue
    .line 4382
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4183
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4183
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

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
    .line 4258
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->hasPersonImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4259
    const/16 v0, 0x232

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->getPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 4261
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 4262
    return-void
.end method
