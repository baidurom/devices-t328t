.class public Lcom/htc/wrap/android/provider/HtcWrapSettings$HTCservices$QueryMap;
.super Landroid/content/ContentQueryMap;
.source "HtcWrapSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapSettings$HTCservices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryMap"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/database/Cursor;ZLandroid/os/Handler;)V
    .locals 1
    .parameter "contentResolver"
    .parameter "cursor"
    .parameter "keepUpdated"
    .parameter "handlerForUpdateNotifications"

    .prologue
    .line 4008
    const-string v0, "name"

    invoke-direct {p0, p2, v0, p3, p4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    .line 4009
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;ZLandroid/os/Handler;)V
    .locals 6
    .parameter "contentResolver"
    .parameter "keepUpdated"
    .parameter "handlerForUpdateNotifications"

    .prologue
    const/4 v2, 0x0

    .line 4013
    sget-object v1, Lcom/htc/wrap/android/provider/HtcWrapSettings$HTCservices;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$HTCservices$QueryMap;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;ZLandroid/os/Handler;)V

    .line 4016
    return-void
.end method


# virtual methods
.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 4019
    invoke-virtual {p0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$HTCservices$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 4020
    .local v0, cv:Landroid/content/ContentValues;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 4021
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
