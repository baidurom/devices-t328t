.class public Lcom/htc/util/weather/WSPRequest;
.super Ljava/lang/Object;
.source "WSPRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private param1:Ljava/lang/String;

.field private param2:Ljava/lang/String;

.field private reqCurLocCacheData:Lcom/htc/util/weather/WSPData;

.field private reqCurLocCountry:Ljava/lang/String;

.field private reqCurLocLat:Ljava/lang/String;

.field private reqCurLocLatTrim:Ljava/lang/String;

.field private reqCurLocLng:Ljava/lang/String;

.field private reqCurLocLngTrim:Ljava/lang/String;

.field private reqCurLocName:Ljava/lang/String;

.field private reqCurLocState:Ljava/lang/String;

.field private reqCurLocTimezoneId:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->type:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->param1:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->param2:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/weather/WSPRequest;->PROJECTION:[Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/htc/util/weather/WSPRequest$1;

    invoke-direct {v0}, Lcom/htc/util/weather/WSPRequest$1;-><init>()V

    sput-object v0, Lcom/htc/util/weather/WSPRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/weather/WSPRequest;->type:I

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param1:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param2:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLat:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLng:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLatTrim:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLngTrim:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocName:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocState:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCountry:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocTimezoneId:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCacheData:Lcom/htc/util/weather/WSPData;

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v2, p0, Lcom/htc/util/weather/WSPRequest;->type:I

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param1:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param2:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLat:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLng:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLatTrim:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLngTrim:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocName:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocState:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCountry:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocTimezoneId:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCacheData:Lcom/htc/util/weather/WSPData;

    .line 91
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    sget-object v1, Lcom/htc/util/weather/WSPRequest;->PROJECTION:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 92
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/htc/util/weather/WSPRequest;->type:I

    .line 93
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param1:Ljava/lang/String;

    .line 94
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param2:Ljava/lang/String;

    .line 96
    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/weather/WSPRequest;->type:I

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param1:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param2:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLat:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLng:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLatTrim:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLngTrim:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocName:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocState:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCountry:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocTimezoneId:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCacheData:Lcom/htc/util/weather/WSPData;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/util/weather/WSPRequest;->type:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param1:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param2:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLat:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLng:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLatTrim:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLngTrim:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocName:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocState:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCountry:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocTimezoneId:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/util/weather/WSPData;

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCacheData:Lcom/htc/util/weather/WSPData;

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/util/weather/WSPRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/htc/util/weather/WSPRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/htc/util/weather/WSPRequest;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public getCurLocCacheData()Lcom/htc/util/weather/WSPData;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCacheData:Lcom/htc/util/weather/WSPData;

    return-object v0
.end method

.method public getParam1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param1:Ljava/lang/String;

    return-object v0
.end method

.method public getParam2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param2:Ljava/lang/String;

    return-object v0
.end method

.method public getReqCurLocCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getReqCurLocLat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLat:Ljava/lang/String;

    return-object v0
.end method

.method public getReqCurLocLatTrim()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLatTrim:Ljava/lang/String;

    return-object v0
.end method

.method public getReqCurLocLng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLng:Ljava/lang/String;

    return-object v0
.end method

.method public getReqCurLocLngTrim()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLngTrim:Ljava/lang/String;

    return-object v0
.end method

.method public getReqCurLocName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocName:Ljava/lang/String;

    return-object v0
.end method

.method public getReqCurLocState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocState:Ljava/lang/String;

    return-object v0
.end method

.method public getReqCurLocTimezoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocTimezoneId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/htc/util/weather/WSPRequest;->type:I

    return v0
.end method

.method public isCurEqualsToCacheCur()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCacheData:Lcom/htc/util/weather/WSPData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setReqCurLoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/weather/WSPData;)V
    .locals 0
    .parameter "reqCurLocLat"
    .parameter "reqCurLocLng"
    .parameter "reqCurLocLatTrim"
    .parameter "reqCurLocLngTrim"
    .parameter "reqCurLocName"
    .parameter "reqCurLocState"
    .parameter "reqCurLocCountry"
    .parameter "reqCurLocTimezoneId"
    .parameter "reqCurLocCacheData"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLat:Ljava/lang/String;

    .line 143
    iput-object p2, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLng:Ljava/lang/String;

    .line 144
    iput-object p3, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLatTrim:Ljava/lang/String;

    .line 145
    iput-object p4, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLngTrim:Ljava/lang/String;

    .line 146
    iput-object p5, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocName:Ljava/lang/String;

    .line 147
    iput-object p6, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocState:Ljava/lang/String;

    .line 148
    iput-object p7, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCountry:Ljava/lang/String;

    .line 149
    iput-object p8, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocTimezoneId:Ljava/lang/String;

    .line 150
    iput-object p9, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCacheData:Lcom/htc/util/weather/WSPData;

    .line 151
    return-void
.end method

.method public setTypeCurrentLocation()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/util/weather/WSPRequest;->type:I

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param1:Ljava/lang/String;

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param2:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setTypeLatitude(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 119
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/util/weather/WSPRequest;->type:I

    .line 120
    iput-object p1, p0, Lcom/htc/util/weather/WSPRequest;->param1:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/htc/util/weather/WSPRequest;->param2:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setTypeLocCode(Ljava/lang/String;)V
    .locals 1
    .parameter "locCode"

    .prologue
    .line 109
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/util/weather/WSPRequest;->type:I

    .line 110
    iput-object p1, p0, Lcom/htc/util/weather/WSPRequest;->param1:Ljava/lang/String;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param2:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public toDebugInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/util/weather/WSPRequest;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", param1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPRequest;->param1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", param2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPRequest;->param2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reqCurLocLat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reqCurLocLng: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLng:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reqCurLocLatTrim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLatTrim:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reqCurLocLngTrim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLngTrim:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reqCurLocName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reqCurLocState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reqCurLocCountry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reqCurLocTimezoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocTimezoneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isCurEqualsToCacheCur: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/util/weather/WSPRequest;->isCurEqualsToCacheCur()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/htc/util/weather/WSPRequest;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/util/weather/WSPRequest;->param1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/util/weather/WSPRequest;->param2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 58
    iget v0, p0, Lcom/htc/util/weather/WSPRequest;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->param2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLatTrim:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocLngTrim:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCountry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocTimezoneId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/htc/util/weather/WSPRequest;->reqCurLocCacheData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 70
    return-void
.end method
