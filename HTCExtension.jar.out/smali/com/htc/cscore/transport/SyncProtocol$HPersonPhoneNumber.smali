.class public final Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HPersonPhoneNumber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;,
        Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;
    }
.end annotation


# static fields
.field public static final CANONICALPHONENUMBER_FIELD_NUMBER:I = 0x4c8

.field public static final DISPLAYPHONENUMBER_FIELD_NUMBER:I = 0x3eb

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final PERSONID_FIELD_NUMBER:I = 0x4a2

.field public static final PHONENUMBERTYPE_FIELD_NUMBER:I = 0x609

.field public static final PRIORITY_FIELD_NUMBER:I = 0x5d6

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;


# instance fields
.field private canonicalPhoneNumber_:J

.field private displayPhoneNumber_:Ljava/lang/String;

.field private hasCanonicalPhoneNumber:Z

.field private hasDisplayPhoneNumber:Z

.field private hasId:Z

.field private hasPersonId:Z

.field private hasPhoneNumberType:Z

.field private hasPriority:Z

.field private hasTimestamp:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private phoneNumberType_:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;

.field private priority_:I

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43544
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    .line 44501
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 44505
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 44506
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 43542
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 43673
    iput-wide v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->canonicalPhoneNumber_:J

    .line 43692
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->displayPhoneNumber_:Ljava/lang/String;

    .line 43711
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 43730
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 43749
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;->PhoneMobile:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->phoneNumberType_:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;

    .line 43768
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->priority_:I

    .line 43787
    iput-wide v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->timestamp_:J

    .line 43843
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->memoizedSerializedSize:I

    .line 43542
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43539
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;-><init>()V

    return-void
.end method

.method static synthetic access$83202(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43539
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasCanonicalPhoneNumber:Z

    return p1
.end method

.method static synthetic access$83302(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43539
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->canonicalPhoneNumber_:J

    return-wide p1
.end method

.method static synthetic access$83402(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43539
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasDisplayPhoneNumber:Z

    return p1
.end method

.method static synthetic access$83502(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43539
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->displayPhoneNumber_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$83602(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43539
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasId:Z

    return p1
.end method

.method static synthetic access$83700(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43539
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$83702(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43539
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$83802(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43539
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPersonId:Z

    return p1
.end method

.method static synthetic access$83900(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43539
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$83902(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43539
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$84002(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43539
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPhoneNumberType:Z

    return p1
.end method

.method static synthetic access$84102(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43539
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->phoneNumberType_:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;

    return-object p1
.end method

.method static synthetic access$84202(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43539
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPriority:Z

    return p1
.end method

.method static synthetic access$84302(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43539
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->priority_:I

    return p1
.end method

.method static synthetic access$84402(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43539
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$84502(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43539
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    .locals 1

    .prologue
    .line 43550
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 43567
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$82700()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 1

    .prologue
    .line 43972
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->access$83000()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 43979
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43942
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->access$82900(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43952
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->access$82900(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 43893
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->access$82900(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 43903
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->access$82900(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43958
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->access$82900(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43964
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->access$82900(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43923
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->access$82900(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43933
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->access$82900(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 43908
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->access$82900(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 43914
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->access$82900(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCanonicalPhoneNumber()J
    .locals 2

    .prologue
    .line 43683
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->canonicalPhoneNumber_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    .locals 1

    .prologue
    .line 43558
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 43539
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 43539
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43702
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->displayPhoneNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 43721
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 43740
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getPhoneNumberType()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;
    .locals 1

    .prologue
    .line 43759
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->phoneNumberType_:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 43778
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->priority_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 43849
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->memoizedSerializedSize:I

    .line 43850
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 43883
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 43852
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 43853
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43854
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 43857
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasDisplayPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43858
    const/16 v2, 0x3eb

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getDisplayPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 43861
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPersonId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 43862
    const/16 v2, 0x4a2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 43865
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasCanonicalPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 43866
    const/16 v2, 0x4c8

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getCanonicalPhoneNumber()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 43869
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 43870
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 43873
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPriority()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 43874
    const/16 v2, 0x5d6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getPriority()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 43877
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPhoneNumberType()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 43878
    const/16 v2, 0x609

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getPhoneNumberType()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 43881
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 43882
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->memoizedSerializedSize:I

    move v1, v0

    .line 43883
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 43797
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->timestamp_:J

    return-wide v0
.end method

.method public hasCanonicalPhoneNumber()Z
    .locals 1

    .prologue
    .line 43678
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasCanonicalPhoneNumber:Z

    return v0
.end method

.method public hasDisplayPhoneNumber()Z
    .locals 1

    .prologue
    .line 43697
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasDisplayPhoneNumber:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 43716
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasId:Z

    return v0
.end method

.method public hasPersonId()Z
    .locals 1

    .prologue
    .line 43735
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPersonId:Z

    return v0
.end method

.method public hasPhoneNumberType()Z
    .locals 1

    .prologue
    .line 43754
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPhoneNumberType:Z

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 43773
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPriority:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 43792
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 43576
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$82800()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 43804
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43805
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 43810
    :cond_0
    :goto_0
    return v0

    .line 43807
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPersonId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 43808
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43810
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 1

    .prologue
    .line 43977
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 43539
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 43539
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 1

    .prologue
    .line 43985
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 43539
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 43539
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43819
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43820
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 43822
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasDisplayPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43823
    const/16 v0, 0x3eb

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getDisplayPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 43825
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43826
    const/16 v0, 0x4a2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 43828
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasCanonicalPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43829
    const/16 v0, 0x4c8

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getCanonicalPhoneNumber()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 43831
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 43832
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 43834
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 43835
    const/16 v0, 0x5d6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getPriority()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 43837
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPhoneNumberType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 43838
    const/16 v0, 0x609

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getPhoneNumberType()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 43840
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 43841
    return-void
.end method
