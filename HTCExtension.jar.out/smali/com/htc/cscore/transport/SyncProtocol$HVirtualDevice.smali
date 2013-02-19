.class public final Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HVirtualDevice"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;,
        Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;,
        Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    }
.end annotation


# static fields
.field public static final ACCOUNTID_FIELD_NUMBER:I = 0x443

.field public static final ALTERNATENUMBER_FIELD_NUMBER:I = 0x1e3

.field public static final AREACODE_FIELD_NUMBER:I = 0x4c3

.field public static final BINDREQUESTID_FIELD_NUMBER:I = 0x4d7

.field public static final CALLFORWARDINGSTATE_FIELD_NUMBER:I = 0x367

.field public static final CALLFORWARDPHONENUMBER_FIELD_NUMBER:I = 0x1db

.field public static final CALLFORWARDREGIONID_FIELD_NUMBER:I = 0x3de

.field public static final COUNTRYCODE_FIELD_NUMBER:I = 0x265

.field public static final CURRENTLOCATIONLATITUDE_FIELD_NUMBER:I = 0x11f

.field public static final CURRENTLOCATIONLONGITUDE_FIELD_NUMBER:I = 0x7c2

.field public static final DEVICEVERSION_FIELD_NUMBER:I = 0x778

.field public static final FORCERINGSTATE_FIELD_NUMBER:I = 0x577

.field public static final HANDSETDEVICEID_FIELD_NUMBER:I = 0x2a2

.field public static final HANDSETLOCALE_FIELD_NUMBER:I = 0x483

.field public static final IDD_FIELD_NUMBER:I = 0x7f1

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final ISCDMA_FIELD_NUMBER:I = 0x57

.field public static final ISLOCATIONTRACKINGENABLED_FIELD_NUMBER:I = 0x497

.field public static final ISVERIFIED_FIELD_NUMBER:I = 0x5a5

.field public static final LASTCONNECTEDTIMESTAMP_FIELD_NUMBER:I = 0x18b

.field public static final LASTKNOWNLOCATION_FIELD_NUMBER:I = 0x167

.field public static final LASTSEENATTIMESTAMP_FIELD_NUMBER:I = 0x12

.field public static final LOCKEDHANDSETSTATE_FIELD_NUMBER:I = 0x655

.field public static final LOCKHANDSETMESSAGE_FIELD_NUMBER:I = 0x26

.field public static final LOCKHANDSETPIN_FIELD_NUMBER:I = 0x5ca

.field public static final MESSAGEFORWARDEMAILADDRESS_FIELD_NUMBER:I = 0x3ec

.field public static final MESSAGEFORWARDPHONENUMBER_FIELD_NUMBER:I = 0x173

.field public static final MESSAGEFORWARDPHONEREGIONID_FIELD_NUMBER:I = 0x31b

.field public static final MESSAGEFORWARDSTATEEMAIL_FIELD_NUMBER:I = 0x702

.field public static final MESSAGEFORWARDSTATEPHONE_FIELD_NUMBER:I = 0x597

.field public static final MMSMAXSIZE_FIELD_NUMBER:I = 0x42b

.field public static final MUSICVENDOR_FIELD_NUMBER:I = 0xe7

.field public static final NDD_FIELD_NUMBER:I = 0x3d2

.field public static final NEWVOICEMAILCOUNT_FIELD_NUMBER:I = 0x446

.field public static final PHONENUMBERSTRING_FIELD_NUMBER:I = 0x165

.field public static final PHONENUMBER_FIELD_NUMBER:I = 0x5cd

.field public static final PHYSICALDEVICEMODELID_FIELD_NUMBER:I = 0x6ec

.field public static final RECOMMENDSAPPCOMMENTLASTVIEWDATE_FIELD_NUMBER:I = 0x38c

.field public static final RECOMMENDSAPPLASTVIEWDATE_FIELD_NUMBER:I = 0x31c

.field public static final REMOTEDATAWIPEERASESDSTATE_FIELD_NUMBER:I = 0x710

.field public static final REMOTEDATAWIPESTATE_FIELD_NUMBER:I = 0x1b1

.field public static final RESYNCID_FIELD_NUMBER:I = 0x6ea

.field public static final RESYNCSTATEDATE_FIELD_NUMBER:I = 0x33d

.field public static final RESYNCSTATE_FIELD_NUMBER:I = 0x1ea

.field public static final TIMEOFFSETFROMUTC_FIELD_NUMBER:I = 0x35d

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;


# instance fields
.field private accountId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private alternateNumber_:Ljava/lang/String;

.field private areaCode_:Ljava/lang/String;

.field private bindRequestId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private callForwardPhoneNumber_:Ljava/lang/String;

.field private callForwardRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private callForwardingState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

.field private countryCode_:Ljava/lang/String;

.field private currentLocationLatitude_:D

.field private currentLocationLongitude_:D

.field private deviceVersion_:Ljava/lang/String;

.field private forceRingState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

.field private handsetDeviceId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private handsetLocale_:Ljava/lang/String;

.field private hasAccountId:Z

.field private hasAlternateNumber:Z

.field private hasAreaCode:Z

.field private hasBindRequestId:Z

