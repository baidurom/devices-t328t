.class Lcom/htc/util/skin/SkinVersion;
.super Ljava/lang/Object;
.source "SkinVersion.java"


# static fields
.field static final DEVICE:I

.field private static HD:Ljava/lang/String;

.field private static HVGA:Ljava/lang/String;

.field private static OS_GB:Ljava/lang/String;

.field private static OS_HC:Ljava/lang/String;

.field private static OS_ICS:Ljava/lang/String;

.field private static PHONE:Ljava/lang/String;

.field static final PROJECT:I

.field private static QHD:Ljava/lang/String;

.field private static SENSE40:Ljava/lang/String;

.field static final SENSE_VERSION:I

.field static final STEPPING:I

.field private static TABLET:Ljava/lang/String;

.field static final TYPE:I

.field private static WSVGA:Ljava/lang/String;

.field private static WVGA:Ljava/lang/String;

.field private static WXGA:Ljava/lang/String;

.field private static mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 74
    const-string v3, "GB"

    sput-object v3, Lcom/htc/util/skin/SkinVersion;->OS_GB:Ljava/lang/String;

    .line 75
    const-string v3, "HC"

    sput-object v3, Lcom/htc/util/skin/SkinVersion;->OS_HC:Ljava/lang/String;

    .line 76
    const-string v3, "ICS"

    sput-object v3, Lcom/htc/util/skin/SkinVersion;->OS_ICS:Ljava/lang/String;

    .line 78
    const-string v3, "1"

    sput-object v3, Lcom/htc/util/skin/SkinVersion;->PHONE:Ljava/lang/String;

    .line 79
    const-string v3, "2"

    sput-object v3, Lcom/htc/util/skin/SkinVersion;->TABLET:Ljava/lang/String;

    .line 84
    const-string v3, "WVGA"

    sput-object v3, Lcom/htc/util/skin/SkinVersion;->WVGA:Ljava/lang/String;

    .line 85
    const-string v3, "HD"

    sput-object v3, Lcom/htc/util/skin/SkinVersion;->HD:Ljava/lang/String;

    .line 86
    const-string v3, "HVGA"

    sput-object v3, Lcom/htc/util/skin/SkinVersion;->HVGA:Ljava/lang/String;

    .line 87
    const-string v3, "QHD"

    sput-object v3, Lcom/htc/util/skin/SkinVersion;->QHD:Ljava/lang/String;

    .line 88
    const-string v3, "WSVGA"

    sput-object v3, Lcom/htc/util/skin/SkinVersion;->WSVGA:Ljava/lang/String;

    .line 89
    const-string v3, "WXGA"

    sput-object v3, Lcom/htc/util/skin/SkinVersion;->WXGA:Ljava/lang/String;

    .line 94
    const-string v3, "4.0"

    sput-object v3, Lcom/htc/util/skin/SkinVersion;->SENSE40:Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    :goto_0
    sput v3, Lcom/htc/util/skin/SkinVersion;->TYPE:I

    .line 98
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtc_DEVICE_flag()S

    move-result v3

    invoke-static {v3}, Lcom/htc/util/skin/SkinVersion;->getResolution(S)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, resolution:Ljava/lang/String;
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtc_Sense_Version()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, SenseVersion:Ljava/lang/String;
    invoke-static {}, Lcom/htc/util/skin/SkinVersion;->initHashMap()V

    .line 103
    sget-object v3, Lcom/htc/util/skin/SkinVersion;->mHashMap:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/util/skin/SkinVersion;->getOSVersionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/htc/util/skin/SkinVersion;->TYPE:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 104
    .local v2, result:Ljava/lang/Integer;
    if-nez v2, :cond_1

    .line 105
    const/4 v3, 0x0

    sput v3, Lcom/htc/util/skin/SkinVersion;->SENSE_VERSION:I

    .line 109
    :goto_1
    return-void

    .line 97
    .end local v0           #SenseVersion:Ljava/lang/String;
    .end local v1           #resolution:Ljava/lang/String;
    .end local v2           #result:Ljava/lang/Integer;
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 107
    .restart local v0       #SenseVersion:Ljava/lang/String;
    .restart local v1       #resolution:Ljava/lang/String;
    .restart local v2       #result:Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/htc/util/skin/SkinVersion;->SENSE_VERSION:I

    goto :goto_1
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getOSVersionName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 128
    .local v0, OSVersion:I
    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 129
    sget-object v1, Lcom/htc/util/skin/SkinVersion;->OS_GB:Ljava/lang/String;

    .line 133
    :goto_0
    return-object v1

    .line 130
    :cond_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 131
    sget-object v1, Lcom/htc/util/skin/SkinVersion;->OS_HC:Ljava/lang/String;

    goto :goto_0

    .line 133
    :cond_1
    sget-object v1, Lcom/htc/util/skin/SkinVersion;->OS_ICS:Ljava/lang/String;

    goto :goto_0
