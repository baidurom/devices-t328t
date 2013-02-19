.class public final Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeletePeopleByAccountType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
    }
.end annotation


# static fields
.field public static final ACCOUNTTYPE_FIELD_NUMBER:I = 0x1f

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;


# instance fields
.field private accountType_:Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

.field private hasAccountType:Z

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3376
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    .line 3772
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 3776
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 3777
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3374
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 3418
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;->AccountGmail:Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->accountType_:Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    .line 3451
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->memoizedSerializedSize:I

    .line 3374
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3371
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;-><init>()V

    return-void
.end method

.method static synthetic access$6402(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3371
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->hasAccountType:Z

    return p1
.end method

.method static synthetic access$6502(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3371
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->accountType_:Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 1

    .prologue
    .line 3382
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3399
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$5900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
    .locals 1

    .prologue
    .line 3556
    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->access$6200()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 3563
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3526
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->access$6100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3536
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->access$6100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3477
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->access$6100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3487
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->access$6100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3542
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->access$6100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3548
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->access$6100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3507
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->access$6100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3517
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->access$6100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3492
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->access$6100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3498
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->access$6100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;
    .locals 1

    .prologue
    .line 3428
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->accountType_:Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 1

    .prologue
    .line 3390
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 3371
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3371
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 3457
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->memoizedSerializedSize:I

    .line 3458
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 3467
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 3460
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 3461
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->hasAccountType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3462
    const/16 v2, 0x1f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->getAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3465
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 3466
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->memoizedSerializedSize:I

    move v1, v0

    .line 3467
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasAccountType()Z
    .locals 1

    .prologue
    .line 3423
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->hasAccountType:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 3408
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$6000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3435
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->hasAccountType:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3436
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
    .locals 1

    .prologue
    .line 3561
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3371
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3371
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
    .locals 1

    .prologue
    .line 3569
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3371
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3371
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

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
    .line 3445
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->hasAccountType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3446
    const/16 v0, 0x1f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->getAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 3448
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 3449
    return-void
.end method
