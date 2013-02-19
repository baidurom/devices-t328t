.class public Lcom/htc/motiv/app/AppThemeEffectMap;
.super Ljava/lang/Object;
.source "AppThemeEffectMap.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIdFromIdName(Ljava/lang/String;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 21
    const/4 v0, -0x1

    return v0
.end method

.method public static getIdNameFromId(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getThemeEffectNameById(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 9
    const/4 v0, 0x0

    return-object v0
.end method

.method public static listNotification()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method public static listRigtones()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method
