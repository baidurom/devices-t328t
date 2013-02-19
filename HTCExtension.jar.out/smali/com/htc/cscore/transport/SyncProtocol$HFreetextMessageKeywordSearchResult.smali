.class public final Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HFreetextMessageKeywordSearchResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final KEY_FIELD_NUMBER:I = 0x25c

.field public static final RANK_FIELD_NUMBER:I = 0x33d

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;


# instance fields
.field private hasId:Z

.field private hasKEY:Z

.field private hasRANK:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private kEY_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private rANK_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15402
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    .line 15992
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 15996
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 15997
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15400
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 15444
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 15463
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->kEY_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 15482
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->rANK_:I

    .line 15526
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->memoizedSerializedSize:I

    .line 15400
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15397
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;-><init>()V

    return-void
.end method

.method static synthetic access$30002(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15397
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasId:Z

    return p1
.end method

.method static synthetic access$30100(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15397
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$30102(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15397
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$30202(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15397
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasKEY:Z

    return p1
.end method

.method static synthetic access$30300(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15397
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->kEY_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$30302(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15397
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->kEY_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$30402(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15397
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasRANK:Z

    return p1
.end method

.method static synthetic access$30502(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15397
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->rANK_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 1

    .prologue
    .line 15408
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 15425
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$29500()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    .locals 1

    .prologue
    .line 15639
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->access$29800()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 15646
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15609
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->access$29700(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15619
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->access$29700(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15560
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->access$29700(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15570
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->access$29700(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15625
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->access$29700(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15631
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->access$29700(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15590
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->access$29700(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15600
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->access$29700(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15575
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->access$29700(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15581
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;->access$29700(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;
    .locals 1

    .prologue
    .line 15416
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 15397
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15397
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 15454
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getKEY()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 15473
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->kEY_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getRANK()I
    .locals 1

    .prologue
    .line 15492
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->rANK_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 15532
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->memoizedSerializedSize:I

    .line 15533
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 15550
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 15535
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 15536
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasKEY()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 15537
    const/16 v2, 0x25c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getKEY()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15540
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasRANK()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15541
    const/16 v2, 0x33d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getRANK()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 15544
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 15545
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15548
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 15549
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->memoizedSerializedSize:I

    move v1, v0

    .line 15550
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 15449
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasId:Z

    return v0
.end method

.method public hasKEY()Z
    .locals 1

    .prologue
    .line 15468
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasKEY:Z

    return v0
.end method

.method public hasRANK()Z
    .locals 1

    .prologue
    .line 15487
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasRANK:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 15434
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$29600()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 15499
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15500
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 15505
    :cond_0
    :goto_0
    return v0

    .line 15502
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasKEY()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15503
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getKEY()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15505
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    .locals 1

    .prologue
    .line 15644
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 15397
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15397
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;
    .locals 1

    .prologue
    .line 15652
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;)Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 15397
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15397
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult$Builder;

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
    .line 15514
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasKEY()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15515
    const/16 v0, 0x25c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getKEY()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 15517
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasRANK()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15518
    const/16 v0, 0x33d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getRANK()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 15520
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15521
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 15523
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 15524
    return-void
.end method