.end method

.method private static final getResolution(S)Ljava/lang/String;
    .locals 1
    .parameter "DeviceFlag"

    .prologue
    .line 141
    sparse-switch p0, :sswitch_data_0

    .line 180
    const-string v0, ""

    :goto_0
    return-object v0

    .line 144
    :sswitch_0
    sget-object v0, Lcom/htc/util/skin/SkinVersion;->HVGA:Ljava/lang/String;

    goto :goto_0

    .line 153
    :sswitch_1
    sget-object v0, Lcom/htc/util/skin/SkinVersion;->WVGA:Ljava/lang/String;

    goto :goto_0

    .line 168
    :sswitch_2
    sget-object v0, Lcom/htc/util/skin/SkinVersion;->QHD:Ljava/lang/String;

    goto :goto_0

    .line 175
    :sswitch_3
    sget-object v0, Lcom/htc/util/skin/SkinVersion;->HD:Ljava/lang/String;

    goto :goto_0

    .line 178
    :sswitch_4
    sget-object v0, Lcom/htc/util/skin/SkinVersion;->WXGA:Ljava/lang/String;

    goto :goto_0

    .line 141
    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_1
        0xf -> :sswitch_1
        0x24 -> :sswitch_3
        0x25 -> :sswitch_3
        0x26 -> :sswitch_3
        0x2b -> :sswitch_2
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
        0x3e -> :sswitch_2
        0x49 -> :sswitch_3
        0x4a -> :sswitch_3
        0x50 -> :sswitch_2
        0x7b -> :sswitch_2
        0x7d -> :sswitch_2
        0x81 -> :sswitch_4
        0x89 -> :sswitch_2
        0x8a -> :sswitch_1
        0x95 -> :sswitch_2
        0x97 -> :sswitch_2
        0x9f -> :sswitch_2
        0xad -> :sswitch_3
        0xdc -> :sswitch_2
        0xdd -> :sswitch_4
        0xdf -> :sswitch_1
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_2
        0xe2 -> :sswitch_1
        0xe3 -> :sswitch_1
        0xe4 -> :sswitch_1
        0xe5 -> :sswitch_1
        0x2d7 -> :sswitch_2
        0x2d8 -> :sswitch_2
    .end sparse-switch
.end method

.method private static final initHashMap()V
    .locals 3

    .prologue
    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/util/skin/SkinVersion;->mHashMap:Ljava/util/HashMap;

    .line 113
    sget-object v0, Lcom/htc/util/skin/SkinVersion;->mHashMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->OS_ICS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->PHONE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->WVGA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->SENSE40:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/htc/util/skin/SkinVersion;->mHashMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->OS_ICS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->PHONE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->HD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->SENSE40:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/htc/util/skin/SkinVersion;->mHashMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->OS_ICS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->PHONE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->HVGA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->SENSE40:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/htc/util/skin/SkinVersion;->mHashMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->OS_ICS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->PHONE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->QHD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->SENSE40:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/htc/util/skin/SkinVersion;->mHashMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->OS_ICS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->TABLET:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->WSVGA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->SENSE40:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/htc/util/skin/SkinVersion;->mHashMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->OS_ICS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->TABLET:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->WXGA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->SENSE40:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/htc/util/skin/SkinVersion;->mHashMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->OS_GB:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->PHONE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->WVGA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->SENSE40:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/htc/util/skin/SkinVersion;->mHashMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->OS_GB:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->PHONE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->HD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->SENSE40:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/htc/util/skin/SkinVersion;->mHashMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->OS_GB:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->PHONE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->HVGA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->SENSE40:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/htc/util/skin/SkinVersion;->mHashMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->OS_GB:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->PHONE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->QHD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/util/skin/SkinVersion;->SENSE40:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method
