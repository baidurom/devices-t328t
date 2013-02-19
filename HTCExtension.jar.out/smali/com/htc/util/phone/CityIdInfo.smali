.class public Lcom/htc/util/phone/CityIdInfo;
.super Ljava/lang/Object;
.source "CityIdInfo.java"


# static fields
.field private static final ADD_CONTACTS_OVERRIDE:Ljava/lang/String; = "add_contacts_override"

#the value of this static final field might be set in the static constructor
.field private static final ATT_SUPPORTED:Z = false

.field private static final AUTHORITY:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final CALLER_ID:Z = false

#the value of this static final field might be set in the static constructor
.field public static final CALL_LOCATION:Z = false

.field private static final CITY:Ljava/lang/String; = "cid_pCityName"

.field protected static COLUMN_CITY:I = 0x0

.field static COLUMN_COMPANY:I = 0x0

.field private static COLUMN_COUNT:I = 0x0

.field protected static COLUMN_COUNTRY:I = 0x0

.field static COLUMN_FIRST_NAME:I = 0x0

.field static COLUMN_FRIENDS:I = 0x0

.field private static COLUMN_ID:I = 0x0

.field static COLUMN_IMAGE:I = 0x0

.field protected static COLUMN_ISNANP:I = 0x0

.field static COLUMN_LAST_NAME:I = 0x0

.field static COLUMN_NAME:I = 0x0

.field static COLUMN_NUMBER:I = 0x0

.field static COLUMN_PREFER_CID_IMAGE:I = 0x0

.field static COLUMN_SAME_NETWORK:I = 0x0

.field protected static COLUMN_STATE:I = 0x0

.field protected static COLUMN_STATE_ABRV:I = 0x0

.field private static final COMPANY:Ljava/lang/String; = "cid_pCompany"

.field private static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final CONTENT_URI_OPTIONS:Landroid/net/Uri; = null

.field private static final COUNTRY:Ljava/lang/String; = "cid_pCountryName"

#the value of this static final field might be set in the static constructor
.field public static final ECID:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ENABLED:Z = false

#the value of this static final field might be set in the static constructor
.field private static final EXCEPTION_PROJECTS:Z = false

.field private static final FIRST_NAME:Ljava/lang/String; = "cid_pFirstName"

.field private static final FRIENDS:Ljava/lang/String; = "cid_bFriends"

.field private static final IMAGE:Ljava/lang/String; = "cid_pImage"

.field private static final KEY_INTERNATIONAL:Ljava/lang/String; = "international"

.field private static final KEY_IS_OUTCALL:Ljava/lang/String; = "mo"

.field private static final LAST_NAME:Ljava/lang/String; = "cid_pLastName"

.field private static final NAME:Ljava/lang/String; = "cid_pName"

.field private static final NUMBER:Ljava/lang/String; = "cid_pNumber"

.field private static final PREFER_CID_IMAGE:Ljava/lang/String; = "cid_bPreferCidImage"

.field private static final REPLACEMENT:Ljava/lang/String; = "..."

.field private static final REPLACEMENT_SIZE:I = 0x1

.field private static final SAME_NETWORK:Ljava/lang/String; = "cid_bSameNetwork"

.field protected static final SECS_DISPLAY_CITYID:I = 0x3

.field protected static final SECS_DISPLAY_NUMBER:I = 0x3

.field public static final SEPARATOR:Ljava/lang/String; = ", "

.field private static final STATE:Ljava/lang/String; = "cid_pStateName"

.field private static final STATE_ABBR:Ljava/lang/String; = "cid_pStateAbbr"

.field protected static final TAG:Ljava/lang/String; = "com.htc.util.phone.CityIdInfo"

#the value of this static final field might be set in the static constructor
.field private static final TMOUS:Z = false

.field public static final USER_DATA_KEY:Ljava/lang/String; = null

.field public static final USER_DATA_KEY_DISPLAY:Ljava/lang/String; = "CITY_ID"

.field private static final _COUNT:Ljava/lang/String; = "_COUNT"

.field private static final _ID:Ljava/lang/String; = "_ID"


# instance fields
.field public m_bFriends:Z

.field public m_bPreferCidImage:Z

.field public m_bSameNetwork:Z

.field public m_bizName:Ljava/lang/String;

.field public m_callerId:Ljava/lang/String;

.field public m_cname:Ljava/lang/String;

.field public m_firstName:Ljava/lang/String;

.field public m_hasLookupBeenPerformed:Z

.field public m_isCityIdCurrentlyDisplayed:Z

