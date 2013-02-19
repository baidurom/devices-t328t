.class public Lcom/htc/util/weather/WSPPUtility;
.super Lcom/htc/util/weather/WSPUtility;
.source "WSPPUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;
    }
.end annotation


# static fields
.field public static final BOTH:I = 0x0

.field public static final CONDITION_CONVERT:[I = null

.field public static final CONDITION_STATUS:[I = null

.field public static final DAY:I = 0x1

.field private static final DEFAULT_SUNRISE:J = 0x258L

.field private static final DEFAULT_SUNSET:J = 0x708L

.field private static final DEFAULT_findCityName:Ljava/lang/String; = "http://htc2.accu-weather.com/widget/htc2/city-find.asp"

.field private static final DEFAULT_getBookmark:Ljava/lang/String; = "http://www.accuweather.com/?p=htcfav"

.field private static final DEFAULT_getMoreDetails:Ljava/lang/String; = "http://www.accuweather.com/m/details1.aspx"

.field private static final DEFAULT_getWTByGeo:Ljava/lang/String; = "http://htc2.accu-weather.com/widget/htc2/weather-data.asp"

.field private static final DEFAULT_getWeatherByCity:Ljava/lang/String; = null

.field private static final DEFAULT_getWeatherByGeo:Ljava/lang/String; = null

.field public static final KEY_IN_CUR_CONDITION_ID:Ljava/lang/String; = "curConditionID"

.field public static final KEY_IN_DATA_TYPE:Ljava/lang/String; = "dataType"

.field public static final KEY_IN_DAY_LIGHT_FLAG:Ljava/lang/String; = "dayLightFlag"

.field public static final KEY_IN_FST_DATE:Ljava/lang/String; = "fstDate"

.field public static final KEY_IN_LAST_UPDATE_TIME:Ljava/lang/String; = "lastUpdateTime"

.field public static final KEY_IN_SUNRISE:Ljava/lang/String; = "sunrise"

.field public static final KEY_IN_SUNSET:Ljava/lang/String; = "sunset"

.field public static final KEY_IN_TIMEZONE_ID:Ljava/lang/String; = "timeZoneID"

.field public static final KEY_OUT_CUR_CONDITION_ID:Ljava/lang/String; = "convertedCurConditionID"

.field public static final KEY_OUT_INDEX:Ljava/lang/String; = "index"

.field public static final KEY_OUT_IS_CURRENT:Ljava/lang/String; = "isCurrent"

.field public static final KEY_OUT_IS_DAY:Ljava/lang/String; = "isDay"

.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WSPPUtility"

.field public static final NIGHT:I = 0x2

.field private static final ONE_DAY_MILLIS:J = 0x5265c00L

.field public static final SETTING_KEY_WCRDATA_GETVENDORLOGO:Ljava/lang/String; = "com.htc.sync.provider.weather.setting.wcrdata.GetVendorLogo"

.field public static final SETTING_KEY_WEATHERNEWS:Ljava/lang/String; = "com.htc.sync.provider.weather.setting.weathernews"

.field private static final STATUS_DAWN:I = 0x0

.field private static final STATUS_DAY:I = 0x1

.field private static final STATUS_NIGHT:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x2d

    .line 30
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v0, :cond_0

    const-string v0, "http://htctablet.accu-weather.com/widget/htctablet/weather-data.asp"

    :goto_0
    sput-object v0, Lcom/htc/util/weather/WSPPUtility;->DEFAULT_getWeatherByCity:Ljava/lang/String;

    .line 31
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v0, :cond_1

    const-string v0, "http://htctablet.accu-weather.com/widget/htctablet/weather-data.asp"

    :goto_1
    sput-object v0, Lcom/htc/util/weather/WSPPUtility;->DEFAULT_getWeatherByGeo:Ljava/lang/String;

    .line 83
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/util/weather/WSPPUtility;->CONDITION_STATUS:[I

    .line 92
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/util/weather/WSPPUtility;->CONDITION_CONVERT:[I

    return-void

    .line 30
    :cond_0
    const-string v0, "http://htc2.accu-weather.com/widget/htc2/weather-data.asp"

    goto :goto_0

    .line 31
    :cond_1
    const-string v0, "http://htc2.accu-weather.com/widget/htc2/weather-data.asp"

    goto :goto_1

    .line 83
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 92
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/util/weather/WSPUtility;-><init>()V

    return-void
.end method

.method private static _getCacheData(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;Lcom/htc/util/weather/WeatherLocation;)Lcom/htc/util/weather/WSPPData;
    .locals 15
    .parameter "context"
    .parameter "req"
    .parameter "sysCurLoc"

    .prologue
    .line 261
    const/4 v13, 0x0

    .line 264
    .local v13, cacheData:Lcom/htc/util/weather/WSPPData;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->getParam1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->getParam2()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/htc/util/weather/WSPPUtility;->generateWeatherRequestDbWhereCondition(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->lastUpdate:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, where:Ljava/lang/String;
    const/4 v14, 0x0

    .line 270
    .local v14, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/util/weather/WSPPUtility;->URI_DATA:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/util/weather/WSPPData;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 277
    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    new-instance v13, Lcom/htc/util/weather/WSPPData;

    .end local v13           #cacheData:Lcom/htc/util/weather/WSPPData;
    invoke-direct {v13, v14}, Lcom/htc/util/weather/WSPPData;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    .restart local v13       #cacheData:Lcom/htc/util/weather/WSPPData;
    :cond_0
    if-eqz v14, :cond_1

    .line 282
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 286
    :cond_1
    const/4 v0, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 289
    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/weather/WSPPUtility;->trimLatitude(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 290
    .local v7, curLocLatTrim:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/weather/WSPPUtility;->trimLatitude(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 293
    .local v8, curLocLngTrim:Ljava/lang/String;
    if-eqz v13, :cond_4

    .line 299
    invoke-virtual {v13}, Lcom/htc/util/weather/WSPPData;->getCurLocName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {v13}, Lcom/htc/util/weather/WSPPData;->getCurLocState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {v13}, Lcom/htc/util/weather/WSPPData;->getCurLocCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 302
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Lcom/htc/util/weather/WSPPData;->getCurLocName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Lcom/htc/util/weather/WSPPData;->getCurLocState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Lcom/htc/util/weather/WSPPData;->getCurLocCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 305
    :cond_3
    const/4 v13, 0x0

    .line 327
    :cond_4
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v13}, Lcom/htc/util/weather/WSPRequest;->setReqCurLoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/weather/WSPData;)V

    .line 333
    .end local v7           #curLocLatTrim:Ljava/lang/String;
    .end local v8           #curLocLngTrim:Ljava/lang/String;
    :cond_5
    return-object v13

    .line 281
    .end local v13           #cacheData:Lcom/htc/util/weather/WSPPData;
    :catchall_0
    move-exception v0

    if-eqz v14, :cond_6

    .line 282
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 310
    .restart local v7       #curLocLatTrim:Ljava/lang/String;
    .restart local v8       #curLocLngTrim:Ljava/lang/String;
    .restart local v13       #cacheData:Lcom/htc/util/weather/WSPPData;
    :cond_7
    invoke-virtual {v13}, Lcom/htc/util/weather/WSPPData;->getCurLocLatTrim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v13}, Lcom/htc/util/weather/WSPPData;->getCurLocLngTrim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 312
    :cond_8
    const/4 v13, 0x0

    goto :goto_0
.end method

.method private static _getCurCacheData(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPPData;
    .locals 9
    .parameter "context"
    .parameter "req"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 230
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v0

    if-eq v0, v8, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-object v6

    .line 234
    :cond_1
    const/4 v6, 0x0

    .line 236
    .local v6, cacheData:Lcom/htc/util/weather/WSPPData;
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v0

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPRequest;->getParam1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPRequest;->getParam2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/util/weather/WSPPUtility;->generateWeatherRequestDbWhereCondition(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, where:Ljava/lang/String;
    const/4 v7, 0x0

    .line 241
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/util/weather/WSPPUtility;->URI_DATA:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/util/weather/WSPPData;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 248
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    new-instance v6, Lcom/htc/util/weather/WSPPData;

    .end local v6           #cacheData:Lcom/htc/util/weather/WSPPData;
    invoke-direct {v6, v7}, Lcom/htc/util/weather/WSPPData;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    .restart local v6       #cacheData:Lcom/htc/util/weather/WSPPData;
    :cond_2
    if-eqz v7, :cond_0

    .line 253
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 252
    .end local v6           #cacheData:Lcom/htc/util/weather/WSPPData;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 253
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static beforeToday(Ljava/lang/String;Ljava/lang/String;)I
    .locals 16
    .parameter "date"
    .parameter "timezoneId"

    .prologue
    .line 793
    :try_start_0
    invoke-static/range {p0 .. p1}, Lcom/htc/util/weather/WSPPUtility;->getTimeObject(Ljava/lang/String;Ljava/lang/String;)Landroid/text/format/Time;

    move-result-object v7

    .line 794
    .local v7, tObject:Landroid/text/format/Time;
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 795
    .local v6, tNow:Landroid/text/format/Time;
    if-eqz v6, :cond_0

    if-nez v7, :cond_2

    .line 796
    :cond_0
    const/4 v1, 0x0

    .line 820
    .end local v6           #tNow:Landroid/text/format/Time;
    .end local v7           #tObject:Landroid/text/format/Time;
    :cond_1
    :goto_0
    return v1

    .line 798
    .restart local v6       #tNow:Landroid/text/format/Time;
    .restart local v7       #tObject:Landroid/text/format/Time;
    :cond_2
    invoke-virtual {v6}, Landroid/text/format/Time;->setToNow()V

    .line 799
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_3

    .line 800
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 803
    :cond_3
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 804
    .local v4, t:J
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 805
    .local v8, tn:J
    iget v12, v6, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v12, v12, 0x3c

    iget v13, v6, Landroid/text/format/Time;->minute:I

    add-int/2addr v12, v13

    mul-int/lit8 v12, v12, 0x3c

    iget v13, v6, Landroid/text/format/Time;->second:I

    add-int/2addr v12, v13

    mul-int/lit16 v12, v12, 0x3e8

    int-to-long v2, v12

    .line 806
    .local v2, r:J
    const/4 v7, 0x0

    .line 807
    const/4 v6, 0x0

    .line 809
    sub-long v10, v8, v2

    .line 810
    .local v10, today:J
    sub-long v12, v10, v4

    const-wide/32 v14, 0x5265c00

    div-long/2addr v12, v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v1, v12

    .line 811
    .local v1, daysBetween:I
    if-gez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 814
    .end local v1           #daysBetween:I
    .end local v2           #r:J
    .end local v4           #t:J
    .end local v6           #tNow:Landroid/text/format/Time;
    .end local v7           #tObject:Landroid/text/format/Time;
    .end local v8           #tn:J
    .end local v10           #today:J
    :catch_0
    move-exception v12

    .line 820
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static broadcastDataIntent(Landroid/content/Context;Lcom/htc/util/weather/WSPPData;)V
    .locals 4
    .parameter "context"
    .parameter "data"

    .prologue
    .line 337
    if-nez p1, :cond_0

    .line 338
    const-string v2, "WSPPUtility"

    const-string v3, "can not broadcast data intent because of a null data object"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :goto_0
    return-void

    .line 342
    :cond_0
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, categoryName:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.sync.provider.weather.result"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 346
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static convertConditionID(II)I
    .locals 3
    .parameter "isDay"
    .parameter "inputID"

    .prologue
    const/4 v2, 0x1

    .line 926
    move v0, p1

    .line 927
    .local v0, resultID:I
    invoke-static {p1}, Lcom/htc/util/weather/WSPPUtility;->getConditionStatus(I)I

    move-result v1

    .line 928
    .local v1, statusCurID:I
    if-ne v1, v2, :cond_0

    if-ne p0, v2, :cond_1

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    if-eqz p0, :cond_2

    .line 930
    :cond_1
    sget-object v2, Lcom/htc/util/weather/WSPPUtility;->CONDITION_CONVERT:[I

    array-length v2, v2

    if-ge p1, v2, :cond_2

    .line 931
    sget-object v2, Lcom/htc/util/weather/WSPPUtility;->CONDITION_CONVERT:[I

    aget v0, v2, p1

    .line 936
    :cond_2
    return v0
.end method

.method private static convertHourMinute(Ljava/lang/String;)J
    .locals 11
    .parameter "strTime"

    .prologue
    const/4 v10, 0x2

    const-wide/16 v4, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 703
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 740
    :cond_0
    :goto_0
    return-wide v4

    .line 708
    :cond_1
    const/4 v0, 0x0

    .line 709
    .local v0, isPM:Z
    const-string v6, " "

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 710
    .local v3, tempTime:[Ljava/lang/String;
    array-length v6, v3

    if-ne v6, v10, :cond_0

    .line 714
    aget-object v6, v3, v9

    const-string v7, "AM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 715
    const/4 v0, 0x0

    .line 725
    :goto_1
    aget-object v6, v3, v8

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 726
    .local v2, tempHM:[Ljava/lang/String;
    array-length v6, v2

    if-ne v6, v10, :cond_0

    .line 730
    new-array v1, v10, [I

    .line 731
    .local v1, result:[I
    aget-object v4, v2, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v8

    .line 732
    aget-object v4, v2, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v9

    .line 733
    if-eqz v0, :cond_2

    .line 734
    aget v4, v1, v8

    add-int/lit8 v4, v4, 0xc

    aput v4, v1, v8

    .line 740
    :cond_2
    aget v4, v1, v8

    aget v5, v1, v9

    invoke-static {v4, v5}, Lcom/htc/util/weather/WSPPUtility;->getHourMinute(II)J

    move-result-wide v4

    goto :goto_0

    .line 717
    .end local v1           #result:[I
    .end local v2           #tempHM:[Ljava/lang/String;
    :cond_3
    aget-object v6, v3, v9

    const-string v7, "PM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 718
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static generateWSPRequestForCurrentLocationWithCurCacheData(Landroid/content/Context;)Lcom/htc/util/weather/WSPRequest;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    .line 118
    invoke-static {}, Lcom/htc/util/weather/WSPPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v0

    .line 120
    .local v0, req:Lcom/htc/util/weather/WSPRequest;
    invoke-static {p0, v0}, Lcom/htc/util/weather/WSPPUtility;->_getCurCacheData(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPPData;

    move-result-object v10

    .line 121
    .local v10, curInCache:Lcom/htc/util/weather/WSPPData;
    if-nez v10, :cond_0

    .line 122
    const-string v1, "WSPPUtility"

    const-string v2, "Generate request for cur loc with cur in db, but there is no cur in db. (Called from Force update or Auto-sync)"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    return-object v9

    .line 126
    :cond_0
    invoke-virtual {v10}, Lcom/htc/util/weather/WSPPData;->getCurLocLat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/util/weather/WSPPData;->getCurLocLng()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/htc/util/weather/WSPPData;->getCurLocLatTrim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/htc/util/weather/WSPPData;->getCurLocLngTrim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/htc/util/weather/WSPPData;->getCurLocName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/htc/util/weather/WSPPData;->getCurLocState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Lcom/htc/util/weather/WSPPData;->getCurLocCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10}, Lcom/htc/util/weather/WSPPData;->getCurLocTimezoneId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v9}, Lcom/htc/util/weather/WSPRequest;->setReqCurLoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/weather/WSPData;)V

    move-object v9, v0

    .line 129
    goto :goto_0
.end method

.method private static getConditionStatus(I)I
    .locals 1
    .parameter "conditionID"

    .prologue
    .line 941
    sget-object v0, Lcom/htc/util/weather/WSPPUtility;->CONDITION_STATUS:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 943
    sget-object v0, Lcom/htc/util/weather/WSPPUtility;->CONDITION_STATUS:[I

    aget v0, v0, p0

    .line 945
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCurrentDataStatus(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 24
    .parameter "context"
    .parameter "extras"

    .prologue
    .line 496
    const/16 v19, 0x1

    .line 500
    .local v19, dataType:I
    if-eqz p1, :cond_8

    .line 501
    const-string v8, "lastUpdateTime"

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10, v11}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v10

    double-to-long v2, v10

    .line 502
    .local v2, lastUpdate:J
    const-string v8, "timeZoneID"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, strTimezone:Ljava/lang/String;
    const-string v8, "curConditionID"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 504
    .local v7, currentID:Ljava/lang/String;
    const-string v8, "dayLightFlag"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 505
    .local v20, dayLightFlag:Ljava/lang/String;
    const-string v8, "dataType"

    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 506
    const-string v8, "sunrise"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 507
    .local v4, strSunrise:[Ljava/lang/String;
    const-string v8, "sunset"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 508
    .local v5, strSunset:[Ljava/lang/String;
    const-string v8, "fstDate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 515
    .local v6, fstDate:[Ljava/lang/String;
    const/4 v8, 0x1

    move/from16 v0, v19

    if-ne v0, v8, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 516
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 519
    :cond_1
    if-eqz v20, :cond_3

    const-string v8, "True"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v9, 0x1

    .line 522
    .local v9, isDay:Z
    :goto_0
    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v8, :cond_4

    move-object/from16 v8, p0

    .line 523
    invoke-static/range {v1 .. v9}, Lcom/htc/util/weather/WSPPUtility;->getCurrentDataStatus(Ljava/lang/String;J[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)[I

    move-result-object v23

    .line 529
    .local v23, resTemp:[I
    :goto_1
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 530
    .local v22, res:Landroid/os/Bundle;
    if-eqz v22, :cond_2

    .line 531
    const-string v10, "isCurrent"

    const/4 v8, 0x0

    aget v8, v23, v8

    const/4 v11, 0x1

    if-ne v8, v11, :cond_5

    const/4 v8, 0x1

    :goto_2
    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 532
    const-string v10, "index"

    const/4 v8, 0x1

    aget v8, v23, v8

    if-gez v8, :cond_6

    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 533
    const-string v10, "isDay"

    const/4 v8, 0x2

    aget v8, v23, v8

    const/4 v11, 0x1

    if-ne v8, v11, :cond_7

    const/4 v8, 0x1

    :goto_4
    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 534
    const-string v8, "convertedCurConditionID"

    const/4 v10, 0x3

    aget v10, v23, v10

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 546
    .end local v1           #strTimezone:Ljava/lang/String;
    .end local v2           #lastUpdate:J
    .end local v4           #strSunrise:[Ljava/lang/String;
    .end local v5           #strSunset:[Ljava/lang/String;
    .end local v6           #fstDate:[Ljava/lang/String;
    .end local v7           #currentID:Ljava/lang/String;
    .end local v9           #isDay:Z
    .end local v20           #dayLightFlag:Ljava/lang/String;
    .end local v22           #res:Landroid/os/Bundle;
    .end local v23           #resTemp:[I
    :cond_2
    :goto_5
    return-object v22

    .line 519
    .restart local v1       #strTimezone:Ljava/lang/String;
    .restart local v2       #lastUpdate:J
    .restart local v4       #strSunrise:[Ljava/lang/String;
    .restart local v5       #strSunset:[Ljava/lang/String;
    .restart local v6       #fstDate:[Ljava/lang/String;
    .restart local v7       #currentID:Ljava/lang/String;
    .restart local v20       #dayLightFlag:Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .line 526
    .restart local v9       #isDay:Z
    :cond_4
    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v10, v1

    move-wide v11, v2

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    invoke-static/range {v10 .. v18}, Lcom/htc/util/weather/WSPPUtility;->getCurrentDataStatus(Ljava/lang/String;J[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)[I

    move-result-object v23

    .restart local v23       #resTemp:[I
    goto :goto_1

    .line 531
    .restart local v22       #res:Landroid/os/Bundle;
    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    .line 532
    :cond_6
    const/4 v8, 0x1

    aget v8, v23, v8

    goto :goto_3

    .line 533
    :cond_7
    const/4 v8, 0x0

    goto :goto_4

    .line 539
    .end local v1           #strTimezone:Ljava/lang/String;
    .end local v2           #lastUpdate:J
    .end local v4           #strSunrise:[Ljava/lang/String;
    .end local v5           #strSunset:[Ljava/lang/String;
    .end local v6           #fstDate:[Ljava/lang/String;
    .end local v7           #currentID:Ljava/lang/String;
    .end local v9           #isDay:Z
    .end local v20           #dayLightFlag:Ljava/lang/String;
    .end local v22           #res:Landroid/os/Bundle;
    .end local v23           #resTemp:[I
    :cond_8
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 540
    .local v21, errorRes:Landroid/os/Bundle;
    if-eqz v21, :cond_9

    .line 541
    const-string v8, "isCurrent"

    const/4 v10, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 542
    const-string v8, "index"

    const/4 v10, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 543
    const-string v8, "isDay"

    const/4 v10, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 544
    const-string v8, "convertedCurConditionID"

    const/4 v10, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_9
    move-object/from16 v22, v21

    .line 546
    goto :goto_5
.end method

.method public static getCurrentDataStatus(Ljava/lang/String;J[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)[I
    .locals 9
    .parameter "strTtimezone"
    .parameter "lastUpdate"
    .parameter "strSunrise"
    .parameter "strSunset"
    .parameter "fstDate"
    .parameter "currentID"

    .prologue
    .line 488
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v8}, Lcom/htc/util/weather/WSPPUtility;->getCurrentDataStatus(Ljava/lang/String;J[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentDataStatus(Ljava/lang/String;J[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)[I
    .locals 1
    .parameter "strTtimezone"
    .parameter "lastUpdate"
    .parameter "strSunrise"
    .parameter "strSunset"
    .parameter "fstDate"
    .parameter "currentID"
    .parameter "context"

    .prologue
    .line 558
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getCurrentDataStatus(Ljava/lang/String;J[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)[I
    .locals 34
    .parameter "strTtimezone"
    .parameter "lastUpdate"
    .parameter "strSunrise"
    .parameter "strSunset"
    .parameter "fstDate"
    .parameter "currentID"
    .parameter "context"
    .parameter "dayLightFlag"

    .prologue
    .line 567
    const/4 v2, 0x4

    new-array v0, v2, [I

    move-object/from16 v29, v0

    fill-array-data v29, :array_0

    .line 568
    .local v29, result:[I
    const/4 v3, 0x2

    if-eqz p8, :cond_1

    const/4 v2, 0x1

    :goto_0
    aput v2, v29, v3

    .line 570
    const/4 v2, 0x3

    :try_start_0
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v29, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_2

    .line 697
    :cond_0
    :goto_1
    return-object v29

    .line 568
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 572
    :catch_0
    move-exception v27

    .line 574
    .local v27, e:Ljava/lang/Exception;
    const/4 v2, 0x3

    const/4 v3, 0x0

    aput v3, v29, v2

    goto :goto_1

    .line 583
    .end local v27           #e:Ljava/lang/Exception;
    :cond_2
    if-eqz p5, :cond_0

    move-object/from16 v0, p5

    array-length v2, v0

    if-lez v2, :cond_0

    .line 589
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v31, v0

    .line 590
    .local v31, sizefstDate:I
    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    array-length v2, v0

    if-gtz v2, :cond_4

    .line 591
    :cond_3
    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 p3, v0

    .line 594
    :cond_4
    if-eqz p4, :cond_5

    move-object/from16 v0, p4

    array-length v2, v0

    if-gtz v2, :cond_6

    .line 595
    :cond_5
    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 p4, v0

    .line 602
    :cond_6
    const/4 v11, 0x0

    .line 605
    .local v11, isOnlineSearchedCity:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 606
    .local v25, currentSystemTime:J
    const/4 v5, 0x0

    .line 607
    .local v5, cCurrentTime:Ljava/util/Calendar;
    if-eqz p0, :cond_7

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 609
    :cond_7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 610
    const/4 v11, 0x1

    .line 617
    :goto_2
    if-eqz v5, :cond_0

    .line 621
    move-wide/from16 v0, v25

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 624
    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-static {v2}, Lcom/htc/util/weather/WSPPUtility;->convertHourMinute(Ljava/lang/String;)J

    move-result-wide v6

    .line 625
    .local v6, longSunriseBase:J
    const/4 v2, 0x0

    aget-object v2, p4, v2

    invoke-static {v2}, Lcom/htc/util/weather/WSPPUtility;->convertHourMinute(Ljava/lang/String;)J

    move-result-wide v8

    .line 626
    .local v8, longSunsetBase:J
    const-wide/16 v2, -0x1

    cmp-long v2, v6, v2

    if-nez v2, :cond_8

    const-wide/16 v2, -0x1

    cmp-long v2, v8, v2

    if-nez v2, :cond_8

    .line 627
    const/4 v2, 0x0

    const-string v3, "6:00 AM"

    aput-object v3, p3, v2

    .line 628
    const/4 v2, 0x0

    const-string v3, "6:00 PM"

    aput-object v3, p4, v2

    .line 629
    const-wide/16 v6, 0x258

    .line 630
    const-wide/16 v8, 0x708

    :cond_8
    move-object/from16 v2, p7

    move-wide/from16 v3, p1

    move-object/from16 v10, p6

    .line 634
    invoke-static/range {v2 .. v11}, Lcom/htc/util/weather/WSPPUtility;->isOverdue(Landroid/content/Context;JLjava/util/Calendar;JJLjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 636
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v29, v2

    .line 637
    move-object/from16 v0, p3

    array-length v2, v0

    move-object/from16 v0, p4

    array-length v3, v0

    if-gt v2, v3, :cond_b

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v30, v0

    .line 638
    .local v30, size:I
    :goto_3
    move-object/from16 v0, p5

    array-length v2, v0

    move/from16 v0, v30

    if-gt v0, v2, :cond_c

    .line 639
    :goto_4
    const/4 v2, 0x0

    aget-object v2, p5, v2

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lcom/htc/util/weather/WSPPUtility;->beforeToday(Ljava/lang/String;Ljava/lang/String;)I

    move-result v28

    .line 640
    .local v28, offset:I
    add-int/lit8 v2, v30, -0x1

    move/from16 v0, v28

    if-le v0, v2, :cond_d

    const/16 v24, 0x1

    .line 641
    .local v24, allOverDue:Z
    :goto_5
    add-int/lit8 v2, v30, -0x1

    move/from16 v0, v28

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v28

    .line 642
    const/4 v2, 0x1

    aput v28, v29, v2

    .line 643
    const/16 v2, 0xb

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/util/weather/WSPPUtility;->getHourMinute(II)J

    move-result-wide v12

    .line 644
    .local v12, _longCurrent:J
    aget-object v2, p3, v28

    invoke-static {v2}, Lcom/htc/util/weather/WSPPUtility;->convertHourMinute(Ljava/lang/String;)J

    move-result-wide v14

    .line 645
    .local v14, _longSunrise:J
    aget-object v2, p4, v28

    invoke-static {v2}, Lcom/htc/util/weather/WSPPUtility;->convertHourMinute(Ljava/lang/String;)J

    move-result-wide v16

    .line 646
    .local v16, _longSunset:J
    const-wide/16 v2, -0x1

    cmp-long v2, v14, v2

    if-nez v2, :cond_9

    const-wide/16 v2, -0x1

    cmp-long v2, v16, v2

    if-nez v2, :cond_9

    .line 647
    const-string v2, "6:00 AM"

    aput-object v2, p3, v28

    .line 648
    const-string v2, "6:00 PM"

    aput-object v2, p4, v28

    .line 649
    const-wide/16 v14, 0x258

    .line 650
    const-wide/16 v16, 0x708

    .line 652
    :cond_9
    invoke-static/range {v12 .. v17}, Lcom/htc/util/weather/WSPPUtility;->getTimeStatus(JJJ)I

    move-result v32

    .line 653
    .local v32, statusCur:I
    const/4 v2, 0x1

    move/from16 v0, v32

    if-ne v0, v2, :cond_e

    .line 655
    const/4 v2, 0x2

    const/4 v3, 0x1

    aput v3, v29, v2

    goto/16 :goto_1

    .line 614
    .end local v6           #longSunriseBase:J
    .end local v8           #longSunsetBase:J
    .end local v12           #_longCurrent:J
    .end local v14           #_longSunrise:J
    .end local v16           #_longSunset:J
    .end local v24           #allOverDue:Z
    .end local v28           #offset:I
    .end local v30           #size:I
    .end local v32           #statusCur:I
    :cond_a
    invoke-static/range {p0 .. p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    .line 615
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 637
    .restart local v6       #longSunriseBase:J
    .restart local v8       #longSunsetBase:J
    :cond_b
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v30, v0

    goto :goto_3

    .line 638
    .restart local v30       #size:I
    :cond_c
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v30, v0

    goto :goto_4

    .line 640
    .restart local v28       #offset:I
    :cond_d
    const/16 v24, 0x0

    goto :goto_5

    .line 657
    .restart local v12       #_longCurrent:J
    .restart local v14       #_longSunrise:J
    .restart local v16       #_longSunset:J
    .restart local v24       #allOverDue:Z
    .restart local v32       #statusCur:I
    :cond_e
    const/4 v2, 0x2

    move/from16 v0, v32

    if-ne v0, v2, :cond_f

    .line 659
    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v29, v2

    goto/16 :goto_1

    .line 663
    :cond_f
    if-nez v24, :cond_10

    .line 664
    const/4 v3, 0x1

    const/4 v2, 0x1

    aget v2, v29, v2

    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_11

    const/4 v2, 0x1

    aget v2, v29, v2

    add-int/lit8 v2, v2, -0x1

    :goto_6
    aput v2, v29, v3

    .line 665
    :cond_10
    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v29, v2

    goto/16 :goto_1

    .line 664
    :cond_11
    const/4 v2, 0x0

    goto :goto_6

    .line 674
    .end local v12           #_longCurrent:J
    .end local v14           #_longSunrise:J
    .end local v16           #_longSunset:J
    .end local v24           #allOverDue:Z
    .end local v28           #offset:I
    .end local v30           #size:I
    .end local v32           #statusCur:I
    :cond_12
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v29, v2

    .line 675
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v29, v2

    .line 677
    if-nez v11, :cond_0

    .line 679
    const/16 v2, 0xb

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/util/weather/WSPPUtility;->getHourMinute(II)J

    move-result-wide v12

    .restart local v12       #_longCurrent:J
    move-wide/from16 v18, v12

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    .line 680
    invoke-static/range {v18 .. v23}, Lcom/htc/util/weather/WSPPUtility;->getTimeStatus(JJJ)I

    move-result v33

    .line 681
    .local v33, statusCurTime:I
    if-eqz v33, :cond_13

    const/4 v2, 0x2

    move/from16 v0, v33

    if-ne v0, v2, :cond_14

    .line 682
    :cond_13
    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v29, v2

    .line 688
    :goto_7
    const/4 v2, 0x3

    const/4 v3, 0x2

    aget v3, v29, v3

    const/4 v4, 0x3

    aget v4, v29, v4

    invoke-static {v3, v4}, Lcom/htc/util/weather/WSPPUtility;->convertConditionID(II)I

    move-result v3

    aput v3, v29, v2

    goto/16 :goto_1

    .line 685
    :cond_14
    const/4 v2, 0x2

    const/4 v3, 0x1

    aput v3, v29, v2

    goto :goto_7

    .line 567
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static getHourMinute(II)J
    .locals 2
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 745
    mul-int/lit8 v0, p0, 0x64

    add-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method private static getTimeObject(Ljava/lang/String;Ljava/lang/String;)Landroid/text/format/Time;
    .locals 13
    .parameter "date"
    .parameter "timezoneId"

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 825
    const/16 v8, 0x76c

    .line 826
    .local v8, y:I
    const/4 v6, 0x1

    .line 827
    .local v6, m:I
    const/4 v1, 0x1

    .line 828
    .local v1, d:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .local v4, keywords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v4, :cond_0

    move-object v7, v10

    .line 856
    :goto_0
    return-object v7

    .line 831
    :cond_0
    const-string v9, "/"

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v3, v0, v2

    .line 832
    .local v3, k:Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 833
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 837
    .end local v3           #k:Ljava/lang/String;
    :cond_2
    :try_start_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 838
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 839
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v11, :cond_4

    .line 840
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 841
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v12, :cond_5

    .line 842
    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 848
    :cond_5
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 849
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 850
    .local v7, t:Landroid/text/format/Time;
    if-nez v7, :cond_6

    move-object v7, v10

    goto :goto_0

    .line 852
    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_7

    .line 853
    invoke-virtual {v7, p1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 855
    :cond_7
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v7, v1, v9, v8}, Landroid/text/format/Time;->set(III)V

    goto :goto_0

    .line 844
    .end local v7           #t:Landroid/text/format/Time;
    :catch_0
    move-exception v9

    goto :goto_2
.end method

.method private static getTimeStatus(JJJ)I
    .locals 4
    .parameter "time"
    .parameter "sunrise"
    .parameter "sunset"

    .prologue
    const-wide/16 v2, 0x0

    .line 750
    const/4 v0, 0x0

    .line 751
    .local v0, status:I
    cmp-long v1, p2, v2

    if-gez v1, :cond_0

    cmp-long v1, p4, v2

    if-gez v1, :cond_0

    .line 752
    const-wide/16 p2, 0x258

    .line 753
    const-wide/16 p4, 0x708

    .line 755
    :cond_0
    cmp-long v1, p2, v2

    if-gez v1, :cond_1

    .line 757
    const/4 v0, 0x2

    .line 787
    :goto_0
    return v0

    .line 759
    :cond_1
    cmp-long v1, p4, v2

    if-gez v1, :cond_2

    .line 761
    const/4 v0, 0x1

    goto :goto_0

    .line 764
    :cond_2
    cmp-long v1, p2, p4

    if-gez v1, :cond_5

    .line 765
    cmp-long v1, p0, p2

    if-gez v1, :cond_3

    .line 766
    const/4 v0, 0x0

    goto :goto_0

    .line 767
    :cond_3
    cmp-long v1, p0, p2

    if-ltz v1, :cond_4

    cmp-long v1, p0, p4

    if-gez v1, :cond_4

    .line 768
    const/4 v0, 0x1

    goto :goto_0

    .line 770
    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    .line 773
    :cond_5
    cmp-long v1, p0, p4

    if-gez v1, :cond_6

    .line 774
    const/4 v0, 0x1

    goto :goto_0

    .line 775
    :cond_6
    cmp-long v1, p0, p4

    if-ltz v1, :cond_7

    cmp-long v1, p0, p2

    if-gez v1, :cond_7

    .line 776
    const/4 v0, 0x2

    goto :goto_0

    .line 778
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getUsingWCRFlag(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 357
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.usingwcr"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 358
    .local v0, flag:Z
    :goto_0
    const-string v1, "WSPPUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get UsingWCR flag is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return v0

    .line 357
    .end local v0           #flag:Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getWCRFindCityName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 446
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.wcrdata.findcityname"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    const-string v1, "WSPPUtility"

    const-string v2, "get WCR FindCityName: empty, using default address"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const-string v0, "http://htc2.accu-weather.com/widget/htc2/city-find.asp"

    .line 451
    :cond_0
    const-string v1, "WSPPUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get WCR FindCityName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return-object v0
.end method

.method public static getWCRGetBookmark(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 474
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.wcrdata.getbookmark"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    const-string v1, "WSPPUtility"

    const-string v2, "get WCR GetBookmark: empty, using default address"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v0, "http://www.accuweather.com/?p=htcfav"

    .line 479
    :cond_0
    const-string v1, "WSPPUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get WCR GetBookmark: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-object v0
.end method

.method public static getWCRGetMoreDetails(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 436
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.wcrdata.getmoredetails"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    const-string v1, "WSPPUtility"

    const-string v2, "get WCR GetMoreDetails: empty, using default address"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string v0, "http://www.accuweather.com/m/details1.aspx"

    .line 441
    :cond_0
    const-string v1, "WSPPUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get WCR GetMoreDetails: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return-object v0
.end method

.method public static getWCRGetVendorLogo(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 398
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.wcrdata.GetVendorLogo"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, address:Ljava/lang/String;
    const-string v1, "WSPPUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get WCR GetVendorLogo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-object v0
.end method

.method public static getWCRGetWTByGeo(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 460
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.wcrdata.getwtbygeo"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    const-string v1, "WSPPUtility"

    const-string v2, "get WCR GetWTByGeo: empty, using default address"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v0, "http://htc2.accu-weather.com/widget/htc2/weather-data.asp"

    .line 465
    :cond_0
    const-string v1, "WSPPUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get WCR GetWTByGeo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-object v0
.end method

.method public static getWCRGetWeatherByCity(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 408
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.wcrdata.getweatherbycity"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    const-string v1, "WSPPUtility"

    const-string v2, "get WCR GetWeatherByCity: empty, using default address"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    sget-object v0, Lcom/htc/util/weather/WSPPUtility;->DEFAULT_getWeatherByCity:Ljava/lang/String;

    .line 413
    :cond_0
    const-string v1, "WSPPUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get WCR GetWeatherByCity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-object v0
.end method

.method public static getWCRGetWeatherByGeo(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 422
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.wcrdata.getweatherbygeo"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    const-string v1, "WSPPUtility"

    const-string v2, "get WCR GetWeatherByGeo: empty, using default address"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    sget-object v0, Lcom/htc/util/weather/WSPPUtility;->DEFAULT_getWeatherByGeo:Ljava/lang/String;

    .line 427
    :cond_0
    const-string v1, "WSPPUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get WCR GetWeatherByGeo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return-object v0
.end method

.method private static isOverdue(Landroid/content/Context;JLjava/util/Calendar;JJLjava/lang/String;Z)Z
    .locals 15
    .parameter "context"
    .parameter "lastUpdateTime"
    .parameter "cCurrent"
    .parameter "longSunrise"
    .parameter "longSunset"
    .parameter "currentID"
    .parameter "isOnlineSearchedCity"

    .prologue
    .line 864
    const-wide/32 v10, 0x36ee80

    .line 865
    .local v10, interval:J
    if-eqz p0, :cond_0

    .line 866
    invoke-static {p0}, Lcom/htc/util/weather/WSPUtility;->isSyncAutomatically(Landroid/content/Context;)Z

    move-result v7

    .line 867
    .local v7, bAutoSync:Z
    if-eqz v7, :cond_0

    .line 868
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.htc.sync.provider.weather.setting.autosyncfrequency"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/util/weather/WSPPUtility;->safe_parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v10, v3

    .line 871
    .end local v7           #bAutoSync:Z
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 876
    .local v8, current_time:J
    cmp-long v3, v8, p1

    if-ltz v3, :cond_2

    sub-long v3, v8, p1

    cmp-long v3, v3, v10

    if-gez v3, :cond_2

    .line 878
    const/4 v12, 0x0

    .line 879
    .local v12, isOver:Z
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v3, :cond_1

    if-nez p9, :cond_1

    .line 880
    const/16 v3, 0xb

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xc

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/htc/util/weather/WSPPUtility;->getHourMinute(II)J

    move-result-wide v1

    .local v1, longCurTime:J
    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    .line 881
    invoke-static/range {v1 .. v6}, Lcom/htc/util/weather/WSPPUtility;->getTimeStatus(JJJ)I

    move-result v14

    .line 882
    .local v14, statusCurTime:I
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/htc/util/weather/WSPPUtility;->getConditionStatus(I)I

    move-result v13

    .line 883
    .local v13, statusCurID:I
    packed-switch v13, :pswitch_data_0

    .line 906
    .end local v1           #longCurTime:J
    .end local v12           #isOver:Z
    .end local v13           #statusCurID:I
    .end local v14           #statusCurTime:I
    :cond_1
    :goto_0
    return v12

    .line 885
    .restart local v1       #longCurTime:J
    .restart local v12       #isOver:Z
    .restart local v13       #statusCurID:I
    .restart local v14       #statusCurTime:I
    :pswitch_0
    const/4 v3, 0x1

    if-eq v14, v3, :cond_1

    .line 886
    const/4 v12, 0x1

    goto :goto_0

    .line 890
    :pswitch_1
    const/4 v3, 0x1

    if-ne v14, v3, :cond_1

    .line 891
    const/4 v12, 0x1

    goto :goto_0

    .line 906
    .end local v1           #longCurTime:J
    .end local v12           #isOver:Z
    .end local v13           #statusCurID:I
    .end local v14           #statusCurTime:I
    :cond_2
    const/4 v12, 0x1

    goto :goto_0

    .line 883
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPPData;
    .locals 28
    .parameter "context"
    .parameter "req"

    .prologue
    .line 133
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 134
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Context or WSPRequest can not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 139
    :cond_1
    const/16 v25, 0x0

    .line 140
    .local v25, sysCurLoc:Lcom/htc/util/weather/WeatherLocation;
    const/4 v4, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v5

    if-ne v4, v5, :cond_3

    const/16 v22, 0x1

    .line 143
    .local v22, isCurLocType:Z
    :goto_0
    if-eqz v22, :cond_4

    .line 144
    invoke-static/range {p0 .. p0}, Lcom/htc/util/weather/WSPPUtility;->_getCurrentLocation(Landroid/content/Context;)Lcom/htc/util/weather/WeatherLocation;

    move-result-object v25

    .line 145
    if-nez v25, :cond_4

    .line 146
    const-string v4, "WSPPUtility"

    const-string v5, "request cur loc, but there is no sys cur"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/16 v17, 0x0

    .line 226
    :cond_2
    :goto_1
    return-object v17

    .line 140
    .end local v22           #isCurLocType:Z
    :cond_3
    const/16 v22, 0x0

    goto :goto_0

    .line 152
    .restart local v22       #isCurLocType:Z
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/htc/util/weather/WSPPUtility;->_getCacheData(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;Lcom/htc/util/weather/WeatherLocation;)Lcom/htc/util/weather/WSPPData;

    move-result-object v17

    .line 155
    .local v17, cacheData:Lcom/htc/util/weather/WSPPData;
    invoke-static/range {p0 .. p1}, Lcom/htc/util/weather/WSPPUtility;->_addRequestInDatabase(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)V

    .line 158
    invoke-static/range {p0 .. p0}, Lcom/htc/util/weather/WSPPUtility;->isSyncAutomatically(Landroid/content/Context;)Z

    move-result v23

    .line 159
    .local v23, isSyncAutomatically:Z
    invoke-static/range {p0 .. p0}, Lcom/htc/util/weather/WSPPUtility;->areBackgroundDataAndAutoSyncEnabled(Landroid/content/Context;)Z

    move-result v14

    .line 160
    .local v14, areBackgroundDataAndAutoSyncEnabled:Z
    if-eqz v17, :cond_9

    const/16 v20, 0x1

    .line 161
    .local v20, hasCacheData:Z
    :goto_2
    const/16 v21, 0x0

    .line 165
    .local v21, isCacheOverdue:Z
    if-eqz v20, :cond_5

    .line 166
    invoke-static/range {p0 .. p0}, Lcom/htc/util/weather/WSPPUtility;->getAutoSyncFrequency(Landroid/content/Context;)J

    move-result-wide v15

    .line 167
    .local v15, autoSyncFrequency:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v12, v4, v15

    .line 169
    .local v12, acceptablyTime:J
    invoke-virtual/range {v17 .. v17}, Lcom/htc/util/weather/WSPPData;->getLastUpdate()J

    move-result-wide v18

    .line 170
    .local v18, cacheDataUpdate:J
    cmp-long v4, v18, v12

    if-gez v4, :cond_a

    const/16 v21, 0x1

    .line 175
    .end local v12           #acceptablyTime:J
    .end local v15           #autoSyncFrequency:J
    .end local v18           #cacheDataUpdate:J
    :cond_5
    :goto_3
    if-eqz v22, :cond_7

    .line 176
    if-eqz v20, :cond_6

    if-nez v21, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/htc/util/weather/WSPPUtility;->isWSPCurrentLocationFlagOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 177
    invoke-static/range {p0 .. p0}, Lcom/htc/util/weather/WSPPUtility;->turnOffWSPCurrentLocationFlag(Landroid/content/Context;)V

    .line 178
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/htc/util/weather/WSPPUtility;->broadcastDataIntent(Landroid/content/Context;Lcom/htc/util/weather/WSPPData;)V

    .line 194
    :cond_6
    if-nez v14, :cond_7

    if-nez v20, :cond_7

    .line 196
    new-instance v3, Lcom/htc/util/weather/WSPPData;

    invoke-direct {v3}, Lcom/htc/util/weather/WSPPData;-><init>()V

    .line 198
    .local v3, d:Lcom/htc/util/weather/WSPPData;
    invoke-virtual/range {v25 .. v25}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/weather/WSPPUtility;->trimLatitude(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 199
    .local v6, curLocLatTrim:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/weather/WSPPUtility;->trimLatitude(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 201
    .local v7, curLocLngTrim:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v25 .. v25}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v25 .. v25}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v25 .. v25}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v3 .. v11}, Lcom/htc/util/weather/WSPPData;->setTypeCurrentLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->getType()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->getParam1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/htc/util/weather/WSPRequest;->getParam2()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v5, v8}, Lcom/htc/util/weather/WSPPUtility;->generateWeatherRequestDbWhereCondition(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 206
    .local v27, where:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/util/weather/WSPPUtility;->URI_DATA:Landroid/net/Uri;

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPPData;->toContentValues()Landroid/content/ContentValues;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v4, v5, v8, v0, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v24

    .line 207
    .local v24, ret:I
    if-lez v24, :cond_b

    .line 214
    :goto_4
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/htc/util/weather/WSPPUtility;->broadcastDataIntent(Landroid/content/Context;Lcom/htc/util/weather/WSPPData;)V

    .line 218
    .end local v3           #d:Lcom/htc/util/weather/WSPPData;
    .end local v6           #curLocLatTrim:Ljava/lang/String;
    .end local v7           #curLocLngTrim:Ljava/lang/String;
    .end local v24           #ret:I
    .end local v27           #where:Ljava/lang/String;
    :cond_7
    if-eqz v23, :cond_c

    if-eqz v20, :cond_8

    if-eqz v21, :cond_c

    :cond_8
    const/16 v26, 0x1

    .line 222
    .local v26, triggerSyncService:Z
    :goto_5
    if-eqz v26, :cond_2

    .line 223
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/htc/util/weather/WSPRequest;

    const/4 v8, 0x0

    aput-object p1, v5, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v8}, Lcom/htc/util/weather/WSPPUtility;->triggerSyncService(Landroid/content/Context;Ljava/lang/String;[Lcom/htc/util/weather/WSPRequest;I)V

    goto/16 :goto_1

    .line 160
    .end local v20           #hasCacheData:Z
    .end local v21           #isCacheOverdue:Z
    .end local v26           #triggerSyncService:Z
    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 170
    .restart local v12       #acceptablyTime:J
    .restart local v15       #autoSyncFrequency:J
    .restart local v18       #cacheDataUpdate:J
    .restart local v20       #hasCacheData:Z
    .restart local v21       #isCacheOverdue:Z
    :cond_a
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 210
    .end local v12           #acceptablyTime:J
    .end local v15           #autoSyncFrequency:J
    .end local v18           #cacheDataUpdate:J
    .restart local v3       #d:Lcom/htc/util/weather/WSPPData;
    .restart local v6       #curLocLatTrim:Ljava/lang/String;
    .restart local v7       #curLocLngTrim:Ljava/lang/String;
    .restart local v24       #ret:I
    .restart local v27       #where:Ljava/lang/String;
    :cond_b
    const-string v4, "WSPPUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(auto-sync is disabled and no cur in cache) save new cur loc data to cache failed, "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPPData;->toDebugInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 218
    .end local v3           #d:Lcom/htc/util/weather/WSPPData;
    .end local v6           #curLocLatTrim:Ljava/lang/String;
    .end local v7           #curLocLngTrim:Ljava/lang/String;
    .end local v24           #ret:I
    .end local v27           #where:Ljava/lang/String;
    :cond_c
    const/16 v26, 0x0

    goto :goto_5
.end method

.method private static safe_parseInt(Ljava/lang/String;)I
    .locals 2
    .parameter "str"

    .prologue
    .line 912
    const/4 v0, 0x0

    .line 913
    .local v0, val:I
    if-nez p0, :cond_0

    .line 914
    const/4 v1, 0x0

    .line 921
    :goto_0
    return v1

    .line 916
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 921
    goto :goto_0

    .line 918
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static setUsingWCRFlag(Landroid/content/Context;Z)Z
    .locals 4
    .parameter "context"
    .parameter "flag"

    .prologue
    const/4 v0, 0x1

    .line 352
    const-string v1, "WSPPUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set UsingWCR flag to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.htc.sync.provider.weather.setting.usingwcr"

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setWCRFindCityName(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "address"

    .prologue
    .line 383
    const-string v0, "WSPPUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set WCR FindCityName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.sync.provider.weather.setting.wcrdata.findcityname"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setWCRGetBookmark(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "address"

    .prologue
    .line 393
    const-string v0, "WSPPUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set WCR GetBookmark: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.sync.provider.weather.setting.wcrdata.getbookmark"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setWCRGetMoreDetails(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "address"

    .prologue
    .line 378
    const-string v0, "WSPPUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set WCR GetMoreDetails: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.sync.provider.weather.setting.wcrdata.getmoredetails"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setWCRGetVendorLogo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "address"

    .prologue
    .line 363
    const-string v0, "WSPPUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set WCR GetVendorLogo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.sync.provider.weather.setting.wcrdata.GetVendorLogo"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setWCRGetWTByGeo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "address"

    .prologue
    .line 388
    const-string v0, "WSPPUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set WCR GetWTByGeo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.sync.provider.weather.setting.wcrdata.getwtbygeo"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setWCRGetWeatherByCity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "address"

    .prologue
    .line 368
    const-string v0, "WSPPUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set WCR GetWeatherByCity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.sync.provider.weather.setting.wcrdata.getweatherbycity"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setWCRGetWeatherByGeo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "address"

    .prologue
    .line 373
    const-string v0, "WSPPUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set WCR GetWeatherByGeo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.htc.sync.provider.weather.setting.wcrdata.getweatherbygeo"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
