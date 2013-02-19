.class public Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;
.super Ljava/lang/Object;
.source "WeatherUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/weather/WeatherUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeatherLocationExtInfo"
.end annotation


# instance fields
.field public engCountry:Ljava/lang/String;

.field public engName:Ljava/lang/String;

.field public engState:Ljava/lang/String;

.field public hasEngInfo:Z

.field public systemLangCountry:Ljava/lang/String;

.field public systemLangName:Ljava/lang/String;

.field public systemLangState:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1146
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->hasEngInfo:Z

    .line 1156
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->systemLangName:Ljava/lang/String;

    .line 1161
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->systemLangState:Ljava/lang/String;

    .line 1166
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->systemLangCountry:Ljava/lang/String;

    .line 1171
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->engName:Ljava/lang/String;

    .line 1176
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->engState:Ljava/lang/String;

    .line 1181
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WeatherUtility$WeatherLocationExtInfo;->engCountry:Ljava/lang/String;

    return-void
.end method
