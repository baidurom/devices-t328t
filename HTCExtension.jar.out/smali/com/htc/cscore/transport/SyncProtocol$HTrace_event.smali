.class public final Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HTrace_event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;
    }
.end annotation


# static fields
.field public static final EVENTCLASS_FIELD_NUMBER:I = 0x4a2

.field public static final EVENTNAME_FIELD_NUMBER:I = 0x309

.field public static final ID_FIELD_NUMBER:I = 0x512

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;


# instance fields
.field private eventClass_:I

.field private eventName_:Ljava/lang/String;

.field private hasEventClass:Z

.field private hasEventName:Z

.field private hasId:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59147
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    .line 59705
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 59709
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 59710
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59145
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 59189
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->eventClass_:I

    .line 59208
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->eventName_:Ljava/lang/String;

    .line 59227
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 59268
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->memoizedSerializedSize:I

    .line 59145
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59142
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;-><init>()V

    return-void
.end method

.method static synthetic access$113502(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59142
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->hasEventClass:Z

    return p1
.end method

.method static synthetic access$113602(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59142
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->eventClass_:I

    return p1
.end method

.method static synthetic access$113702(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59142
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->hasEventName:Z

    return p1
.end method

.method static synthetic access$113802(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59142
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->eventName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$113902(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59142
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->hasId:Z

    return p1
.end method

.method static synthetic access$114000(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59142
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$114002(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59142
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
    .locals 1

    .prologue
    .line 59153
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 59170
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$113000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;
    .locals 1

    .prologue
    .line 59381
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->access$113300()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 59388
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59351
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->access$113200(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59361
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->access$113200(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 59302
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->access$113200(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 59312
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->access$113200(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59367
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->access$113200(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59373
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->access$113200(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59332
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->access$113200(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59342
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->access$113200(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 59317
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->access$113200(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 59323
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->access$113200(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
    .locals 1

    .prologue
    .line 59161
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 59142
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 59142
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    move-result-object v0

    return-object v0
.end method

.method public getEventClass()I
    .locals 1

    .prologue
    .line 59199
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->eventClass_:I

    return v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59218
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->eventName_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 59237
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 59274
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->memoizedSerializedSize:I

    .line 59275
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 59292
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 59277
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 59278
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->hasEventName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59279
    const/16 v2, 0x309

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->getEventName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 59282
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->hasEventClass()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59283
    const/16 v2, 0x4a2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->getEventClass()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 59286
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->hasId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 59287
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 59290
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 59291
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->memoizedSerializedSize:I

    move v1, v0

    .line 59292
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasEventClass()Z
    .locals 1

    .prologue
    .line 59194
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->hasEventClass:Z

    return v0
.end method

.method public hasEventName()Z
    .locals 1

    .prologue
    .line 59213
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->hasEventName:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 59232
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->hasId:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 59179
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$113100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 59244
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59245
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 59247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;
    .locals 1

    .prologue
    .line 59386
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 59142
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 59142
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;
    .locals 1

    .prologue
    .line 59394
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 59142
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 59142
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

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
    .line 59256
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->hasEventName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59257
    const/16 v0, 0x309

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 59259
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->hasEventClass()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59260
    const/16 v0, 0x4a2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->getEventClass()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 59262
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59263
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 59265
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 59266
    return-void
.end method
