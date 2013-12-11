.class public final Landroid/provider/Downloads;
.super Ljava/lang/Object;
.source "Downloads.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Downloads$Impl;
    }
.end annotation


# static fields
.field public static final COLUMN_RESTRICTION:Ljava/lang/String; = "restriction"

.field public static final DESTINATION_EXTERNAL_REMOVABLE_STORAGE:I = 0x8

.field public static final DESTINATION_INTERNAL:I = 0x7

.field public static final RESTRICTION_INTERNET_PASSTHROUGH_ONLY:I = 0x10

.field public static final RESTRICTION_NOT_DOWNLOAD:I = 0x20

.field public static final RESTRICTION_NO_ROAMING:I = 0x2

.field public static final RESTRICTION_USE_APN:I = 0x8

.field public static final RESTRICTION_USE_APN_MASK:I = 0xf0000

.field public static final RESTRICTION_USE_FOTA_APN:I = 0xa0008

.field public static final RESTRICTION_USE_PROXY:I = 0x4

.field public static final RESTRICTION_WIFI_ONLY:I = 0x1

.field public static final STATUS_PENDING_PAUSED:I = 0xbf

.field public static final STATUS_RUNNING_PAUSED:I = 0xc5

.field public static final STATUS_SPECIFY_APN_FAILED:I = 0x1e7


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isStatusSuspended(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 133
    const/16 v0, 0xbf

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc5

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