.field private hasCallForwardPhoneNumber:Z

.field private hasCallForwardRegionId:Z

.field private hasCallForwardingState:Z

.field private hasCountryCode:Z

.field private hasCurrentLocationLatitude:Z

.field private hasCurrentLocationLongitude:Z

.field private hasDeviceVersion:Z

.field private hasForceRingState:Z

.field private hasHandsetDeviceId:Z

.field private hasHandsetLocale:Z

.field private hasIDD:Z

.field private hasId:Z

.field private hasIsCDMA:Z

.field private hasIsLocationTrackingEnabled:Z

.field private hasIsVerified:Z

.field private hasLastConnectedTimestamp:Z

.field private hasLastKnownLocation:Z

.field private hasLastSeenAtTimestamp:Z

.field private hasLockHandsetMessage:Z

.field private hasLockHandsetPin:Z

.field private hasLockedHandsetState:Z

.field private hasMMSMaxSize:Z

.field private hasMessageForwardEmailAddress:Z

.field private hasMessageForwardPhoneNumber:Z

.field private hasMessageForwardPhoneRegionId:Z

.field private hasMessageForwardStateEmail:Z

.field private hasMessageForwardStatePhone:Z

.field private hasMusicVendor:Z

.field private hasNDD:Z

.field private hasNewVoicemailCount:Z

.field private hasPhoneNumber:Z

.field private hasPhoneNumberString:Z

.field private hasPhysicalDeviceModelId:Z

.field private hasRecommendsAppCommentLastViewDate:Z

.field private hasRecommendsAppLastViewDate:Z

.field private hasRemoteDataWipeEraseSDState:Z

.field private hasRemoteDataWipeState:Z

.field private hasResyncId:Z

.field private hasResyncState:Z

.field private hasResyncStateDate:Z

.field private hasTimeOffsetFromUtc:Z

.field private hasTimestamp:Z

.field private iDD_:Ljava/lang/String;

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private isCDMA_:Z

.field private isLocationTrackingEnabled_:Z

.field private isVerified_:Z

.field private lastConnectedTimestamp_:J

.field private lastKnownLocation_:J

.field private lastSeenAtTimestamp_:J

.field private lockHandsetMessage_:Ljava/lang/String;

.field private lockHandsetPin_:Ljava/lang/String;

.field private lockedHandsetState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

.field private mMSMaxSize_:I

.field private memoizedSerializedSize:I

.field private messageForwardEmailAddress_:Ljava/lang/String;

.field private messageForwardPhoneNumber_:Ljava/lang/String;

.field private messageForwardPhoneRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private messageForwardStateEmail_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

.field private messageForwardStatePhone_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

.field private musicVendor_:I

.field private nDD_:Ljava/lang/String;

.field private newVoicemailCount_:I

.field private phoneNumberString_:Ljava/lang/String;

.field private phoneNumber_:J

.field private physicalDeviceModelId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private recommendsAppCommentLastViewDate_:J

.field private recommendsAppLastViewDate_:J

.field private remoteDataWipeEraseSDState_:Z

.field private remoteDataWipeState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

.field private resyncId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private resyncStateDate_:J

.field private resyncState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

.field private timeOffsetFromUtc_:J

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60152
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    .line 64069
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 64073
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 64074
    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 60150
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 60332
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->accountId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 60351
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->alternateNumber_:Ljava/lang/String;

    .line 60370
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->areaCode_:Ljava/lang/String;

    .line 60389
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->bindRequestId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 60408
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->Unknown:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardingState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 60427
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardPhoneNumber_:Ljava/lang/String;

    .line 60446
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 60465
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->countryCode_:Ljava/lang/String;

    .line 60484
    iput-wide v4, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->currentLocationLatitude_:D

    .line 60503
    iput-wide v4, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->currentLocationLongitude_:D

    .line 60522
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->deviceVersion_:Ljava/lang/String;

    .line 60541
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->Unknown:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->forceRingState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 60560
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->handsetDeviceId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 60579
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->handsetLocale_:Ljava/lang/String;

    .line 60598
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 60617
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->iDD_:Ljava/lang/String;

    .line 60636
    iput-boolean v3, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->isCDMA_:Z

    .line 60655
    iput-boolean v3, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->isLocationTrackingEnabled_:Z

    .line 60674
    iput-boolean v3, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->isVerified_:Z

    .line 60693
    iput-wide v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lastConnectedTimestamp_:J

    .line 60712
    iput-wide v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lastKnownLocation_:J

    .line 60731
    iput-wide v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lastSeenAtTimestamp_:J

    .line 60750
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->Unknown:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lockedHandsetState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 60769
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lockHandsetMessage_:Ljava/lang/String;

    .line 60788
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lockHandsetPin_:Ljava/lang/String;

    .line 60807
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardEmailAddress_:Ljava/lang/String;

    .line 60826
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardPhoneNumber_:Ljava/lang/String;

    .line 60845
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardPhoneRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 60864
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->Unknown:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardStateEmail_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 60883
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->Unknown:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardStatePhone_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 60902
    iput v3, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->mMSMaxSize_:I

    .line 60921
    iput v3, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->musicVendor_:I

    .line 60940
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->nDD_:Ljava/lang/String;

    .line 60959
    iput v3, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->newVoicemailCount_:I

    .line 60978
    iput-wide v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->phoneNumber_:J

    .line 60997
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->phoneNumberString_:Ljava/lang/String;

    .line 61016
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->physicalDeviceModelId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 61035
    iput-wide v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->recommendsAppCommentLastViewDate_:J

    .line 61054
    iput-wide v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->recommendsAppLastViewDate_:J

    .line 61073
    iput-boolean v3, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->remoteDataWipeEraseSDState_:Z

    .line 61092
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->Unknown:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->remoteDataWipeState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    .line 61111
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 61130
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->ResyncStateInSync:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    .line 61149
    iput-wide v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncStateDate_:J

    .line 61168
    iput-wide v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->timeOffsetFromUtc_:J

    .line 61187
    iput-wide v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->timestamp_:J

    .line 61378
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->memoizedSerializedSize:I

    .line 60150
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60147
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;-><init>()V

    return-void
