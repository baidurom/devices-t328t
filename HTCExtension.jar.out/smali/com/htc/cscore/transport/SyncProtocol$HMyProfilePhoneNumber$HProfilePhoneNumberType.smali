.class public final enum Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;
.super Ljava/lang/Enum;
.source "SyncProtocol.java"

# interfaces
.implements Lcom/htc/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HProfilePhoneNumberType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;",
        ">;",
        "Lcom/htc/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum PhoneAssistant:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum PhoneCar:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum PhoneCompanyMain:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum PhoneCustom:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum PhoneHome:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum PhoneHomeFax:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum PhoneMMS:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum PhoneMobile:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum PhoneOther:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum PhonePager:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum PhoneRadio:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum PhoneWork:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum PhoneWorkFax:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field private static final VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum facebook:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field private static internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum plurk:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

.field public static final enum twitter:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 32092
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "PhoneMobile"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneMobile:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 32093
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "PhoneHome"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneHome:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 32094
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "PhoneWork"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneWork:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 32095
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "PhoneWorkFax"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneWorkFax:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 32096
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "PhoneHomeFax"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneHomeFax:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 32097
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "PhonePager"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhonePager:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 32098
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "PhoneCar"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneCar:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 32099
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "PhoneCompanyMain"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneCompanyMain:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 32100
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "PhoneMMS"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneMMS:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 32101
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "PhoneRadio"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneRadio:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 32102
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "PhoneAssistant"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneAssistant:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 32103
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "PhoneOther"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneOther:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 32104
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "PhoneCustom"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneCustom:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 32105
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "plurk"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->plurk:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 32106
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "facebook"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->facebook:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 32107
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const-string v1, "twitter"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->twitter:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 32090
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneMobile:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneHome:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneWork:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneWorkFax:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneHomeFax:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhonePager:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneCar:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneCompanyMain:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneMMS:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneRadio:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneAssistant:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneOther:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneCustom:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->plurk:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->facebook:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->twitter:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 32140
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType$1;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType$1;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    .line 32160
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneMobile:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneHome:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneWork:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneWorkFax:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneHomeFax:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhonePager:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneCar:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneCompanyMain:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneMMS:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneRadio:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneAssistant:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneOther:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneCustom:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->plurk:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->facebook:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->twitter:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    .line 32179
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 32180
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 32173
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32174
    iput p3, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->index:I

    .line 32175
    iput p4, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->value:I

    .line 32176
    return-void
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 32157
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/htc/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32137
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;
    .locals 1
    .parameter "value"

    .prologue
    .line 32114
    packed-switch p0, :pswitch_data_0

    .line 32131
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 32115
    :pswitch_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneMobile:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 32116
    :pswitch_1
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneHome:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 32117
    :pswitch_2
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneWork:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 32118
    :pswitch_3
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneWorkFax:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 32119
    :pswitch_4
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneHomeFax:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 32120
    :pswitch_5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhonePager:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 32121
    :pswitch_6
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneCar:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 32122
    :pswitch_7
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneCompanyMain:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 32123
    :pswitch_8
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneMMS:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 32124
    :pswitch_9
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneRadio:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 32125
    :pswitch_a
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneAssistant:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 32126
    :pswitch_b
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneOther:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 32127
    :pswitch_c
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->PhoneCustom:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 32128
    :pswitch_d
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->plurk:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 32129
    :pswitch_e
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->facebook:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 32130
    :pswitch_f
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->twitter:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    goto :goto_0

    .line 32114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static valueOf(Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;
    .locals 2
    .parameter "desc"

    .prologue
    .line 32165
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 32166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32169
    :cond_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;
    .locals 1
    .parameter "name"

    .prologue
    .line 32090
    const-class v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;
    .locals 1

    .prologue
    .line 32090
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    invoke-virtual {v0}, [Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 32153
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 32111
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 32149
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
