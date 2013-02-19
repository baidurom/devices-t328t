.class public Lcom/htc/util/weather/WeatherUtility;
.super Ljava/lang/Object;
.source "WeatherUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;,
        Lcom/htc/util/weather/WeatherUtility$SearchCondition;,
        Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;,
        Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;
    }
.end annotation


# static fields
.field private static final CURSOR_EXTRA_KEY_COUNTRY:Ljava/lang/String; = "_country"

.field private static final CURSOR_EXTRA_KEY_HAS_EXTINFO:Ljava/lang/String; = "_hasExtInfo"

.field private static final CURSOR_EXTRA_KEY_NAME:Ljava/lang/String; = "_name"

.field private static final CURSOR_EXTRA_KEY_STATE:Ljava/lang/String; = "_state"

.field private static final LANGUAGE_TRANSFER_PROJECT:[Ljava/lang/String; = null

.field public static final LBOUND_LOWERCASE_EN_GR:I = 0x3c9

.field public static final LBOUND_LOWERCASE_EN_US:I = 0x7a

.field public static final LBOUND_LOWERCASE_RU_RU:I = 0x44f

.field public static final LBOUND_UPPERCASE_EN_GR:I = 0x3a9

.field public static final LBOUND_UPPERCASE_EN_US:I = 0x5a

.field public static final LBOUND_UPPERCASE_RU_RU:I = 0x42f

.field private static final LOCATION_LIST_URI_DEFAULT:Landroid/net/Uri; = null

.field private static final LOCATION_LIST_URI_IN_ENGLISH:Landroid/net/Uri; = null

.field private static final LOG_TAG:Ljava/lang/String; = "WeatherUtility"

.field public static final UBOUND_LOWERCASE_EN_GR:I = 0x3b1

.field public static final UBOUND_LOWERCASE_EN_US:I = 0x61

.field public static final UBOUND_LOWERCASE_RU_RU:I = 0x430

.field public static final UBOUND_UPPERCASE_EN_GR:I = 0x391

.field public static final UBOUND_UPPERCASE_EN_US:I = 0x41

.field public static final UBOUND_UPPERCASE_RU_RU:I = 0x410

.field private static final URI_LOCATION:Landroid/net/Uri;

.field private static final URI_LOCATION_LIST:Landroid/net/Uri;

.field private static final URI_SETTING:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lcom/htc/consts/WeatherConsts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "setting"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/weather/WeatherUtility;->URI_SETTING:Landroid/net/Uri;

    .line 27
    sget-object v0, Lcom/htc/consts/WeatherConsts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "location"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/weather/WeatherUtility;->URI_LOCATION:Landroid/net/Uri;

    .line 28
    sget-object v0, Lcom/htc/consts/WeatherConsts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "locationlist"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/weather/WeatherUtility;->URI_LOCATION_LIST:Landroid/net/Uri;

    .line 901
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->state:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->country:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/weather/WeatherUtility;->LANGUAGE_TRANSFER_PROJECT:[Ljava/lang/String;

    .line 1035
    sget-object v0, Lcom/htc/consts/WeatherConsts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "locationlist/lang/0409WWE"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/weather/WeatherUtility;->LOCATION_LIST_URI_IN_ENGLISH:Landroid/net/Uri;

    .line 1036
    sget-object v0, Lcom/htc/consts/WeatherConsts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "locationlist"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/weather/WeatherUtility;->LOCATION_LIST_URI_DEFAULT:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1146
    return-void
.end method

.method public static CursorToWeatherLocation(Landroid/database/Cursor;)Lcom/htc/util/weather/WeatherLocation;
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v4, -0x1

    .line 589
    new-instance v1, Lcom/htc/util/weather/WeatherLocation;

    invoke-direct {v1}, Lcom/htc/util/weather/WeatherLocation;-><init>()V

    .line 590
    .local v1, w:Lcom/htc/util/weather/WeatherLocation;
    const/4 v0, -0x1

    .line 592
    .local v0, columnIndex:I
    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->_id:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_0

    .line 593
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/util/weather/WeatherLocation;->setId(I)V

    .line 596
    :cond_0
    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->type:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_1

    .line 597
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/htc/util/weather/WeatherLocation;->setCustomLocation(Z)V

    .line 600
    :cond_1
    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->code:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_2

    .line 601
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/weather/WeatherLocation;->setCode(Ljava/lang/String;)V

    .line 604
    :cond_2
    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_3

    .line 605
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/weather/WeatherLocation;->setName(Ljava/lang/String;)V

    .line 608
    :cond_3
    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->state:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_4

    .line 609
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/weather/WeatherLocation;->setState(Ljava/lang/String;)V

    .line 612
    :cond_4
    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->country:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_5

    .line 613
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/weather/WeatherLocation;->setCountry(Ljava/lang/String;)V

    .line 616
    :cond_5
    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->latitude:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_6

    .line 617
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/weather/WeatherLocation;->setLatitude(Ljava/lang/String;)V

    .line 620
    :cond_6
    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->longitude:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_7

    .line 621
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/weather/WeatherLocation;->setLongitude(Ljava/lang/String;)V

    .line 624
    :cond_7
    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->timezone:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_8

    .line 625
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/weather/WeatherLocation;->setTimezone(Ljava/lang/String;)V

    .line 628
    :cond_8
    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->timezoneId:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_9

    .line 629
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/weather/WeatherLocation;->setTimezoneId(Ljava/lang/String;)V

    .line 632
    :cond_9
    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->app:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_a

    .line 633
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/weather/WeatherLocation;->setApp(Ljava/lang/String;)V

    .line 636
    :cond_a
    return-object v1

    .line 597
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static CursorToWeatherLocationForWorldClock(Landroid/database/Cursor;)Lcom/htc/util/weather/WeatherLocation;
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v4, -0x1

    .line 640
    new-instance v1, Lcom/htc/util/weather/WeatherLocation;

    invoke-direct {v1}, Lcom/htc/util/weather/WeatherLocation;-><init>()V

    .line 641
    .local v1, w:Lcom/htc/util/weather/WeatherLocation;
    const/4 v0, -0x1

    .line 643
    .local v0, columnIndex:I
    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->_id:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_0

    .line 644
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/util/weather/WeatherLocation;->setId(I)V

    .line 647
    :cond_0
    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->type:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_1

    .line 648
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/htc/util/weather/WeatherLocation;->setCustomLocation(Z)V

    .line 651
    :cond_1
    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->code:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_2

    .line 652
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/weather/WeatherLocation;->setCode(Ljava/lang/String;)V

    .line 655
    :cond_2
    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_3

    .line 656
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/weather/WeatherLocation;->setName(Ljava/lang/String;)V

    .line 659
    :cond_3
    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->state:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_4

    .line 660
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/weather/WeatherLocation;->setState(Ljava/lang/String;)V

    .line 663
    :cond_4
    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->country:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_5

    .line 664
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/weather/WeatherLocation;->setCountry(Ljava/lang/String;)V

    .line 667
    :cond_5
    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->latitude:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_6

    .line 668
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/weather/WeatherLocation;->setLatitude(Ljava/lang/String;)V

    .line 671
    :cond_6
    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->longitude:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_7

    .line 672
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/weather/WeatherLocation;->setLongitude(Ljava/lang/String;)V

    .line 675
    :cond_7
    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->timezone:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_8

    .line 676
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/weather/WeatherLocation;->setTimezone(Ljava/lang/String;)V

    .line 679
    :cond_8
    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->timezoneId:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_9

    .line 680
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/weather/WeatherLocation;->setTimezoneId(Ljava/lang/String;)V

    .line 683
    :cond_9
    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->app:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-le v0, v4, :cond_a

    .line 684
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/weather/WeatherLocation;->setApp(Ljava/lang/String;)V

    .line 687
    :cond_a
    return-object v1

    .line 648
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private static WeatherLocation2LocationContentValues(Ljava/lang/String;Lcom/htc/util/weather/WeatherLocation;)Landroid/content/ContentValues;
    .locals 4
    .parameter "app"
    .parameter "loc"

    .prologue
    .line 973
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 975
    .local v0, v:Landroid/content/ContentValues;
    sget-object v1, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->app:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    sget-object v1, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->type:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->isCustomLocation()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 977
    sget-object v1, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->code:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    sget-object v1, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    sget-object v1, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->state:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    sget-object v1, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->country:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    sget-object v1, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->latitude:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    sget-object v1, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->longitude:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    sget-object v1, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->timezone:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getTimezone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    sget-object v1, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->timezoneId:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    return-object v0

    .line 976
    :cond_0
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method private static WeatherLocation2LocationContentValues(Ljava/lang/String;[Lcom/htc/util/weather/WeatherLocation;)[Landroid/content/ContentValues;
    .locals 4
    .parameter "app"
    .parameter "locs"

    .prologue
    .line 990
    array-length v1, p1

    .line 992
    .local v1, totalWeatherLocation:I
    new-array v2, v1, [Landroid/content/ContentValues;

    .line 993
    .local v2, vs:[Landroid/content/ContentValues;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 994
    aget-object v3, p1, v0

    invoke-static {p0, v3}, Lcom/htc/util/weather/WeatherUtility;->WeatherLocation2LocationContentValues(Ljava/lang/String;Lcom/htc/util/weather/WeatherLocation;)Landroid/content/ContentValues;

    move-result-object v3

    aput-object v3, v2, v0

    .line 993
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 997
    :cond_0
    return-object v2
.end method

.method private static _loadLocations(Landroid/content/ContentResolver;Ljava/lang/String;Z)[Lcom/htc/util/weather/WeatherLocation;
    .locals 13
    .parameter "cr"
    .parameter "app"
    .parameter "worldClockInfo"

    .prologue
    const/4 v12, 0x0

    .line 852
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 854
    .local v10, locations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/weather/WeatherLocation;>;"
    const/4 v7, 0x0

    .line 855
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 858
    .local v9, locationListCursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/htc/consts/WeatherConsts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "location"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->app:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v0, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->_id:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v0}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 865
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 867
    :cond_0
    if-eqz p2, :cond_6

    invoke-static {v7}, Lcom/htc/util/weather/WeatherUtility;->CursorToWeatherLocationForWorldClock(Landroid/database/Cursor;)Lcom/htc/util/weather/WeatherLocation;

    move-result-object v11

    .line 869
    .local v11, weatherLocation:Lcom/htc/util/weather/WeatherLocation;
    :goto_0
    invoke-virtual {v11}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v6

    .line 870
    .local v6, code:Ljava/lang/String;
    if-eqz v6, :cond_2

    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 872
    invoke-static {p0, v6}, Lcom/htc/util/weather/WeatherUtility;->getLocationListByCodeForLanguageTransfer(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 873
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 874
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/htc/util/weather/WeatherLocation;->setName(Ljava/lang/String;)V

    .line 875
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/htc/util/weather/WeatherLocation;->setState(Ljava/lang/String;)V

    .line 876
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/htc/util/weather/WeatherLocation;->setCountry(Ljava/lang/String;)V

    .line 878
    :cond_1
    if-eqz v9, :cond_2

    .line 879
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 883
    :cond_2
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 890
    .end local v6           #code:Ljava/lang/String;
    .end local v11           #weatherLocation:Lcom/htc/util/weather/WeatherLocation;
    :cond_3
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 891
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 893
    :cond_4
    if-eqz v7, :cond_5

    .line 894
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 898
    :cond_5
    :goto_1
    new-array v0, v12, [Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/util/weather/WeatherLocation;

    return-object v0

    .line 867
    :cond_6
    :try_start_1
    invoke-static {v7}, Lcom/htc/util/weather/WeatherUtility;->CursorToWeatherLocation(Landroid/database/Cursor;)Lcom/htc/util/weather/WeatherLocation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    goto :goto_0

    .line 887
    :catch_0
    move-exception v8

    .line 888
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "WeatherUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_loadLocations exception was caught: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 890
    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 891
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 893
    :cond_7
    if-eqz v7, :cond_5

    .line 894
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 890
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_8

    .line 891
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 893
    :cond_8
    if-eqz v7, :cond_9

    .line 894
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-static {p0}, Lcom/htc/util/weather/WeatherUtility;->saftSearchCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-static {p0, p1}, Lcom/htc/util/weather/WeatherUtility;->isContainIllegalCharacters(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static addLocation(Landroid/content/ContentResolver;Ljava/lang/String;[Lcom/htc/util/weather/WeatherLocation;)V
    .locals 5
    .parameter "cr"
    .parameter "app"
    .parameter "locations"

    .prologue
    .line 701
    if-eqz p2, :cond_0

    array-length v2, p2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    const/4 v1, 0x0

    .line 707
    .local v1, rowInserted:I
    :try_start_0
    sget-object v2, Lcom/htc/util/weather/WeatherUtility;->URI_LOCATION:Landroid/net/Uri;

    invoke-static {p1, p2}, Lcom/htc/util/weather/WeatherUtility;->WeatherLocation2LocationContentValues(Ljava/lang/String;[Lcom/htc/util/weather/WeatherLocation;)[Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 712
    if-lez v1, :cond_0

    .line 713
    sget-object v2, Lcom/htc/util/weather/WeatherUtility;->URI_LOCATION:Landroid/net/Uri;

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 708
    :catch_0
    move-exception v0

    .line 709
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WeatherUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception was caught: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static deleteLocation(Landroid/content/ContentResolver;I)I
    .locals 5
    .parameter "cr"
    .parameter "locationId"

    .prologue
    const/4 v4, 0x0

    .line 728
    sget-object v1, Lcom/htc/util/weather/WeatherUtility;->URI_LOCATION:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->_id:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 729
    .local v0, rowDeleted:I
    if-lez v0, :cond_0

    .line 730
    sget-object v1, Lcom/htc/util/weather/WeatherUtility;->URI_LOCATION:Landroid/net/Uri;

    invoke-virtual {p0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 733
    :cond_0
    return v0
.end method

.method public static deleteLocation(Landroid/content/ContentResolver;Ljava/lang/String;DD)I
    .locals 5
    .parameter "cr"
    .parameter "app"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    const/4 v4, 0x0

    .line 802
    if-nez p1, :cond_1

    .line 803
    const/4 v0, 0x0

    .line 816
    :cond_0
    :goto_0
    return v0

    .line 806
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->app:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->latitude:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->longitude:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 810
    .local v1, where:Ljava/lang/String;
    sget-object v2, Lcom/htc/util/weather/WeatherUtility;->URI_LOCATION:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 812
    .local v0, rowDeleted:I
    if-lez v0, :cond_0

    .line 813
    sget-object v2, Lcom/htc/util/weather/WeatherUtility;->URI_LOCATION:Landroid/net/Uri;

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public static deleteLocation(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "cr"
    .parameter "app"
    .parameter "code"

    .prologue
    const/4 v4, 0x0

    .line 748
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 749
    :cond_0
    const/4 v0, 0x0

    .line 761
    :cond_1
    :goto_0
    return v0

    .line 752
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->app:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->code:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/htc/util/weather/WeatherUtility;->saftSearchCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 755
    .local v1, where:Ljava/lang/String;
    sget-object v2, Lcom/htc/util/weather/WeatherUtility;->URI_LOCATION:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 757
    .local v0, rowDeleted:I
    if-lez v0, :cond_1

    .line 758
    sget-object v2, Lcom/htc/util/weather/WeatherUtility;->URI_LOCATION:Landroid/net/Uri;

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public static deleteLocation(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "cr"
    .parameter "app"
    .parameter "name"
    .parameter "state"
    .parameter "country"

    .prologue
    const/4 v1, 0x0

    .line 1008
    if-nez p1, :cond_0

    .line 1026
    :goto_0
    return v1

    .line 1012
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->app:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1014
    .local v0, where:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 1015
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/htc/util/weather/WeatherUtility;->saftSearchCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1017
    :cond_1
    if-eqz p3, :cond_2

    .line 1018
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->state:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/htc/util/weather/WeatherUtility;->saftSearchCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1020
    :cond_2
    if-eqz p4, :cond_3

    .line 1021
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->country:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Lcom/htc/util/weather/WeatherUtility;->saftSearchCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1024
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1026
    sget-object v1, Lcom/htc/consts/WeatherConsts;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "location"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_0
.end method

.method public static deleteLocation(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter "cr"
    .parameter "app"
    .parameter "codes"

    .prologue
    const/4 v8, 0x0

    .line 772
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v6, p2

    const/4 v7, 0x1

    if-ge v6, v7, :cond_2

    .line 773
    :cond_0
    const/4 v4, 0x0

    .line 790
    :cond_1
    :goto_0
    return v4

    .line 776
    :cond_2
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->app:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v7}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\' AND ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 779
    .local v5, where:Ljava/lang/StringBuffer;
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 780
    .local v1, code:Ljava/lang/String;
    sget-object v6, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->code:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v6}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v1}, Lcom/htc/util/weather/WeatherUtility;->saftSearchCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\' OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 779
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 782
    .end local v1           #code:Ljava/lang/String;
    :cond_3
    const-string v6, "0=1)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 784
    sget-object v6, Lcom/htc/util/weather/WeatherUtility;->URI_LOCATION:Landroid/net/Uri;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 786
    .local v4, rowDeleted:I
    if-lez v4, :cond_1

    .line 787
    sget-object v6, Lcom/htc/util/weather/WeatherUtility;->URI_LOCATION:Landroid/net/Uri;

    invoke-static {v6, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p0, v6, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public static generateDisplayText(Landroid/database/Cursor;)[Ljava/lang/String;
    .locals 8
    .parameter "cursor"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1227
    invoke-static {p0}, Lcom/htc/util/weather/WeatherUtility;->getWeatherLocationExtInfo(Landroid/database/Cursor;)Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;

    move-result-object v2

    .line 1228
    .local v2, extInfo:Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;
    if-nez v2, :cond_0

    .line 1229
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v5

    const-string v4, ""

    aput-object v4, v3, v6

    .line 1246
    :goto_0
    return-object v3

    .line 1232
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1233
    .local v0, city:Ljava/lang/StringBuffer;
    iget-object v3, v2, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->systemLangName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1234
    iget-object v3, v2, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->systemLangState:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->systemLangState:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1235
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, v2, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->systemLangState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1238
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1239
    .local v1, country:Ljava/lang/StringBuffer;
    iget-object v3, v2, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->systemLangCountry:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1241
    iget-boolean v3, v2, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->hasEngInfo:Z

    if-eqz v3, :cond_2

    .line 1242
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, v2, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->engName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1243
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, v2, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->engCountry:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1246
    :cond_2
    new-array v3, v7, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    goto :goto_0
.end method

.method private static generateEmptyResult(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"

    .prologue
    const/4 v2, 0x0

    .line 110
    sget-object v0, Lcom/htc/consts/WeatherConsts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "locationlist"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->_id:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "<0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getLocaitonList(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;)Landroid/database/Cursor;
    .locals 7
    .parameter "cr"
    .parameter "sortOrder"
    .parameter "searchCharacters"
    .parameter "searchColumn"
    .parameter "searchType"

    .prologue
    const/4 v2, 0x0

    .line 440
    if-eqz p2, :cond_0

    .line 441
    invoke-static {v2, p2}, Lcom/htc/util/weather/WeatherUtility;->isContainIllegalCharacters(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    invoke-static {p0}, Lcom/htc/util/weather/WeatherUtility;->generateEmptyResult(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    .line 486
    :goto_0
    return-object v0

    .line 446
    :cond_0
    const/4 v3, 0x0

    .line 448
    .local v3, where:Ljava/lang/String;
    if-eqz p2, :cond_2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 449
    invoke-static {p2}, Lcom/htc/util/weather/WeatherUtility;->saftSearchCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 452
    invoke-static {p2}, Lcom/htc/util/weather/WeatherUtility;->transformLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 455
    const/4 v6, 0x0

    .line 456
    .local v6, condition:Ljava/lang/String;
    sget-object v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;->START_WITH:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    if-ne v0, p4, :cond_3

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 467
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 468
    sget-object v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;->CITY:Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

    if-ne v0, p3, :cond_6

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UCS2_LOWERCASE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " like "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 486
    .end local v6           #condition:Ljava/lang/String;
    :cond_2
    :goto_2
    sget-object v0, Lcom/htc/consts/WeatherConsts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "locationlist"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v4, v2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 458
    .restart local v6       #condition:Ljava/lang/String;
    :cond_3
    sget-object v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;->END_WITH:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    if-ne v0, p4, :cond_4

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 460
    :cond_4
    sget-object v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;->CONTAIN:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    if-ne v0, p4, :cond_5

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 462
    :cond_5
    sget-object v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;->MATCH_IGONE_CASE:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    if-ne v0, p4, :cond_1

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 470
    :cond_6
    sget-object v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;->COUNTRY:Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

    if-ne v0, p3, :cond_7

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UCS2_LOWERCASE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->country:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " like "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 472
    :cond_7
    sget-object v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;->CITY_AND_COUNTRY:Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

    if-ne v0, p3, :cond_8

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UCS2_LOWERCASE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " like "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UCS2_LOWERCASE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->country:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " like "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 475
    :cond_8
    sget-object v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;->STATE:Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

    if-ne v0, p3, :cond_9

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UCS2_LOWERCASE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->state:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " like "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 478
    :cond_9
    sget-object v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;->CITY_STATE_AND_COUNTRY:Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

    if-ne v0, p3, :cond_2

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UCS2_LOWERCASE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " like "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UCS2_LOWERCASE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->state:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " like "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UCS2_LOWERCASE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->country:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " like "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2
.end method

.method public static getLocationList(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "cr"
    .parameter "sortOrder"

    .prologue
    .line 257
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/htc/util/weather/WeatherUtility;->getLocationList(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getLocationList(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "sortOrder"
    .parameter "limit"

    .prologue
    const/4 v2, 0x0

    .line 272
    sget-object v1, Lcom/htc/util/weather/WeatherUtility;->URI_LOCATION_LIST:Landroid/net/Uri;

    .line 274
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, -0x1

    if-le p2, v0, :cond_0

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, p1

    .line 278
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getLocationList(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "cr"
    .parameter "sortOrder"
    .parameter "searchCharacters"

    .prologue
    const/4 v2, 0x0

    .line 300
    if-eqz p2, :cond_0

    .line 301
    invoke-static {v2, p2}, Lcom/htc/util/weather/WeatherUtility;->isContainIllegalCharacters(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-static {p0}, Lcom/htc/util/weather/WeatherUtility;->generateEmptyResult(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    .line 330
    :goto_0
    return-object v0

    .line 306
    :cond_0
    const/4 v3, 0x0

    .line 308
    .local v3, where:Ljava/lang/String;
    if-eqz p2, :cond_4

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 309
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v11, keywords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, arr$:[Ljava/lang/String;
    array-length v12, v6

    .local v12, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v12, :cond_2

    aget-object v9, v6, v8

    .line 311
    .local v9, k:Ljava/lang/String;
    const-string v0, ""

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 316
    .end local v9           #k:Ljava/lang/String;
    :cond_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 317
    const-string v7, "\'%"

    .line 318
    .local v7, condition:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 319
    .local v10, keyword:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/util/weather/WeatherUtility;->saftSearchCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 322
    .end local v10           #keyword:Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " like "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->state:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " like "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->country:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " like "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 330
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v7           #condition:Ljava/lang/String;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #keywords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12           #len$:I
    :cond_4
    sget-object v0, Lcom/htc/consts/WeatherConsts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "locationlist"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v4, v2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static getLocationListByCode(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "code"

    .prologue
    const/4 v2, 0x0

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->code:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/htc/util/weather/WeatherUtility;->saftSearchCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 571
    .local v3, where:Ljava/lang/String;
    sget-object v0, Lcom/htc/consts/WeatherConsts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "locationlist"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static getLocationListByCodeForLanguageTransfer(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "code"

    .prologue
    const/4 v4, 0x0

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->code:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/htc/util/weather/WeatherUtility;->saftSearchCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 909
    .local v3, where:Ljava/lang/String;
    sget-object v0, Lcom/htc/consts/WeatherConsts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "locationlist"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/util/weather/WeatherUtility;->LANGUAGE_TRANSFER_PROJECT:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getLocationListBySearchCondition(Landroid/content/ContentResolver;Ljava/lang/String;[Lcom/htc/util/weather/WeatherUtility$SearchCondition;)Landroid/database/Cursor;
    .locals 1
    .parameter "cr"
    .parameter "sortOrder"
    .parameter "searchCondition"

    .prologue
    .line 502
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/htc/util/weather/WeatherUtility;->getLocationListBySearchCondition(Landroid/content/ContentResolver;Ljava/lang/String;[Lcom/htc/util/weather/WeatherUtility$SearchCondition;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getLocationListBySearchCondition(Landroid/content/ContentResolver;Ljava/lang/String;[Lcom/htc/util/weather/WeatherUtility$SearchCondition;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "cr"
    .parameter "sortOrder"
    .parameter "searchCondition"
    .parameter "language"

    .prologue
    const/4 v2, 0x0

    .line 514
    const/4 v3, 0x0

    .line 516
    .local v3, where:Ljava/lang/String;
    if-eqz p2, :cond_8

    array-length v0, p2

    if-lez v0, :cond_8

    .line 517
    move-object v6, p2

    .local v6, arr$:[Lcom/htc/util/weather/WeatherUtility$SearchCondition;
    array-length v9, v6

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_7

    aget-object v10, v6, v8

    .line 518
    .local v10, sc:Lcom/htc/util/weather/WeatherUtility$SearchCondition;
    invoke-virtual {v10}, Lcom/htc/util/weather/WeatherUtility$SearchCondition;->isPassSearchConditionCheck()Z

    move-result v0

    if-nez v0, :cond_1

    .line 517
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 523
    :cond_1
    const/4 v7, 0x0

    .line 524
    .local v7, condition:Ljava/lang/String;
    sget-object v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;->START_WITH:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    invoke-virtual {v10}, Lcom/htc/util/weather/WeatherUtility$SearchCondition;->getSearchType()Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    move-result-object v4

    if-ne v0, v4, :cond_4

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Lcom/htc/util/weather/WeatherUtility$SearchCondition;->getSafeSearchCharacters()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "%\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 535
    :cond_2
    :goto_2
    if-eqz v7, :cond_0

    const-string v0, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    if-nez v3, :cond_3

    .line 537
    const-string v3, ""

    .line 539
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Lcom/htc/util/weather/WeatherUtility$SearchCondition;->getSearchColumn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " like "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 526
    :cond_4
    sget-object v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;->END_WITH:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    invoke-virtual {v10}, Lcom/htc/util/weather/WeatherUtility$SearchCondition;->getSearchType()Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    move-result-object v4

    if-ne v0, v4, :cond_5

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'%"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Lcom/htc/util/weather/WeatherUtility$SearchCondition;->getSafeSearchCharacters()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 528
    :cond_5
    sget-object v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;->CONTAIN:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    invoke-virtual {v10}, Lcom/htc/util/weather/WeatherUtility$SearchCondition;->getSearchType()Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    move-result-object v4

    if-ne v0, v4, :cond_6

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'%"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Lcom/htc/util/weather/WeatherUtility$SearchCondition;->getSafeSearchCharacters()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "%\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 530
    :cond_6
    sget-object v0, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;->MATCH_IGONE_CASE:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    invoke-virtual {v10}, Lcom/htc/util/weather/WeatherUtility$SearchCondition;->getSearchType()Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    move-result-object v4

    if-ne v0, v4, :cond_2

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Lcom/htc/util/weather/WeatherUtility$SearchCondition;->getSafeSearchCharacters()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 543
    .end local v7           #condition:Ljava/lang/String;
    .end local v10           #sc:Lcom/htc/util/weather/WeatherUtility$SearchCondition;
    :cond_7
    if-eqz v3, :cond_8

    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 544
    const/4 v0, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 549
    .end local v6           #arr$:[Lcom/htc/util/weather/WeatherUtility$SearchCondition;
    .end local v8           #i$:I
    .end local v9           #len$:I
    :cond_8
    if-eqz p3, :cond_9

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 550
    :cond_9
    sget-object v0, Lcom/htc/consts/WeatherConsts;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "locationlist"

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    :goto_3
    move-object v0, p0

    move-object v4, v2

    move-object v5, p1

    .line 555
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 552
    .end local v1           #uri:Landroid/net/Uri;
    :cond_a
    sget-object v0, Lcom/htc/consts/WeatherConsts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "locationlist/lang/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_3
.end method

.method public static getTemperatureUnit(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .parameter "cr"

    .prologue
    .line 227
    const-string v0, "com.htc.sync.provider.weather.setting.temperatureunit"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWeatherLocationExtInfo(Landroid/database/Cursor;)Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1189
    if-nez p0, :cond_0

    .line 1190
    const/4 v1, 0x0

    .line 1218
    :goto_0
    return-object v1

    .line 1193
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    if-eq v5, v6, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "_hasExtInfo"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v3

    .line 1194
    .local v2, hasCursorExtra:Z
    :goto_1
    new-instance v1, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;

    invoke-direct {v1}, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;-><init>()V

    .line 1196
    .local v1, extInfo:Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;
    if-eqz v2, :cond_2

    .line 1198
    iput-boolean v3, v1, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->hasEngInfo:Z

    .line 1200
    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->code:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1202
    .local v0, code:Ljava/lang/String;
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->systemLangName:Ljava/lang/String;

    .line 1203
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_state"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->systemLangState:Ljava/lang/String;

    .line 1204
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_country"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->systemLangCountry:Ljava/lang/String;

    .line 1205
    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->engName:Ljava/lang/String;

    .line 1206
    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->state:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->engState:Ljava/lang/String;

    .line 1207
    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->country:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->engCountry:Ljava/lang/String;

    goto/16 :goto_0

    .end local v0           #code:Ljava/lang/String;
    .end local v1           #extInfo:Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;
    .end local v2           #hasCursorExtra:Z
    :cond_1
    move v2, v4

    .line 1193
    goto/16 :goto_1

    .line 1211
    .restart local v1       #extInfo:Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;
    .restart local v2       #hasCursorExtra:Z
    :cond_2
    iput-boolean v4, v1, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->hasEngInfo:Z

    .line 1213
    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->systemLangName:Ljava/lang/String;

    .line 1214
    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->state:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->systemLangState:Ljava/lang/String;

    .line 1215
    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->country:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->systemLangCountry:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static insertOBLocations(Landroid/content/ContentResolver;Ljava/lang/String;[Lcom/htc/util/weather/WeatherLocation;)V
    .locals 2
    .parameter "cr"
    .parameter "app"
    .parameter "locations"

    .prologue
    .line 962
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 963
    .local v0, weatherLocations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/weather/WeatherLocation;>;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 964
    invoke-static {p0, p1}, Lcom/htc/util/weather/WeatherUtility;->loadLocations(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 965
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/htc/util/weather/WeatherLocation;

    invoke-static {p0, p1, v1}, Lcom/htc/util/weather/WeatherUtility;->saveLocations(Landroid/content/ContentResolver;Ljava/lang/String;[Lcom/htc/util/weather/WeatherLocation;)V

    .line 966
    return-void
.end method

.method public static insertOrUpdateSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "cr"
    .parameter "app"
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 161
    sget-object v1, Lcom/htc/util/weather/WeatherUtility;->URI_SETTING:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->app:Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->key:Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 168
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 169
    .local v0, values:Landroid/content/ContentValues;
    sget-object v1, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->app:Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-object v1, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->key:Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v1, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->value:Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    invoke-virtual {v1}, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget-object v1, Lcom/htc/util/weather/WeatherUtility;->URI_SETTING:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 174
    sget-object v1, Lcom/htc/util/weather/WeatherUtility;->URI_SETTING:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 175
    return-void
.end method

.method public static insertOrUpdateSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 9
    .parameter "cr"
    .parameter "app"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, settings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 182
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_0

    .line 217
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v4, v6, [Landroid/content/ContentValues;

    .line 188
    .local v4, values:[Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 190
    .local v0, i:I
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->app:Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    invoke-virtual {v7}, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\' AND ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 193
    .local v5, where:Ljava/lang/StringBuffer;
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 194
    .local v2, key:Ljava/lang/String;
    sget-object v6, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->key:Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    invoke-virtual {v6}, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\' OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 197
    .local v3, value:Landroid/content/ContentValues;
    sget-object v6, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->app:Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    invoke-virtual {v6}, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    sget-object v6, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->key:Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    invoke-virtual {v6}, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    sget-object v6, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->value:Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    invoke-virtual {v6}, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    aput-object v3, v4, v0

    .line 201
    add-int/lit8 v0, v0, 0x1

    .line 202
    goto :goto_1

    .line 204
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #value:Landroid/content/ContentValues;
    :cond_1
    const-string v6, "0=1)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    sget-object v6, Lcom/htc/util/weather/WeatherUtility;->URI_SETTING:Landroid/net/Uri;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 213
    sget-object v6, Lcom/htc/util/weather/WeatherUtility;->URI_SETTING:Landroid/net/Uri;

    invoke-virtual {p0, v6, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 216
    sget-object v6, Lcom/htc/util/weather/WeatherUtility;->URI_SETTING:Landroid/net/Uri;

    invoke-static {v6, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p0, v6, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0
.end method

.method private static isContainIllegalCharacters(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "column"
    .parameter "str"

    .prologue
    .line 102
    if-eqz p0, :cond_0

    sget-object v0, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->timezoneId:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v0}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 105
    :goto_0
    return v0

    :cond_0
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSystemLanguageEnglish(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 1140
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1141
    .local v1, systemLocale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1143
    .local v0, systemLanguage:Ljava/lang/String;
    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static loadLocations(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;
    .locals 1
    .parameter "cr"
    .parameter "app"

    .prologue
    .line 843
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/htc/util/weather/WeatherUtility;->_loadLocations(Landroid/content/ContentResolver;Ljava/lang/String;Z)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v0

    return-object v0
.end method

.method public static loadLocationsForWorldClock(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;
    .locals 1
    .parameter "cr"
    .parameter "app"

    .prologue
    .line 847
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/htc/util/weather/WeatherUtility;->_loadLocations(Landroid/content/ContentResolver;Ljava/lang/String;Z)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v0

    return-object v0
.end method

.method public static loadMultiAppLocations(Landroid/content/ContentResolver;[Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;
    .locals 13
    .parameter "cr"
    .parameter "apps"

    .prologue
    .line 924
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 925
    .local v9, locations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/weather/WeatherLocation;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 927
    .local v8, loadedLocation:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    array-length v11, p1

    if-lez v11, :cond_2

    .line 928
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v0, v1, v4

    .line 929
    .local v0, app:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/htc/util/weather/WeatherUtility;->loadLocations(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v2

    .local v2, arr$:[Lcom/htc/util/weather/WeatherLocation;
    array-length v7, v2

    .local v7, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_1
    if-ge v3, v7, :cond_1

    aget-object v10, v2, v3

    .line 930
    .local v10, wl:Lcom/htc/util/weather/WeatherLocation;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 931
    .local v5, k:Ljava/lang/String;
    invoke-virtual {v8, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 929
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 934
    :cond_0
    invoke-virtual {v8, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 935
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 928
    .end local v5           #k:Ljava/lang/String;
    .end local v10           #wl:Lcom/htc/util/weather/WeatherLocation;
    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_0

    .line 940
    .end local v0           #app:Ljava/lang/String;
    .end local v2           #arr$:[Lcom/htc/util/weather/WeatherLocation;
    .end local v4           #i$:I
    .end local v7           #len$:I
    :cond_2
    const/4 v11, 0x0

    new-array v11, v11, [Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/htc/util/weather/WeatherLocation;

    return-object v11
.end method

.method public static loadMultiAppLocationsFilterByApp(Landroid/content/ContentResolver;[Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;
    .locals 7
    .parameter "cr"
    .parameter "apps"

    .prologue
    const/4 v6, 0x0

    .line 944
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 946
    .local v4, locations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/weather/WeatherLocation;>;"
    if-eqz p1, :cond_0

    array-length v5, p1

    if-lez v5, :cond_0

    .line 947
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 948
    .local v0, app:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v0, v5, v6

    invoke-static {p0, v5}, Lcom/htc/util/weather/WeatherUtility;->loadMultiAppLocations(Landroid/content/ContentResolver;[Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 947
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 952
    .end local v0           #app:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    new-array v5, v6, [Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/htc/util/weather/WeatherLocation;

    return-object v5
.end method

.method public static loadSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "cr"
    .parameter "app"
    .parameter "key"

    .prologue
    const/4 v8, 0x1

    .line 130
    const/4 v7, 0x0

    .line 131
    .local v7, value:Ljava/lang/String;
    const/4 v6, 0x0

    .line 134
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/htc/consts/WeatherConsts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "setting"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v3, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->value:Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->app:Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->key:Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$SETTING_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 141
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 145
    :cond_0
    if-eqz v6, :cond_1

    .line 146
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 149
    :cond_1
    return-object v7

    .line 145
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 146
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static saftSearchCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 98
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static saveLocations(Landroid/content/ContentResolver;Ljava/lang/String;[Lcom/htc/util/weather/WeatherLocation;)V
    .locals 3
    .parameter "cr"
    .parameter "app"
    .parameter "locations"

    .prologue
    .line 827
    sget-object v0, Lcom/htc/util/weather/WeatherUtility;->URI_LOCATION:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->app:Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 833
    invoke-static {p0, p1, p2}, Lcom/htc/util/weather/WeatherUtility;->addLocation(Landroid/content/ContentResolver;Ljava/lang/String;[Lcom/htc/util/weather/WeatherLocation;)V

    .line 834
    return-void
.end method

.method public static searchLocationListInEnglishAndLocaleLanguage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 25
    .parameter "context"
    .parameter "keyword"
    .parameter "sortColumnName"

    .prologue
    .line 1044
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 1045
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/htc/util/weather/WeatherUtility;->getLocationList(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1133
    :cond_1
    :goto_0
    return-object v19

    .line 1048
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/htc/util/weather/WeatherUtility;->isContainIllegalCharacters(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1049
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/weather/WeatherUtility;->generateEmptyResult(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v19

    goto :goto_0

    .line 1053
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/htc/util/weather/WeatherUtility;->isSystemLanguageEnglish(Landroid/content/Context;)Z

    move-result v23

    .line 1055
    .local v23, isSystemLanguageEnglish:Z
    if-eqz v23, :cond_4

    .line 1056
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;->CITY_STATE_AND_COUNTRY:Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

    sget-object v4, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;->START_WITH:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v2, v0, v1, v3, v4}, Lcom/htc/util/weather/WeatherUtility;->getLocaitonList(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;)Landroid/database/Cursor;

    move-result-object v19

    goto :goto_0

    .line 1058
    :cond_4
    const/16 v19, 0x0

    .line 1059
    .local v19, cursorInEng:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 1062
    .local v15, closeCursorInEng:Z
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/htc/util/weather/WeatherUtility;->saftSearchCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1063
    .local v13, _keyword:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " like \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\' OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->state:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " like \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\' OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->country:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " like \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1067
    .local v5, whereInEng:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/util/weather/WeatherUtility;->LOCATION_LIST_URI_IN_ENGLISH:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1073
    if-eqz v19, :cond_5

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_7

    .line 1075
    :cond_5
    const/4 v15, 0x1

    .line 1076
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;->CITY_STATE_AND_COUNTRY:Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;

    sget-object v4, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;->START_WITH:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v2, v0, v1, v3, v4}, Lcom/htc/util/weather/WeatherUtility;->getLocaitonList(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/weather/WeatherUtility$SEARCH_COLUMN;Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1132
    if-eqz v15, :cond_6

    if-eqz v19, :cond_6

    .line 1133
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object/from16 v19, v2

    goto/16 :goto_0

    .line 1079
    :cond_7
    const/4 v15, 0x0

    .line 1080
    :try_start_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1081
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "_hasExtInfo"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 1085
    .local v17, codeInEng:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/StringBuffer;>;"
    const/16 v18, 0x0

    .line 1088
    .local v18, count:I
    :cond_8
    add-int/lit8 v18, v18, 0x1

    .line 1089
    shr-int/lit8 v21, v18, 0x9

    .line 1090
    .local v21, group:I
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1091
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    :cond_9
    sget-object v2, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->code:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v2}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1094
    .local v12, _code:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->code:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v12}, Lcom/htc/util/weather/WeatherUtility;->saftSearchCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1095
    .local v14, _where:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringBuffer;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1096
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1098
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_a
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1099
    .local v24, whereInSystemLang:Ljava/lang/StringBuffer;
    const/16 v20, 0x0

    .line 1102
    .local v20, cursorInSystemLang:Landroid/database/Cursor;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/htc/util/weather/WeatherUtility;->LOCATION_LIST_URI_DEFAULT:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->code:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->state:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->country:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->code:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'xxxxx\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1114
    if-eqz v20, :cond_c

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_c

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1116
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1117
    .local v16, code:Ljava/lang/String;
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_country"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-nez v2, :cond_b

    .line 1123
    .end local v16           #code:Ljava/lang/String;
    :cond_c
    if-eqz v20, :cond_a

    .line 1124
    :try_start_3
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 1132
    .end local v5           #whereInEng:Ljava/lang/String;
    .end local v12           #_code:Ljava/lang/String;
    .end local v13           #_keyword:Ljava/lang/String;
    .end local v14           #_where:Ljava/lang/String;
    .end local v17           #codeInEng:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/StringBuffer;>;"
    .end local v18           #count:I
    .end local v20           #cursorInSystemLang:Landroid/database/Cursor;
    .end local v21           #group:I
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v24           #whereInSystemLang:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v2

    if-eqz v15, :cond_d

    if-eqz v19, :cond_d

    .line 1133
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2

    .line 1123
    .restart local v5       #whereInEng:Ljava/lang/String;
    .restart local v12       #_code:Ljava/lang/String;
    .restart local v13       #_keyword:Ljava/lang/String;
    .restart local v14       #_where:Ljava/lang/String;
    .restart local v17       #codeInEng:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/StringBuffer;>;"
    .restart local v18       #count:I
    .restart local v20       #cursorInSystemLang:Landroid/database/Cursor;
    .restart local v21       #group:I
    .restart local v22       #i$:Ljava/util/Iterator;
    .restart local v24       #whereInSystemLang:Ljava/lang/StringBuffer;
    :catchall_1
    move-exception v2

    if-eqz v20, :cond_e

    .line 1124
    :try_start_4
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1132
    .end local v20           #cursorInSystemLang:Landroid/database/Cursor;
    .end local v24           #whereInSystemLang:Ljava/lang/StringBuffer;
    :cond_f
    if-eqz v15, :cond_1

    if-eqz v19, :cond_1

    .line 1133
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public static transformLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    .line 410
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 411
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 412
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 413
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 414
    .local v0, c:C
    const/16 v3, 0x41

    if-gt v3, v0, :cond_0

    const/16 v3, 0x5a

    if-le v0, v3, :cond_2

    :cond_0
    const/16 v3, 0x391

    if-gt v3, v0, :cond_1

    const/16 v3, 0x3a9

    if-le v0, v3, :cond_2

    :cond_1
    const/16 v3, 0x410

    if-gt v3, v0, :cond_3

    const/16 v3, 0x42f

    if-gt v0, v3, :cond_3

    .line 417
    :cond_2
    add-int/lit8 v3, v0, 0x20

    int-to-char v3, v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 412
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
    .end local v0           #c:C
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_4
    return-object p0
.end method

.method public static updateTemperatureUnit(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2
    .parameter "cr"
    .parameter "unit"

    .prologue
    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "this function is deprecated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
