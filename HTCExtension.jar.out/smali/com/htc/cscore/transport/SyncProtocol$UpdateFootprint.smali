.class public final Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateFootprint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;
    }
.end annotation


# static fields
.field public static final FOOTPRINT_FIELD_NUMBER:I = 0x4b

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;


# instance fields
.field private footprint_:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

.field private hasFootprint:Z

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12492
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    .line 12912
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 12916
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 12917
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12490
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 12534
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->footprint_:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    .line 12568
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->memoizedSerializedSize:I

    .line 12490
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12487
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;-><init>()V

    return-void
.end method

.method static synthetic access$24202(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12487
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->hasFootprint:Z

    return p1
.end method

.method static synthetic access$24300(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12487
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->footprint_:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    return-object v0
.end method

.method static synthetic access$24302(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12487
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->footprint_:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1

    .prologue
    .line 12498
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 12515
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$23700()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;
    .locals 1

    .prologue
    .line 12673
    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->access$24000()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 12680
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12643
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->access$23900(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12653
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->access$23900(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12594
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->access$23900(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12604
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->access$23900(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12659
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->access$23900(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12665
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->access$23900(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12624
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->access$23900(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12634
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->access$23900(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12609
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->access$23900(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12615
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->access$23900(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1

    .prologue
    .line 12506
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 12487
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12487
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public getFootprint()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1

    .prologue
    .line 12544
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->footprint_:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 12574
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->memoizedSerializedSize:I

    .line 12575
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 12584
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 12577
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 12578
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->hasFootprint()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12579
    const/16 v2, 0x4b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->getFootprint()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 12582
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 12583
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->memoizedSerializedSize:I

    move v1, v0

    .line 12584
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasFootprint()Z
    .locals 1

    .prologue
    .line 12539
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->hasFootprint:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 12524
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$23800()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 12551
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->hasFootprint:Z

    if-nez v1, :cond_1

    .line 12553
    :cond_0
    :goto_0
    return v0

    .line 12552
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->getFootprint()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12553
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;
    .locals 1

    .prologue
    .line 12678
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 12487
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12487
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;
    .locals 1

    .prologue
    .line 12686
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 12487
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12487
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

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
    .line 12562
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->hasFootprint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12563
    const/16 v0, 0x4b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->getFootprint()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 12565
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 12566
    return-void
.end method