.end method

.method static synthetic access$115302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAccountId:Z

    return p1
.end method

.method static synthetic access$115400(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60147
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->accountId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$115402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->accountId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$115502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAlternateNumber:Z

    return p1
.end method

.method static synthetic access$115602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->alternateNumber_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$115702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAreaCode:Z

    return p1
.end method

.method static synthetic access$115802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->areaCode_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$115902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasBindRequestId:Z

    return p1
.end method

.method static synthetic access$116000(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60147
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->bindRequestId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$116002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->bindRequestId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$116102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardingState:Z

    return p1
.end method

.method static synthetic access$116202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardingState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    return-object p1
.end method

.method static synthetic access$116302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardPhoneNumber:Z

    return p1
.end method

.method static synthetic access$116402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardPhoneNumber_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$116502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardRegionId:Z

    return p1
.end method

.method static synthetic access$116600(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60147
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$116602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$116702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCountryCode:Z

    return p1
.end method

.method static synthetic access$116802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->countryCode_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$116902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCurrentLocationLatitude:Z

    return p1
.end method

.method static synthetic access$117002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->currentLocationLatitude_:D

    return-wide p1
.end method

.method static synthetic access$117102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCurrentLocationLongitude:Z

    return p1
.end method

.method static synthetic access$117202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->currentLocationLongitude_:D

    return-wide p1
.end method

.method static synthetic access$117302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasDeviceVersion:Z

    return p1
.end method

.method static synthetic access$117402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->deviceVersion_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$117502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasForceRingState:Z

    return p1
.end method

.method static synthetic access$117602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->forceRingState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    return-object p1
.end method

.method static synthetic access$117702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetDeviceId:Z

    return p1
.end method

.method static synthetic access$117800(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60147
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->handsetDeviceId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$117802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->handsetDeviceId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$117902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetLocale:Z

    return p1
.end method

.method static synthetic access$118002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->handsetLocale_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$118102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasId:Z

    return p1
.end method

.method static synthetic access$118200(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60147
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$118202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$118302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIDD:Z

    return p1
.end method

.method static synthetic access$118402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->iDD_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$118502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsCDMA:Z

    return p1
.end method

.method static synthetic access$118602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->isCDMA_:Z

    return p1
.end method

.method static synthetic access$118702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsLocationTrackingEnabled:Z

    return p1
.end method

.method static synthetic access$118802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->isLocationTrackingEnabled_:Z

    return p1
.end method

.method static synthetic access$118902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsVerified:Z

    return p1
.end method

.method static synthetic access$119002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->isVerified_:Z

    return p1
.end method

.method static synthetic access$119102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastConnectedTimestamp:Z

    return p1
.end method

.method static synthetic access$119202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lastConnectedTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$119302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastKnownLocation:Z

    return p1
.end method

.method static synthetic access$119402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lastKnownLocation_:J

    return-wide p1
.end method

.method static synthetic access$119502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastSeenAtTimestamp:Z

    return p1
.end method

.method static synthetic access$119602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lastSeenAtTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$119702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockedHandsetState:Z

    return p1
.end method

.method static synthetic access$119802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lockedHandsetState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    return-object p1
.end method

.method static synthetic access$119902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockHandsetMessage:Z

    return p1
.end method

.method static synthetic access$120002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lockHandsetMessage_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$120102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockHandsetPin:Z

    return p1
.end method

.method static synthetic access$120202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lockHandsetPin_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$120302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardEmailAddress:Z

    return p1
.end method

.method static synthetic access$120402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardEmailAddress_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$120502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneNumber:Z

    return p1
.end method

.method static synthetic access$120602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardPhoneNumber_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$120702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneRegionId:Z

    return p1
.end method

.method static synthetic access$120800(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60147
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardPhoneRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$120802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardPhoneRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$120902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardStateEmail:Z

    return p1
.end method

.method static synthetic access$121002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardStateEmail_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    return-object p1
.end method

.method static synthetic access$121102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardStatePhone:Z

    return p1
.end method

.method static synthetic access$121202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardStatePhone_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    return-object p1
.end method

.method static synthetic access$121302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMMSMaxSize:Z

    return p1
.end method

.method static synthetic access$121402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->mMSMaxSize_:I

    return p1
.end method

.method static synthetic access$121502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMusicVendor:Z

    return p1
.end method

.method static synthetic access$121602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->musicVendor_:I

    return p1
.end method

.method static synthetic access$121702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasNDD:Z

    return p1
.end method

.method static synthetic access$121802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->nDD_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$121902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasNewVoicemailCount:Z

    return p1
.end method

.method static synthetic access$122002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->newVoicemailCount_:I

    return p1
.end method

.method static synthetic access$122102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhoneNumber:Z

    return p1
.end method

.method static synthetic access$122202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->phoneNumber_:J

    return-wide p1
.end method

.method static synthetic access$122302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhoneNumberString:Z

    return p1
.end method

.method static synthetic access$122402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->phoneNumberString_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$122502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhysicalDeviceModelId:Z

    return p1
.end method

.method static synthetic access$122600(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60147
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->physicalDeviceModelId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$122602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->physicalDeviceModelId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$122702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRecommendsAppCommentLastViewDate:Z

    return p1
.end method

.method static synthetic access$122802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->recommendsAppCommentLastViewDate_:J

    return-wide p1
.end method

.method static synthetic access$122902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRecommendsAppLastViewDate:Z

    return p1
.end method

.method static synthetic access$123002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->recommendsAppLastViewDate_:J

    return-wide p1
.end method

.method static synthetic access$123102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRemoteDataWipeEraseSDState:Z

    return p1
.end method

.method static synthetic access$123202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->remoteDataWipeEraseSDState_:Z

    return p1
.end method

.method static synthetic access$123302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRemoteDataWipeState:Z

    return p1
.end method

.method static synthetic access$123402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->remoteDataWipeState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    return-object p1
.end method

.method static synthetic access$123502(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncId:Z

    return p1
.end method

.method static synthetic access$123600(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60147
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$123602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$123702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncState:Z

    return p1
.end method

.method static synthetic access$123802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    return-object p1
.end method

.method static synthetic access$123902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncStateDate:Z

    return p1
.end method

.method static synthetic access$124002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncStateDate_:J

    return-wide p1
.end method

.method static synthetic access$124102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasTimeOffsetFromUtc:Z

    return p1
.end method

.method static synthetic access$124202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->timeOffsetFromUtc_:J

    return-wide p1
.end method

.method static synthetic access$124302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$124402(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60147
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    .locals 1

    .prologue
    .line 60158
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 60175
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$114800()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 1

    .prologue
    .line 61659
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->access$115100()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 61666
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61633
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->access$115000(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61643
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->access$115000(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 61584
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->access$115000(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 61594
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->access$115000(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61649
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->access$115000(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61655
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->access$115000(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61614
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->access$115000(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61624
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->access$115000(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 61599
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->access$115000(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 61605
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->access$115000(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccountId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 60342
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->accountId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getAlternateNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60361
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->alternateNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60380
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->areaCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getBindRequestId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 60399
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->bindRequestId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getCallForwardPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60437
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardPhoneNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public getCallForwardRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 60456
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getCallForwardingState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    .locals 1

    .prologue
    .line 60418
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->callForwardingState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60475
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->countryCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentLocationLatitude()D
    .locals 2

    .prologue
    .line 60494
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->currentLocationLatitude_:D

    return-wide v0
.end method

.method public getCurrentLocationLongitude()D
    .locals 2

    .prologue
    .line 60513
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->currentLocationLongitude_:D

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    .locals 1

    .prologue
    .line 60166
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 60147
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 60147
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60532
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->deviceVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getForceRingState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    .locals 1

    .prologue
    .line 60551
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->forceRingState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    return-object v0
.end method

.method public getHandsetDeviceId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 60570
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->handsetDeviceId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getHandsetLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60589
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->handsetLocale_:Ljava/lang/String;

    return-object v0
.end method

.method public getIDD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60627
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->iDD_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 60608
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getIsCDMA()Z
    .locals 1

    .prologue
    .line 60646
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->isCDMA_:Z

    return v0
.end method

.method public getIsLocationTrackingEnabled()Z
    .locals 1

    .prologue
    .line 60665
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->isLocationTrackingEnabled_:Z

    return v0
.end method

.method public getIsVerified()Z
    .locals 1

    .prologue
    .line 60684
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->isVerified_:Z

    return v0
.end method

.method public getLastConnectedTimestamp()J
    .locals 2

    .prologue
    .line 60703
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lastConnectedTimestamp_:J

    return-wide v0
.end method

.method public getLastKnownLocation()J
    .locals 2

    .prologue
    .line 60722
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lastKnownLocation_:J

    return-wide v0
.end method

.method public getLastSeenAtTimestamp()J
    .locals 2

    .prologue
    .line 60741
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lastSeenAtTimestamp_:J

    return-wide v0
.end method

.method public getLockHandsetMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60779
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lockHandsetMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getLockHandsetPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60798
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lockHandsetPin_:Ljava/lang/String;

    return-object v0
.end method

.method public getLockedHandsetState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    .locals 1

    .prologue
    .line 60760
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->lockedHandsetState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    return-object v0
.end method

.method public getMMSMaxSize()I
    .locals 1

    .prologue
    .line 60912
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->mMSMaxSize_:I

    return v0
.end method

.method public getMessageForwardEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60817
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardEmailAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageForwardPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60836
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardPhoneNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageForwardPhoneRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 60855
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardPhoneRegionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getMessageForwardStateEmail()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    .locals 1

    .prologue
    .line 60874
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardStateEmail_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    return-object v0
.end method

.method public getMessageForwardStatePhone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    .locals 1

    .prologue
    .line 60893
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->messageForwardStatePhone_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    return-object v0
.end method

.method public getMusicVendor()I
    .locals 1

    .prologue
    .line 60931
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->musicVendor_:I

    return v0
.end method

.method public getNDD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60950
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->nDD_:Ljava/lang/String;

    return-object v0
.end method

.method public getNewVoicemailCount()I
    .locals 1

    .prologue
    .line 60969
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->newVoicemailCount_:I

    return v0
.end method

.method public getPhoneNumber()J
    .locals 2

    .prologue
    .line 60988
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->phoneNumber_:J

    return-wide v0
.end method

.method public getPhoneNumberString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61007
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->phoneNumberString_:Ljava/lang/String;

    return-object v0
.end method

.method public getPhysicalDeviceModelId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 61026
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->physicalDeviceModelId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getRecommendsAppCommentLastViewDate()J
    .locals 2

    .prologue
    .line 61045
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->recommendsAppCommentLastViewDate_:J

    return-wide v0
.end method

.method public getRecommendsAppLastViewDate()J
    .locals 2

    .prologue
    .line 61064
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->recommendsAppLastViewDate_:J

    return-wide v0
.end method

.method public getRemoteDataWipeEraseSDState()Z
    .locals 1

    .prologue
    .line 61083
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->remoteDataWipeEraseSDState_:Z

    return v0
.end method

.method public getRemoteDataWipeState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;
    .locals 1

    .prologue
    .line 61102
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->remoteDataWipeState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    return-object v0
.end method

.method public getResyncId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 61121
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getResyncState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;
    .locals 1

    .prologue
    .line 61140
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncState_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    return-object v0
.end method

.method public getResyncStateDate()J
    .locals 2

    .prologue
    .line 61159
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->resyncStateDate_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 61384
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->memoizedSerializedSize:I

    .line 61385
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 61574
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 61387
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 61388
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastSeenAtTimestamp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61389
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLastSeenAtTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 61392
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockHandsetMessage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 61393
    const/16 v2, 0x26

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLockHandsetMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 61396
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsCDMA()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 61397
    const/16 v2, 0x57

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getIsCDMA()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 61400
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMusicVendor()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 61401
    const/16 v2, 0xe7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMusicVendor()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 61404
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCurrentLocationLatitude()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 61405
    const/16 v2, 0x11f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCurrentLocationLatitude()D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 61408
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhoneNumberString()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 61409
    const/16 v2, 0x165

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getPhoneNumberString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 61412
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastKnownLocation()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 61413
    const/16 v2, 0x167

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLastKnownLocation()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 61416
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 61417
    const/16 v2, 0x173

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 61420
    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastConnectedTimestamp()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 61421
    const/16 v2, 0x18b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLastConnectedTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 61424
    :cond_9
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRemoteDataWipeState()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 61425
    const/16 v2, 0x1b1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getRemoteDataWipeState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 61428
    :cond_a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 61429
    const/16 v2, 0x1db

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCallForwardPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 61432
    :cond_b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAlternateNumber()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 61433
    const/16 v2, 0x1e3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getAlternateNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 61436
    :cond_c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncState()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 61437
    const/16 v2, 0x1ea

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getResyncState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 61440
    :cond_d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 61441
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 61444
    :cond_e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCountryCode()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 61445
    const/16 v2, 0x265

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 61448
    :cond_f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetDeviceId()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 61449
    const/16 v2, 0x2a2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getHandsetDeviceId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 61452
    :cond_10
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneRegionId()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 61453
    const/16 v2, 0x31b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardPhoneRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 61456
    :cond_11
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRecommendsAppLastViewDate()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 61457
    const/16 v2, 0x31c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getRecommendsAppLastViewDate()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 61460
    :cond_12
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncStateDate()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 61461
    const/16 v2, 0x33d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getResyncStateDate()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 61464
    :cond_13
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasTimeOffsetFromUtc()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 61465
    const/16 v2, 0x35d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getTimeOffsetFromUtc()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 61468
    :cond_14
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardingState()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 61469
    const/16 v2, 0x367

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCallForwardingState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 61472
    :cond_15
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRecommendsAppCommentLastViewDate()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 61473
    const/16 v2, 0x38c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getRecommendsAppCommentLastViewDate()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 61476
    :cond_16
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasNDD()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 61477
    const/16 v2, 0x3d2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getNDD()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 61480
    :cond_17
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardRegionId()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 61481
    const/16 v2, 0x3de

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCallForwardRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 61484
    :cond_18
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardEmailAddress()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 61485
    const/16 v2, 0x3ec

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 61488
    :cond_19
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMMSMaxSize()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 61489
    const/16 v2, 0x42b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMMSMaxSize()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 61492
    :cond_1a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAccountId()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 61493
    const/16 v2, 0x443

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getAccountId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 61496
    :cond_1b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasNewVoicemailCount()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 61497
    const/16 v2, 0x446

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getNewVoicemailCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 61500
    :cond_1c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetLocale()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 61501
    const/16 v2, 0x483

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getHandsetLocale()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 61504
    :cond_1d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsLocationTrackingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 61505
    const/16 v2, 0x497

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getIsLocationTrackingEnabled()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 61508
    :cond_1e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAreaCode()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 61509
    const/16 v2, 0x4c3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 61512
    :cond_1f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasBindRequestId()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 61513
    const/16 v2, 0x4d7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getBindRequestId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 61516
    :cond_20
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasId()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 61517
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 61520
    :cond_21
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasForceRingState()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 61521
    const/16 v2, 0x577

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getForceRingState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 61524
    :cond_22
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardStatePhone()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 61525
    const/16 v2, 0x597

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardStatePhone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 61528
    :cond_23
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsVerified()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 61529
    const/16 v2, 0x5a5

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getIsVerified()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 61532
    :cond_24
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockHandsetPin()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 61533
    const/16 v2, 0x5ca

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLockHandsetPin()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 61536
    :cond_25
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 61537
    const/16 v2, 0x5cd

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getPhoneNumber()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 61540
    :cond_26
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockedHandsetState()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 61541
    const/16 v2, 0x655

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLockedHandsetState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 61544
    :cond_27
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncId()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 61545
    const/16 v2, 0x6ea

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getResyncId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 61548
    :cond_28
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhysicalDeviceModelId()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 61549
    const/16 v2, 0x6ec

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getPhysicalDeviceModelId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 61552
    :cond_29
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardStateEmail()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 61553
    const/16 v2, 0x702

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardStateEmail()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 61556
    :cond_2a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRemoteDataWipeEraseSDState()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 61557
    const/16 v2, 0x710

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getRemoteDataWipeEraseSDState()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 61560
    :cond_2b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasDeviceVersion()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 61561
    const/16 v2, 0x778

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDeviceVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 61564
    :cond_2c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCurrentLocationLongitude()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 61565
    const/16 v2, 0x7c2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCurrentLocationLongitude()D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 61568
    :cond_2d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIDD()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 61569
    const/16 v2, 0x7f1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getIDD()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 61572
    :cond_2e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 61573
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->memoizedSerializedSize:I

    move v1, v0

    .line 61574
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getTimeOffsetFromUtc()J
    .locals 2

    .prologue
    .line 61178
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->timeOffsetFromUtc_:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 61197
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->timestamp_:J

    return-wide v0
.end method

.method public hasAccountId()Z
    .locals 1

    .prologue
    .line 60337
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAccountId:Z

    return v0
.end method

.method public hasAlternateNumber()Z
    .locals 1

    .prologue
    .line 60356
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAlternateNumber:Z

    return v0
.end method

.method public hasAreaCode()Z
    .locals 1

    .prologue
    .line 60375
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAreaCode:Z

    return v0
.end method

.method public hasBindRequestId()Z
    .locals 1

    .prologue
    .line 60394
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasBindRequestId:Z

    return v0
.end method

.method public hasCallForwardPhoneNumber()Z
    .locals 1

    .prologue
    .line 60432
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardPhoneNumber:Z

    return v0
.end method

.method public hasCallForwardRegionId()Z
    .locals 1

    .prologue
    .line 60451
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardRegionId:Z

    return v0
.end method

.method public hasCallForwardingState()Z
    .locals 1

    .prologue
    .line 60413
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardingState:Z

    return v0
.end method

.method public hasCountryCode()Z
    .locals 1

    .prologue
    .line 60470
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCountryCode:Z

    return v0
.end method

.method public hasCurrentLocationLatitude()Z
    .locals 1

    .prologue
    .line 60489
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCurrentLocationLatitude:Z

    return v0
.end method

.method public hasCurrentLocationLongitude()Z
    .locals 1

    .prologue
    .line 60508
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCurrentLocationLongitude:Z

    return v0
.end method

.method public hasDeviceVersion()Z
    .locals 1

    .prologue
    .line 60527
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasDeviceVersion:Z

    return v0
.end method

.method public hasForceRingState()Z
    .locals 1

    .prologue
    .line 60546
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasForceRingState:Z

    return v0
.end method

.method public hasHandsetDeviceId()Z
    .locals 1

    .prologue
    .line 60565
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetDeviceId:Z

    return v0
.end method

.method public hasHandsetLocale()Z
    .locals 1

    .prologue
    .line 60584
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetLocale:Z

    return v0
.end method

.method public hasIDD()Z
    .locals 1

    .prologue
    .line 60622
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIDD:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 60603
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasId:Z

    return v0
.end method

.method public hasIsCDMA()Z
    .locals 1

    .prologue
    .line 60641
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsCDMA:Z

    return v0
.end method

.method public hasIsLocationTrackingEnabled()Z
    .locals 1

    .prologue
    .line 60660
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsLocationTrackingEnabled:Z

    return v0
.end method

.method public hasIsVerified()Z
    .locals 1

    .prologue
    .line 60679
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsVerified:Z

    return v0
.end method

.method public hasLastConnectedTimestamp()Z
    .locals 1

    .prologue
    .line 60698
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastConnectedTimestamp:Z

    return v0
.end method

.method public hasLastKnownLocation()Z
    .locals 1

    .prologue
    .line 60717
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastKnownLocation:Z

    return v0
.end method

.method public hasLastSeenAtTimestamp()Z
    .locals 1

    .prologue
    .line 60736
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastSeenAtTimestamp:Z

    return v0
.end method

.method public hasLockHandsetMessage()Z
    .locals 1

    .prologue
    .line 60774
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockHandsetMessage:Z

    return v0
.end method

.method public hasLockHandsetPin()Z
    .locals 1

    .prologue
    .line 60793
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockHandsetPin:Z

    return v0
.end method

.method public hasLockedHandsetState()Z
    .locals 1

    .prologue
    .line 60755
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockedHandsetState:Z

    return v0
.end method

.method public hasMMSMaxSize()Z
    .locals 1

    .prologue
    .line 60907
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMMSMaxSize:Z

    return v0
.end method

.method public hasMessageForwardEmailAddress()Z
    .locals 1

    .prologue
    .line 60812
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardEmailAddress:Z

    return v0
.end method

.method public hasMessageForwardPhoneNumber()Z
    .locals 1

    .prologue
    .line 60831
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneNumber:Z

    return v0
.end method

.method public hasMessageForwardPhoneRegionId()Z
    .locals 1

    .prologue
    .line 60850
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneRegionId:Z

    return v0
.end method

.method public hasMessageForwardStateEmail()Z
    .locals 1

    .prologue
    .line 60869
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardStateEmail:Z

    return v0
.end method

.method public hasMessageForwardStatePhone()Z
    .locals 1

    .prologue
    .line 60888
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardStatePhone:Z

    return v0
.end method

.method public hasMusicVendor()Z
    .locals 1

    .prologue
    .line 60926
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMusicVendor:Z

    return v0
.end method

.method public hasNDD()Z
    .locals 1

    .prologue
    .line 60945
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasNDD:Z

    return v0
.end method

.method public hasNewVoicemailCount()Z
    .locals 1

    .prologue
    .line 60964
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasNewVoicemailCount:Z

    return v0
.end method

.method public hasPhoneNumber()Z
    .locals 1

    .prologue
    .line 60983
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhoneNumber:Z

    return v0
.end method

.method public hasPhoneNumberString()Z
    .locals 1

    .prologue
    .line 61002
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhoneNumberString:Z

    return v0
.end method

.method public hasPhysicalDeviceModelId()Z
    .locals 1

    .prologue
    .line 61021
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhysicalDeviceModelId:Z

    return v0
.end method

.method public hasRecommendsAppCommentLastViewDate()Z
    .locals 1

    .prologue
    .line 61040
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRecommendsAppCommentLastViewDate:Z

    return v0
.end method

.method public hasRecommendsAppLastViewDate()Z
    .locals 1

    .prologue
    .line 61059
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRecommendsAppLastViewDate:Z

    return v0
.end method

.method public hasRemoteDataWipeEraseSDState()Z
    .locals 1

    .prologue
    .line 61078
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRemoteDataWipeEraseSDState:Z

    return v0
.end method

.method public hasRemoteDataWipeState()Z
    .locals 1

    .prologue
    .line 61097
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRemoteDataWipeState:Z

    return v0
.end method

.method public hasResyncId()Z
    .locals 1

    .prologue
    .line 61116
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncId:Z

    return v0
.end method

.method public hasResyncState()Z
    .locals 1

    .prologue
    .line 61135
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncState:Z

    return v0
.end method

.method public hasResyncStateDate()Z
    .locals 1

    .prologue
    .line 61154
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncStateDate:Z

    return v0
.end method

.method public hasTimeOffsetFromUtc()Z
    .locals 1

    .prologue
    .line 61173
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasTimeOffsetFromUtc:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 61192
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 60184
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$114900()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 61204
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAccountId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61205
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getAccountId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 61228
    :cond_0
    :goto_0
    return v0

    .line 61207
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasBindRequestId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61208
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getBindRequestId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61210
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardRegionId()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61211
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCallForwardRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61213
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetDeviceId()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 61214
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getHandsetDeviceId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61216
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasId()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 61217
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61219
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneRegionId()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 61220
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardPhoneRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61222
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhysicalDeviceModelId()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 61223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getPhysicalDeviceModelId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61225
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncId()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 61226
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getResyncId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61228
    :cond_8
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 1

    .prologue
    .line 61664
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 60147
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 60147
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;
    .locals 1

    .prologue
    .line 61672
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 60147
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 60147
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

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
    .line 61237
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastSeenAtTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61238
    const/16 v0, 0x12

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLastSeenAtTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 61240
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockHandsetMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61241
    const/16 v0, 0x26

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLockHandsetMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 61243
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsCDMA()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61244
    const/16 v0, 0x57

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getIsCDMA()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 61246
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMusicVendor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61247
    const/16 v0, 0xe7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMusicVendor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 61249
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCurrentLocationLatitude()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61250
    const/16 v0, 0x11f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCurrentLocationLatitude()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 61252
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhoneNumberString()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 61253
    const/16 v0, 0x165

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getPhoneNumberString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 61255
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastKnownLocation()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 61256
    const/16 v0, 0x167

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLastKnownLocation()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 61258
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 61259
    const/16 v0, 0x173

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 61261
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLastConnectedTimestamp()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 61262
    const/16 v0, 0x18b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLastConnectedTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 61264
    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRemoteDataWipeState()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 61265
    const/16 v0, 0x1b1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getRemoteDataWipeState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 61267
    :cond_9
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 61268
    const/16 v0, 0x1db

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCallForwardPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 61270
    :cond_a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAlternateNumber()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 61271
    const/16 v0, 0x1e3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getAlternateNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 61273
    :cond_b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncState()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 61274
    const/16 v0, 0x1ea

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getResyncState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 61276
    :cond_c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 61277
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 61279
    :cond_d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCountryCode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 61280
    const/16 v0, 0x265

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 61282
    :cond_e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetDeviceId()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 61283
    const/16 v0, 0x2a2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getHandsetDeviceId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 61285
    :cond_f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardPhoneRegionId()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 61286
    const/16 v0, 0x31b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardPhoneRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 61288
    :cond_10
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRecommendsAppLastViewDate()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 61289
    const/16 v0, 0x31c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getRecommendsAppLastViewDate()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 61291
    :cond_11
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncStateDate()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 61292
    const/16 v0, 0x33d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getResyncStateDate()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 61294
    :cond_12
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasTimeOffsetFromUtc()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 61295
    const/16 v0, 0x35d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getTimeOffsetFromUtc()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 61297
    :cond_13
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardingState()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 61298
    const/16 v0, 0x367

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCallForwardingState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 61300
    :cond_14
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRecommendsAppCommentLastViewDate()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 61301
    const/16 v0, 0x38c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getRecommendsAppCommentLastViewDate()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 61303
    :cond_15
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasNDD()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 61304
    const/16 v0, 0x3d2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getNDD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 61306
    :cond_16
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCallForwardRegionId()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 61307
    const/16 v0, 0x3de

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCallForwardRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 61309
    :cond_17
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardEmailAddress()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 61310
    const/16 v0, 0x3ec

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 61312
    :cond_18
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMMSMaxSize()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 61313
    const/16 v0, 0x42b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMMSMaxSize()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 61315
    :cond_19
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAccountId()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 61316
    const/16 v0, 0x443

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getAccountId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 61318
    :cond_1a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasNewVoicemailCount()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 61319
    const/16 v0, 0x446

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getNewVoicemailCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 61321
    :cond_1b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasHandsetLocale()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 61322
    const/16 v0, 0x483

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getHandsetLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 61324
    :cond_1c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsLocationTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 61325
    const/16 v0, 0x497

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getIsLocationTrackingEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 61327
    :cond_1d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasAreaCode()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 61328
    const/16 v0, 0x4c3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getAreaCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 61330
    :cond_1e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasBindRequestId()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 61331
    const/16 v0, 0x4d7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getBindRequestId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 61333
    :cond_1f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasId()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 61334
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 61336
    :cond_20
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasForceRingState()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 61337
    const/16 v0, 0x577

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getForceRingState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 61339
    :cond_21
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardStatePhone()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 61340
    const/16 v0, 0x597

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardStatePhone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 61342
    :cond_22
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIsVerified()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 61343
    const/16 v0, 0x5a5

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getIsVerified()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 61345
    :cond_23
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockHandsetPin()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 61346
    const/16 v0, 0x5ca

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLockHandsetPin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 61348
    :cond_24
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 61349
    const/16 v0, 0x5cd

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getPhoneNumber()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 61351
    :cond_25
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasLockedHandsetState()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 61352
    const/16 v0, 0x655

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getLockedHandsetState()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 61354
    :cond_26
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasResyncId()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 61355
    const/16 v0, 0x6ea

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getResyncId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 61357
    :cond_27
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasPhysicalDeviceModelId()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 61358
    const/16 v0, 0x6ec

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getPhysicalDeviceModelId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 61360
    :cond_28
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasMessageForwardStateEmail()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 61361
    const/16 v0, 0x702

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getMessageForwardStateEmail()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HPhoneOperationStatus;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 61363
    :cond_29
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasRemoteDataWipeEraseSDState()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 61364
    const/16 v0, 0x710

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getRemoteDataWipeEraseSDState()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 61366
    :cond_2a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasDeviceVersion()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 61367
    const/16 v0, 0x778

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDeviceVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 61369
    :cond_2b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasCurrentLocationLongitude()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 61370
    const/16 v0, 0x7c2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getCurrentLocationLongitude()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 61372
    :cond_2c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->hasIDD()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 61373
    const/16 v0, 0x7f1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getIDD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 61375
    :cond_2d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 61376
    return-void
.end method
