.class public final Landroid/provider/HtcUnionContact$Config;
.super Ljava/lang/Object;
.source "HtcUnionContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/HtcUnionContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isHTCPeopleEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 325
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x90

    if-ne v1, v2, :cond_1

    .line 331
    :cond_0
    :goto_0
    return v0

    .line 327
    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_0

    .line 331
    const/4 v0, 0x1

    goto :goto_0
.end method
