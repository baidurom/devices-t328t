.class public final Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateMyProfile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;
    }
.end annotation


# static fields
.field public static final MYPROFILE_FIELD_NUMBER:I = 0x3f6

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;


# instance fields
.field private hasMyProfile:Z

.field private memoizedSerializedSize:I

.field private myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24999
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    .line 25419
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 25423
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 25424
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24997
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 25041
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .line 25075
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->memoizedSerializedSize:I

    .line 24997
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24994
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;-><init>()V

    return-void
.end method

.method static synthetic access$47302(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24994
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->hasMyProfile:Z

    return p1
.end method

.method static synthetic access$47400(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24994
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    return-object v0
.end method

.method static synthetic access$47402(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24994
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    .locals 1

    .prologue
    .line 25005
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 25022
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$46800()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;
    .locals 1

    .prologue
    .line 25180
    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->access$47100()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 25187
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25150
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->access$47000(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25160
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->access$47000(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25101
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->access$47000(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25111
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->access$47000(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25166
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->access$47000(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25172
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->access$47000(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25131
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->access$47000(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25141
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->access$47000(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25116
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->access$47000(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25122
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->access$47000(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    .locals 1

    .prologue
    .line 25013
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 24994
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 24994
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1

    .prologue
    .line 25051
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 25081
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->memoizedSerializedSize:I

    .line 25082
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 25091
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 25084
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 25085
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->hasMyProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 25086
    const/16 v2, 0x3f6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->getMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25089
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 25090
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->memoizedSerializedSize:I

    move v1, v0

    .line 25091
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasMyProfile()Z
    .locals 1

    .prologue
    .line 25046
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->hasMyProfile:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 25031
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$46900()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 25058
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->hasMyProfile:Z

    if-nez v1, :cond_1

    .line 25060
    :cond_0
    :goto_0
    return v0

    .line 25059
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->getMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25060
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;
    .locals 1

    .prologue
    .line 25185
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 24994
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 24994
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;
    .locals 1

    .prologue
    .line 25193
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 24994
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 24994
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

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
    .line 25069
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->hasMyProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25070
    const/16 v0, 0x3f6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->getMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 25072
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 25073
    return-void
.end method