.field public m_isDisplayOneLine:Z

.field public m_isNanp:Z

.field public m_lastName:Ljava/lang/String;

.field public m_picture:Landroid/graphics/Bitmap;

.field public m_strCityName:Ljava/lang/String;

.field public m_strCountryName:Ljava/lang/String;

.field public m_strDisplayName:Ljava/lang/String;

.field public m_strStateAbrv:Ljava/lang/String;

.field public m_strStateName:Ljava/lang/String;

.field public m_tvOneLineDisplay:Landroid/widget/TextView;

.field public m_urlPicture:Ljava/lang/String;

.field public m_wDisplayComputed:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x5a

    const/16 v5, 0xaa

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 48
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x1b

    if-eq v0, v3, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-ne v0, v4, :cond_0

    invoke-static {}, Lcom/htc/util/phone/ProjectUtils;->getVersion()F

    move-result v0

    const v3, 0x40066666

    cmpl-float v0, v0, v3

    if-gez v0, :cond_3

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v5, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x97

    if-ne v0, v3, :cond_2

    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd8

    if-ne v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v0, v4, :cond_3

    :cond_2
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe3

    if-eq v0, v3, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe4

    if-eq v0, v3, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x25

    if-eq v0, v3, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe5

    if-eq v0, v3, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xda

    if-ne v0, v3, :cond_7

    :cond_3
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/htc/util/phone/CityIdInfo;->CALL_LOCATION:Z

    .line 78
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x9b

    if-ne v0, v3, :cond_8

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x7b

    if-eq v0, v3, :cond_4

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x1c

    if-eq v0, v3, :cond_4

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x89

    if-eq v0, v3, :cond_4

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe1

    if-ne v0, v3, :cond_8

    :cond_4
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/htc/util/phone/CityIdInfo;->TMOUS:Z

    .line 86
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v4, :cond_9

    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/htc/util/phone/CityIdInfo;->ATT_SUPPORTED:Z

    .line 90
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v3, 0x4

    if-eq v0, v3, :cond_5

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x10

    if-eq v0, v3, :cond_5

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x7b

    if-eq v0, v3, :cond_5

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v6, :cond_a

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v0, v3, :cond_a

    :cond_5
    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/htc/util/phone/CityIdInfo;->EXCEPTION_PROJECTS:Z

    .line 104
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xa

    if-eq v0, v3, :cond_6

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x40

    if-eq v0, v3, :cond_6

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v6, :cond_6

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v5, :cond_6

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xb

    if-eq v0, v3, :cond_6

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-eq v0, v3, :cond_6

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa1

    if-eq v0, v3, :cond_6

    sget-boolean v0, Lcom/htc/util/phone/CityIdInfo;->CALL_LOCATION:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/htc/util/phone/CityIdInfo;->TMOUS:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/htc/util/phone/CityIdInfo;->ATT_SUPPORTED:Z

    if-eqz v0, :cond_b

    :cond_6
    sget-boolean v0, Lcom/htc/util/phone/CityIdInfo;->EXCEPTION_PROJECTS:Z

    if-nez v0, :cond_b

    move v0, v2

    :goto_4
    sput-boolean v0, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    .line 125
    sget-boolean v0, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/htc/util/phone/CityIdInfo;->CALL_LOCATION:Z

    if-nez v0, :cond_c

    move v0, v2

    :goto_5
    sput-boolean v0, Lcom/htc/util/phone/CityIdInfo;->ECID:Z

    .line 132
    sget-boolean v0, Lcom/htc/util/phone/CityIdInfo;->ECID:Z

    if-eqz v0, :cond_d

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v5, :cond_d

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x61

    if-eq v0, v3, :cond_d

    move v0, v2

    :goto_6
    sput-boolean v0, Lcom/htc/util/phone/CityIdInfo;->CALLER_ID:Z

    .line 138
    sget-boolean v0, Lcom/htc/util/phone/CityIdInfo;->CALL_LOCATION:Z

    if-eqz v0, :cond_e

    const-string v0, "com.htc.china.calllocation"

    :goto_7
    sput-object v0, Lcom/htc/util/phone/CityIdInfo;->AUTHORITY:Ljava/lang/String;

    .line 143
    sget-object v0, Lcom/htc/util/phone/CityIdInfo;->AUTHORITY:Ljava/lang/String;

    sput-object v0, Lcom/htc/util/phone/CityIdInfo;->USER_DATA_KEY:Ljava/lang/String;

    .line 157
    sget-boolean v0, Lcom/htc/util/phone/CityIdInfo;->CALL_LOCATION:Z

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/htc/util/phone/CityIdInfo;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/calllocation"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_8
    sput-object v0, Lcom/htc/util/phone/CityIdInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/htc/util/phone/CityIdInfo;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/options"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/phone/CityIdInfo;->CONTENT_URI_OPTIONS:Landroid/net/Uri;

    .line 188
    sget-boolean v0, Lcom/htc/util/phone/CityIdInfo;->CALL_LOCATION:Z

    if-eqz v0, :cond_10

    :goto_9
    sput v2, Lcom/htc/util/phone/CityIdInfo;->COLUMN_CITY:I

    return-void

    :cond_7
    move v0, v1

    .line 48
    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 78
    goto/16 :goto_1

    :cond_9
    move v0, v1

    .line 86
    goto/16 :goto_2

    :cond_a
    move v0, v1

    .line 90
    goto/16 :goto_3

    :cond_b
    move v0, v1

    .line 104
    goto/16 :goto_4

    :cond_c
    move v0, v1

    .line 125
    goto :goto_5

    :cond_d
    move v0, v1

    .line 132
    goto :goto_6

    .line 138
    :cond_e
    const-string v0, "com.cequint.ecid"

    goto :goto_7

    .line 157
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/htc/util/phone/CityIdInfo;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/lookup"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_8

    :cond_10
    move v2, v1

    .line 188
    goto :goto_9
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-boolean v1, p0, Lcom/htc/util/phone/CityIdInfo;->m_isNanp:Z

    .line 254
    iput-boolean v1, p0, Lcom/htc/util/phone/CityIdInfo;->m_hasLookupBeenPerformed:Z

    .line 271
    iput-object v2, p0, Lcom/htc/util/phone/CityIdInfo;->m_strCityName:Ljava/lang/String;

    .line 291
    iput-object v2, p0, Lcom/htc/util/phone/CityIdInfo;->m_strStateName:Ljava/lang/String;

    .line 310
    iput-object v2, p0, Lcom/htc/util/phone/CityIdInfo;->m_strStateAbrv:Ljava/lang/String;

    .line 329
    iput-object v2, p0, Lcom/htc/util/phone/CityIdInfo;->m_strCountryName:Ljava/lang/String;

    .line 349
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    .line 374
    iput v1, p0, Lcom/htc/util/phone/CityIdInfo;->m_wDisplayComputed:I

    .line 398
    iput-boolean v1, p0, Lcom/htc/util/phone/CityIdInfo;->m_isDisplayOneLine:Z

    .line 413
    iput-boolean v1, p0, Lcom/htc/util/phone/CityIdInfo;->m_isCityIdCurrentlyDisplayed:Z

    .line 428
    iput-object v2, p0, Lcom/htc/util/phone/CityIdInfo;->m_tvOneLineDisplay:Landroid/widget/TextView;

    return-void
