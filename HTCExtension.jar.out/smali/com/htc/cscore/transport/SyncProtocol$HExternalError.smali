.class public final Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HExternalError"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;,
        Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;
    }
.end annotation


# static fields
.field public static final ERRORCODETYPE_FIELD_NUMBER:I = 0x7bf

.field public static final ERRORCODE_FIELD_NUMBER:I = 0xb1

.field public static final ERRORSTRING_FIELD_NUMBER:I = 0x73e

.field public static final ISSERVERERROR_FIELD_NUMBER:I = 0x419

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;


# instance fields
.field private errorCodeType_:Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;

.field private errorCode_:I

.field private errorString_:Ljava/lang/String;

.field private hasErrorCode:Z

.field private hasErrorCodeType:Z

.field private hasErrorString:Z

.field private hasIsServerError:Z

.field private isServerError_:Z

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7314
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    .line 7994
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 7998
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 7999
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7312
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 7437
    iput v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorCode_:I

    .line 7456
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;->GeneralError:Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorCodeType_:Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;

    .line 7475
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorString_:Ljava/lang/String;

    .line 7494
    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->isServerError_:Z

    .line 7535
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->memoizedSerializedSize:I

    .line 7312
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 7309
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;-><init>()V

    return-void
.end method

.method static synthetic access$14102(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7309
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCode:Z

    return p1
.end method

.method static synthetic access$14202(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7309
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorCode_:I

    return p1
.end method

.method static synthetic access$14302(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7309
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCodeType:Z

    return p1
.end method

.method static synthetic access$14402(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7309
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorCodeType_:Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;

    return-object p1
.end method

.method static synthetic access$14502(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7309
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorString:Z

    return p1
.end method

.method static synthetic access$14602(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7309
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorString_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$14702(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7309
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasIsServerError:Z

    return p1
.end method

.method static synthetic access$14802(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7309
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->isServerError_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1

    .prologue
    .line 7320
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7337
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$13600()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 1

    .prologue
    .line 7652
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->access$13900()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 7659
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7622
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->access$13800(Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7632
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->access$13800(Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7573
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->access$13800(Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7583
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->access$13800(Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7638
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->access$13800(Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7644
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->access$13800(Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7603
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->access$13800(Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7613
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->access$13800(Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7588
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->access$13800(Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7594
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->access$13800(Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1

    .prologue
    .line 7328
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 7309
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7309
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 7447
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorCode_:I

    return v0
.end method

.method public getErrorCodeType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;
    .locals 1

    .prologue
    .line 7466
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorCodeType_:Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;

    return-object v0
.end method

.method public getErrorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7485
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorString_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsServerError()Z
    .locals 1

    .prologue
    .line 7504
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->isServerError_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 7541
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->memoizedSerializedSize:I

    .line 7542
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 7563
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 7544
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 7545
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7546
    const/16 v2, 0xb1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getErrorCode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 7549
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasIsServerError()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7550
    const/16 v2, 0x419

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getIsServerError()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 7553
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorString()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7554
    const/16 v2, 0x73e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getErrorString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7557
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCodeType()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7558
    const/16 v2, 0x7bf

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getErrorCodeType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 7561
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 7562
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->memoizedSerializedSize:I

    move v1, v0

    .line 7563
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasErrorCode()Z
    .locals 1

    .prologue
    .line 7442
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCode:Z

    return v0
.end method

.method public hasErrorCodeType()Z
    .locals 1

    .prologue
    .line 7461
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCodeType:Z

    return v0
.end method

.method public hasErrorString()Z
    .locals 1

    .prologue
    .line 7480
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorString:Z

    return v0
.end method

.method public hasIsServerError()Z
    .locals 1

    .prologue
    .line 7499
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasIsServerError:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 7346
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$13700()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7511
    const/4 v0, 0x1

    return v0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 1

    .prologue
    .line 7657
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7309
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7309
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 1

    .prologue
    .line 7665
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7309
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7309
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

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
    .line 7520
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7521
    const/16 v0, 0xb1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7523
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasIsServerError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7524
    const/16 v0, 0x419

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getIsServerError()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7526
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorString()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7527
    const/16 v0, 0x73e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getErrorString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 7529
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCodeType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7530
    const/16 v0, 0x7bf

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getErrorCodeType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7532
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 7533
    return-void
.end method
