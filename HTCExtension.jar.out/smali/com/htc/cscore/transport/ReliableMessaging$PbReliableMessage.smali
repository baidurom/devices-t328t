.class public final Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "ReliableMessaging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/ReliableMessaging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PbReliableMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;,
        Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;
    }
.end annotation


# static fields
.field public static final PAYLOADBUF_FIELD_NUMBER:I = 0x4

.field public static final SEQUENCEID_FIELD_NUMBER:I = 0x2

.field public static final SEQUENCENUM_FIELD_NUMBER:I = 0x3

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;


# instance fields
.field private hasPayloadBuf:Z

.field private hasSequenceId:Z

.field private hasSequenceNum:Z

.field private hasType:Z

.field private memoizedSerializedSize:I

.field private payloadBuf_:Lcom/htc/protobuf/ByteString;

.field private sequenceId_:Ljava/lang/String;

.field private sequenceNum_:I

.field private type_:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    invoke-direct {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->defaultInstance:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    .line 698
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 702
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging;->internalForceInit()V

    .line 703
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 140
    sget-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->Payload:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    iput-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->type_:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    .line 159
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->sequenceId_:Ljava/lang/String;

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->sequenceNum_:I

    .line 197
    sget-object v0, Lcom/htc/protobuf/ByteString;->EMPTY:Lcom/htc/protobuf/ByteString;

    iput-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->payloadBuf_:Lcom/htc/protobuf/ByteString;

    .line 240
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->memoizedSerializedSize:I

    .line 17
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/ReliableMessaging$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->sequenceNum_:I

    return p1
.end method

.method static synthetic access$1102(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasPayloadBuf:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->payloadBuf_:Lcom/htc/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$502(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasType:Z

    return p1
.end method

.method static synthetic access$602(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->type_:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    return-object p1
.end method

.method static synthetic access$702(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasSequenceId:Z

    return p1
.end method

.method static synthetic access$802(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->sequenceId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasSequenceNum:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->defaultInstance:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging;->access$000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;
    .locals 1

    .prologue
    .line 353
    #calls: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->create()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->access$300()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 360
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->newBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->newBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    #calls: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->access$200(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->newBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    #calls: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->access$200(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->newBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    #calls: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->access$200(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->newBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    #calls: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->access$200(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->newBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    #calls: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->access$200(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->newBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->access$200(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->newBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    #calls: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->access$200(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->newBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    #calls: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->access$200(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->newBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    #calls: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->access$200(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->newBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    #calls: Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;->access$200(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->defaultInstance:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;

    move-result-object v0

    return-object v0
.end method

.method public getPayloadBuf()Lcom/htc/protobuf/ByteString;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->payloadBuf_:Lcom/htc/protobuf/ByteString;

    return-object v0
.end method

.method public getSequenceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->sequenceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceNum()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->sequenceNum_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 246
    iget v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->memoizedSerializedSize:I

    .line 247
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 268
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 249
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 250
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->getType()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasSequenceId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 255
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->getSequenceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 258
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasSequenceNum()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 259
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->getSequenceNum()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 262
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasPayloadBuf()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 263
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->getPayloadBuf()Lcom/htc/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeBytesSize(ILcom/htc/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 266
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 267
    iput v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->memoizedSerializedSize:I

    move v1, v0

    .line 268
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getType()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->type_:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    return-object v0
.end method

.method public hasPayloadBuf()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasPayloadBuf:Z

    return v0
.end method

.method public hasSequenceId()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasSequenceId:Z

    return v0
.end method

.method public hasSequenceNum()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasSequenceNum:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasType:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging;->access$100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 214
    iget-boolean v1, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasType:Z

    if-nez v1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    iget-boolean v1, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasSequenceNum:Z

    if-eqz v1, :cond_0

    .line 216
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;
    .locals 1

    .prologue
    .line 358
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->newBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->newBuilderForType()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->newBuilderForType()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;
    .locals 1

    .prologue
    .line 366
    invoke-static {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->newBuilder(Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->toBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->toBuilder()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$Builder;

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
    .line 225
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->getType()Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasSequenceId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->getSequenceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasSequenceNum()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->getSequenceNum()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 234
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->hasPayloadBuf()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 235
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->getPayloadBuf()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBytes(ILcom/htc/protobuf/ByteString;)V

    .line 237
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 238
    return-void
.end method