.end method

.method public static addCityIdInfoInto(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "ci"
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    .line 1008
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1010
    sget-object v3, Lcom/htc/util/phone/CityIdInfo;->USER_DATA_KEY:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/CallerInfo;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1012
    .local v2, obj:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1013
    .local v1, info:Lcom/htc/util/phone/CityIdInfo;
    instance-of v3, v2, Lcom/htc/util/phone/CityIdInfo;

    if-eqz v3, :cond_2

    move-object v1, v2

    .line 1014
    check-cast v1, Lcom/htc/util/phone/CityIdInfo;

    .line 1015
    iget-boolean v3, v1, Lcom/htc/util/phone/CityIdInfo;->m_hasLookupBeenPerformed:Z

    if-nez v3, :cond_0

    .line 1016
    invoke-virtual {v1, p0, p2, v4}, Lcom/htc/util/phone/CityIdInfo;->doLookup(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    .line 1023
    :cond_0
    :goto_0
    const/4 v3, 0x0

    invoke-static {v3, v1}, Lcom/htc/util/phone/CityIdInfo;->getCityIdDisplay(Landroid/widget/TextView;Lcom/htc/util/phone/CityIdInfo;)Ljava/lang/String;

    move-result-object v0

    .line 1024
    .local v0, cityId:Ljava/lang/String;
    const-string v3, "CITY_ID"

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/telephony/CallerInfo;->addUserData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    .end local v0           #cityId:Ljava/lang/String;
    .end local v1           #info:Lcom/htc/util/phone/CityIdInfo;
    .end local v2           #obj:Ljava/lang/Object;
    :cond_1
    return-void

    .line 1019
    .restart local v1       #info:Lcom/htc/util/phone/CityIdInfo;
    .restart local v2       #obj:Ljava/lang/Object;
    :cond_2
    new-instance v1, Lcom/htc/util/phone/CityIdInfo;

    .end local v1           #info:Lcom/htc/util/phone/CityIdInfo;
    invoke-direct {v1}, Lcom/htc/util/phone/CityIdInfo;-><init>()V

    .line 1020
    .restart local v1       #info:Lcom/htc/util/phone/CityIdInfo;
    invoke-virtual {v1, p0, p2, v4}, Lcom/htc/util/phone/CityIdInfo;->doLookup(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method public static final addContactsOverrided(Landroid/content/ContentResolver;)Z
    .locals 9
    .parameter "cr"

    .prologue
    const/4 v2, 0x0

    .line 1029
    const/4 v8, 0x0

    .line 1030
    .local v8, overrided:Z
    sget-boolean v0, Lcom/htc/util/phone/CityIdInfo;->CALLER_ID:Z

    if-eqz v0, :cond_1

    .line 1031
    if-eqz p0, :cond_1

    .line 1032
    sget-object v1, Lcom/htc/util/phone/CityIdInfo;->CONTENT_URI_OPTIONS:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1033
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1034
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    const-string v0, "add_contacts_override"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1036
    .local v7, idOverrided:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v8, 0x1

    .line 1038
    .end local v7           #idOverrided:I
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1042
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    return v8

    .line 1036
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #idOverrided:I
    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private static compare(Landroid/graphics/Paint;Ljava/lang/String;I)F
    .locals 2
    .parameter "paint"
    .parameter "input"
    .parameter "availableWidth"

    .prologue
    .line 869
    invoke-static {p0, p1}, Lcom/htc/util/phone/CityIdInfo;->getWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v0

    .line 870
    .local v0, textWidth:F
    int-to-float v1, p2

    sub-float v1, v0, v1

    return v1
.end method

.method public static ellipsizeStringBeforeSeparator(Landroid/graphics/Paint;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "paint"
    .parameter "input"
    .parameter "availableWidth"
    .parameter "separator"

    .prologue
    .line 821
    move-object v5, p1

    .line 823
    .local v5, result:Ljava/lang/String;
    if-eqz p0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    if-lez p2, :cond_2

    .line 827
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 828
    .local v6, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    const-string v8, "..."

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    .line 831
    .local v3, replaceSize1st:I
    add-int/lit8 v4, v3, 0x1

    .line 834
    .local v4, replaceSize2nd:I
    const/4 v0, 0x0

    .line 836
    .local v0, firstTime:Z
    :goto_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, p2}, Lcom/htc/util/phone/CityIdInfo;->compare(Landroid/graphics/Paint;Ljava/lang/String;I)F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    .line 837
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 838
    .local v1, index:I
    if-eqz v0, :cond_0

    move v2, v3

    .line 841
    .local v2, replaceSize:I
    :goto_1
    sub-int v7, v1, v2

    .line 842
    .local v7, start:I
    if-ltz v7, :cond_1

    .line 843
    const-string v8, "..."

    invoke-virtual {v6, v7, v1, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    const/4 v0, 0x0

    .line 850
    goto :goto_0

    .end local v2           #replaceSize:I
    .end local v7           #start:I
    :cond_0
    move v2, v4

    .line 838
    goto :goto_1

    .line 852
    .end local v1           #index:I
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 853
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 857
    .end local v0           #firstTime:Z
    .end local v3           #replaceSize1st:I
    .end local v4           #replaceSize2nd:I
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :cond_2
    return-object v5
.end method

.method private extractCallLocation(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 962
    sget v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_CITY:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strCityName:Ljava/lang/String;

    .line 966
    return-void
.end method

.method private extractCityID(Landroid/database/Cursor;)V
    .locals 3
    .parameter "c"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 936
    invoke-static {p1}, Lcom/htc/util/phone/CityIdInfo;->readColumnIds(Landroid/database/Cursor;)V

    .line 938
    sget v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_NUMBER:I

    invoke-static {p1, v0}, Lcom/htc/util/phone/CityIdInfo;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_callerId:Ljava/lang/String;

    .line 939
    sget v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_CITY:I

    invoke-static {p1, v0}, Lcom/htc/util/phone/CityIdInfo;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strCityName:Ljava/lang/String;

    .line 940
    sget v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_STATE:I

    invoke-static {p1, v0}, Lcom/htc/util/phone/CityIdInfo;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strStateName:Ljava/lang/String;

    .line 941
    sget v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_STATE_ABRV:I

    invoke-static {p1, v0}, Lcom/htc/util/phone/CityIdInfo;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strStateAbrv:Ljava/lang/String;

    .line 942
    sget v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_COUNTRY:I

    invoke-static {p1, v0}, Lcom/htc/util/phone/CityIdInfo;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strCountryName:Ljava/lang/String;

    .line 944
    sget v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_COMPANY:I

    invoke-static {p1, v0}, Lcom/htc/util/phone/CityIdInfo;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_bizName:Ljava/lang/String;

    .line 945
    sget v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_NAME:I

    invoke-static {p1, v0}, Lcom/htc/util/phone/CityIdInfo;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_cname:Ljava/lang/String;

    .line 946
    sget v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_FIRST_NAME:I

    invoke-static {p1, v0}, Lcom/htc/util/phone/CityIdInfo;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_firstName:Ljava/lang/String;

    .line 947
    sget v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_LAST_NAME:I

    invoke-static {p1, v0}, Lcom/htc/util/phone/CityIdInfo;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_lastName:Ljava/lang/String;

    .line 948
    sget v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_IMAGE:I

    invoke-static {p1, v0}, Lcom/htc/util/phone/CityIdInfo;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_urlPicture:Ljava/lang/String;

    .line 949
    sget v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_SAME_NETWORK:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_bSameNetwork:Z

    .line 950
    sget v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_FRIENDS:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_bFriends:Z

    .line 951
    sget v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_PREFER_CID_IMAGE:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_bPreferCidImage:Z

    .line 958
    sget v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_ISNANP:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/htc/util/phone/CityIdInfo;->m_isNanp:Z

    .line 959
    return-void

    :cond_0
    move v0, v2

    .line 949
    goto :goto_0

    :cond_1
    move v0, v2

    .line 950
    goto :goto_1

    :cond_2
    move v0, v2

    .line 951
    goto :goto_2

    :cond_3
    move v1, v2

    .line 958
    goto :goto_3
.end method

.method public static getCityIdDisplay(Landroid/widget/TextView;Lcom/htc/util/phone/CityIdInfo;)Ljava/lang/String;
    .locals 3
    .parameter "tv"
    .parameter "cidInfo"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 784
    const/4 v0, 0x0

    .line 785
    .local v0, result:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 788
    iput-boolean v1, p1, Lcom/htc/util/phone/CityIdInfo;->m_isDisplayOneLine:Z

    .line 789
    iput-object v2, p1, Lcom/htc/util/phone/CityIdInfo;->m_tvOneLineDisplay:Landroid/widget/TextView;

    .line 790
    iput-boolean v1, p1, Lcom/htc/util/phone/CityIdInfo;->m_isCityIdCurrentlyDisplayed:Z

    .line 792
    iget-boolean v1, p1, Lcom/htc/util/phone/CityIdInfo;->m_hasLookupBeenPerformed:Z

    if-eqz v1, :cond_0

    .line 794
    if-eqz p0, :cond_1

    .line 795
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/htc/util/phone/CityIdInfo;->computeDisplayName(Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object v0

    .line 802
    :cond_0
    :goto_0
    return-object v0

    .line 797
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/htc/util/phone/CityIdInfo;->computeDisplayName(Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getString(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 2
    .parameter "c"
    .parameter "nColumn"

    .prologue
    .line 990
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 992
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 993
    .local v0, str:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 996
    .end local v0           #str:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getWidth(Landroid/graphics/Paint;Ljava/lang/String;)F
    .locals 7
    .parameter "paint"
    .parameter "input"

    .prologue
    .line 886
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    new-array v5, v6, [F

    .line 887
    .local v5, widths:[F
    const/4 v3, 0x0

    .line 888
    .local v3, totalWidth:F
    invoke-virtual {p0, p1, v5}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 890
    move-object v0, v5

    .local v0, arr$:[F
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v4, v0, v1

    .line 891
    .local v4, width:F
    add-float/2addr v3, v4

    .line 890
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 894
    .end local v4           #width:F
    :cond_0
    return v3
.end method

.method private static final isOutgoingCall(Ljava/lang/String;)Z
    .locals 5
    .parameter "strNumber"

    .prologue
    const/4 v3, 0x0

    .line 1047
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v1

    .line 1048
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1049
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 1050
    .local v0, connection:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1071
    .end local v0           #connection:Lcom/android/internal/telephony/Connection;
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_0
    return v3

    .line 1055
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 1056
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1057
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 1058
    .restart local v0       #connection:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 1063
    .end local v0           #connection:Lcom/android/internal/telephony/Connection;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections()Ljava/util/List;

    move-result-object v1

    .line 1064
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1065
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 1066
    .restart local v0       #connection:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 1071
    .end local v0           #connection:Lcom/android/internal/telephony/Connection;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_5
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private queryCallLocation(Landroid/content/ContentResolver;Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 9
    .parameter "cr"
    .parameter "strNumber"

    .prologue
    const/4 v2, 0x0

    .line 914
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v7

    .line 915
    .local v7, international:Z
    const/4 v8, 0x0

    .line 916
    .local v8, mo:Z
    if-eqz v7, :cond_0

    .line 917
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/phone/CityIdInfo;->isOutgoingCall(Ljava/lang/String;)Z

    move-result v8

    .line 920
    :cond_0
    sget-object v0, Lcom/htc/util/phone/CityIdInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 921
    .local v6, builder:Landroid/net/Uri$Builder;
    const-string v0, "mo"

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 922
    const-string v0, "international"

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 923
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 931
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private queryCityID(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Z)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "strNumber"
    .parameter "isSystemProvided"

    .prologue
    const/4 v2, 0x0

    .line 906
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .line 907
    .local v4, flags:[Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "NANP"

    aput-object v1, v4, v0

    .line 908
    const/4 v1, 0x1

    if-eqz p3, :cond_0

    const-string v0, "system"

    :goto_0
    aput-object v0, v4, v1

    .line 910
    sget-object v1, Lcom/htc/util/phone/CityIdInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 908
    :cond_0
    const-string v0, "user"

    goto :goto_0
.end method

.method static readColumnIds(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 969
    if-eqz p0, :cond_0

    .line 970
    const-string v0, "_ID"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_ID:I

    .line 971
    const-string v0, "_COUNT"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_COUNT:I

    .line 972
    const-string v0, "cid_pNumber"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_NUMBER:I

    .line 973
    const-string v0, "cid_pCityName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_CITY:I

    .line 974
    const-string v0, "cid_pStateName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_STATE:I

    .line 975
    const-string v0, "cid_pStateAbbr"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_STATE_ABRV:I

    .line 976
    const-string v0, "cid_pCountryName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_COUNTRY:I

    .line 977
    const-string v0, "cid_pCompany"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_COMPANY:I

    .line 978
    const-string v0, "cid_pName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_NAME:I

    .line 979
    const-string v0, "cid_pFirstName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_FIRST_NAME:I

    .line 980
    const-string v0, "cid_pLastName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_LAST_NAME:I

    .line 981
    const-string v0, "cid_pImage"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_IMAGE:I

    .line 982
    const-string v0, "cid_bSameNetwork"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_SAME_NETWORK:I

    .line 983
    const-string v0, "cid_bFriends"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_FRIENDS:I

    .line 984
    const-string v0, "cid_bPreferCidImage"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/htc/util/phone/CityIdInfo;->COLUMN_PREFER_CID_IMAGE:I

    .line 986
    :cond_0
    return-void
.end method

.method public static setCityIdDisplay(Landroid/widget/TextView;Lcom/htc/util/phone/CityIdInfo;)V
    .locals 4
    .parameter "tv"
    .parameter "cidInfo"

    .prologue
    const/4 v3, 0x0

    .line 760
    const/16 v0, 0x8

    .line 761
    .local v0, nDisplayCityId:I
    if-eqz p1, :cond_0

    .line 764
    iput-boolean v3, p1, Lcom/htc/util/phone/CityIdInfo;->m_isDisplayOneLine:Z

    .line 765
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/htc/util/phone/CityIdInfo;->m_tvOneLineDisplay:Landroid/widget/TextView;

    .line 766
    iput-boolean v3, p1, Lcom/htc/util/phone/CityIdInfo;->m_isCityIdCurrentlyDisplayed:Z

    .line 768
    iget-boolean v2, p1, Lcom/htc/util/phone/CityIdInfo;->m_hasLookupBeenPerformed:Z

    if-eqz v2, :cond_0

    .line 770
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/util/phone/CityIdInfo;->computeDisplayName(Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object v1

    .line 771
    .local v1, strDisplay:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 773
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    const/4 v0, 0x0

    .line 778
    .end local v1           #strDisplay:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 779
    return-void
.end method


# virtual methods
.method public computeDisplayName(Landroid/graphics/Paint;I)Ljava/lang/String;
    .locals 2
    .parameter "pFont"
    .parameter "wAvailable"

    .prologue
    const/4 v1, 0x0

    .line 662
    iget-boolean v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_hasLookupBeenPerformed:Z

    if-eqz v0, :cond_6

    .line 665
    iget v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_wDisplayComputed:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    .line 709
    :goto_0
    return-object v0

    .line 668
    :cond_0
    iput-object v1, p0, Lcom/htc/util/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    .line 669
    iput p2, p0, Lcom/htc/util/phone/CityIdInfo;->m_wDisplayComputed:I

    .line 672
    iget-boolean v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_isNanp:Z

    if-eqz v0, :cond_4

    .line 674
    iget-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strCityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 676
    iget-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strStateName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 677
    iget-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strCountryName:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    .line 706
    :goto_1
    iget-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 707
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 679
    :cond_2
    iget-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strStateName:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    goto :goto_1

    .line 685
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/util/phone/CityIdInfo;->m_strCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/util/phone/CityIdInfo;->m_strStateAbrv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    .line 689
    iget-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    const-string v1, ", "

    invoke-static {p1, v0, p2, v1}, Lcom/htc/util/phone/CityIdInfo;->ellipsizeStringBeforeSeparator(Landroid/graphics/Paint;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    goto :goto_1

    .line 697
    :cond_4
    sget-boolean v0, Lcom/htc/util/phone/CityIdInfo;->CALL_LOCATION:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strCityName:Ljava/lang/String;

    :goto_2
    iput-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strCountryName:Ljava/lang/String;

    goto :goto_2

    .line 703
    :cond_6
    iput-object v1, p0, Lcom/htc/util/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    goto :goto_1
.end method

.method public doLookup(Landroid/content/Context;Ljava/lang/CharSequence;Z)V
    .locals 4
    .parameter "context"
    .parameter "strNumber"
    .parameter "isSystemProvided"

    .prologue
    .line 722
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    :try_start_0
    sget-boolean v2, Lcom/htc/util/phone/CityIdInfo;->CALL_LOCATION:Z

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/htc/util/phone/CityIdInfo;->queryCallLocation(Landroid/content/ContentResolver;Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 730
    .local v0, c:Landroid/database/Cursor;
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 731
    sget-boolean v2, Lcom/htc/util/phone/CityIdInfo;->CALL_LOCATION:Z

    if-eqz v2, :cond_5

    .line 732
    invoke-direct {p0, v0}, Lcom/htc/util/phone/CityIdInfo;->extractCallLocation(Landroid/database/Cursor;)V

    .line 744
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 745
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 747
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/util/phone/CityIdInfo;->m_hasLookupBeenPerformed:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 748
    .end local v0           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 749
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "com.htc.util.phone.CityIdInfo"

    const-string v3, "doLookup exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 726
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lcom/htc/util/phone/CityIdInfo;->queryCityID(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Z)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 734
    .restart local v0       #c:Landroid/database/Cursor;
    :cond_5
    invoke-direct {p0, v0}, Lcom/htc/util/phone/CityIdInfo;->extractCityID(Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public getBFriends()Z
    .locals 1

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_bFriends:Z

    return v0
.end method

.method public getBPreferCidImage()Z
    .locals 1

    .prologue
    .line 617
    iget-boolean v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_bPreferCidImage:Z

    return v0
.end method

.method public getBSameNetwork()Z
    .locals 1

    .prologue
    .line 575
    iget-boolean v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_bSameNetwork:Z

    return v0
.end method

.method public getBizName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_bizName:Ljava/lang/String;

    return-object v0
.end method

.method public getCName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_cname:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_callerId:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getHasLookupBeenPerformed()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_hasLookupBeenPerformed:Z

    return v0
.end method

.method public getIsCityIdCurrentlyDisplayed()Z
    .locals 1

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_isCityIdCurrentlyDisplayed:Z

    return v0
.end method

.method public getIsDisplayOneLine()Z
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_isDisplayOneLine:Z

    return v0
.end method

.method public getIsNanp()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_isNanp:Z

    return v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getPicture()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_picture:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getStrCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strCityName:Ljava/lang/String;

    return-object v0
.end method

.method public getStrCountryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strCountryName:Ljava/lang/String;

    return-object v0
.end method

.method public getStrDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getStrStateAbrv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strStateAbrv:Ljava/lang/String;

    return-object v0
.end method

.method public getStrStateName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strStateName:Ljava/lang/String;

    return-object v0
.end method

.method public getTvOneLineDisplay()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_tvOneLineDisplay:Landroid/widget/TextView;

    return-object v0
.end method

.method public getUrlPicture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_urlPicture:Ljava/lang/String;

    return-object v0
.end method

.method public getWDisplayComputed()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_wDisplayComputed:I

    return v0
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strCityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strStateName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strStateAbrv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/phone/CityIdInfo;->m_strCountryName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBFriends(Z)V
    .locals 0
    .parameter "val"

    .prologue
    .line 604
    iput-boolean p1, p0, Lcom/htc/util/phone/CityIdInfo;->m_bFriends:Z

    .line 605
    return-void
.end method

.method public setBPreferCidImage(Z)V
    .locals 0
    .parameter "val"

    .prologue
    .line 625
    iput-boolean p1, p0, Lcom/htc/util/phone/CityIdInfo;->m_bPreferCidImage:Z

    .line 626
    return-void
.end method

.method public setBSameNetwork(Z)V
    .locals 0
    .parameter "val"

    .prologue
    .line 583
    iput-boolean p1, p0, Lcom/htc/util/phone/CityIdInfo;->m_bSameNetwork:Z

    .line 584
    return-void
.end method

.method public setBizName(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 457
    iput-object p1, p0, Lcom/htc/util/phone/CityIdInfo;->m_bizName:Ljava/lang/String;

    .line 458
    return-void
.end method

.method public setCName(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 478
    iput-object p1, p0, Lcom/htc/util/phone/CityIdInfo;->m_cname:Ljava/lang/String;

    .line 479
    return-void
.end method

.method public setCallerId(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 499
    iput-object p1, p0, Lcom/htc/util/phone/CityIdInfo;->m_callerId:Ljava/lang/String;

    .line 500
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 520
    iput-object p1, p0, Lcom/htc/util/phone/CityIdInfo;->m_firstName:Ljava/lang/String;

    .line 521
    return-void
.end method

.method public setHasLookupBeenPerformed(Z)V
    .locals 0
    .parameter "val"

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/htc/util/phone/CityIdInfo;->m_hasLookupBeenPerformed:Z

    .line 261
    return-void
.end method

.method public setIsCityIdCurrentlyDisplayed(Z)V
    .locals 0
    .parameter "val"

    .prologue
    .line 419
    iput-boolean p1, p0, Lcom/htc/util/phone/CityIdInfo;->m_isCityIdCurrentlyDisplayed:Z

    .line 420
    return-void
.end method

.method public setIsDisplayOneLine(Z)V
    .locals 0
    .parameter "val"

    .prologue
    .line 404
    iput-boolean p1, p0, Lcom/htc/util/phone/CityIdInfo;->m_isDisplayOneLine:Z

    .line 405
    return-void
.end method

.method public setIsNanp(Z)V
    .locals 0
    .parameter "val"

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/htc/util/phone/CityIdInfo;->m_isNanp:Z

    .line 249
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 541
    iput-object p1, p0, Lcom/htc/util/phone/CityIdInfo;->m_lastName:Ljava/lang/String;

    .line 542
    return-void
.end method

.method public setPicture(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 646
    iput-object p1, p0, Lcom/htc/util/phone/CityIdInfo;->m_picture:Landroid/graphics/Bitmap;

    .line 647
    return-void
.end method

.method public setStrCityName(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 282
    iput-object p1, p0, Lcom/htc/util/phone/CityIdInfo;->m_strCityName:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public setStrCountryName(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 339
    iput-object p1, p0, Lcom/htc/util/phone/CityIdInfo;->m_strCountryName:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public setStrDisplayName(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 363
    iput-object p1, p0, Lcom/htc/util/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    .line 364
    return-void
.end method

.method public setStrStateAbrv(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 320
    iput-object p1, p0, Lcom/htc/util/phone/CityIdInfo;->m_strStateAbrv:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public setStrStateName(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/htc/util/phone/CityIdInfo;->m_strStateName:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setTvOneLineDisplay(Landroid/widget/TextView;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 434
    iput-object p1, p0, Lcom/htc/util/phone/CityIdInfo;->m_tvOneLineDisplay:Landroid/widget/TextView;

    .line 435
    return-void
.end method

.method public setUrlPicture(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 562
    iput-object p1, p0, Lcom/htc/util/phone/CityIdInfo;->m_urlPicture:Ljava/lang/String;

    .line 563
    return-void
.end method

.method public setWDisplayComputed(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 388
    iput p1, p0, Lcom/htc/util/phone/CityIdInfo;->m_wDisplayComputed:I

    .line 389
    return-void
.end method
