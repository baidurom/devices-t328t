.class public Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage;
.super Ljava/lang/Object;
.source "HtcWrapCatCmdMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage$EventSettings;
    }
.end annotation


# instance fields
.field private mCmdType:I

.field public mEventSettings:Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage$EventSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage;->mEventSettings:Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage$EventSettings;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage;->mCmdType:I

    .line 20
    return-void
.end method


# virtual methods
.method public getCmdQualifier(Lcom/android/internal/telephony/cat/CatCmdMessage;)I
    .locals 1
    .parameter "cmd"

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, cmdQualifier:I
    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdQualifier()I

    move-result v0

    .line 83
    :cond_0
    return v0
.end method

.method public getCmdType()Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage;->mCmdType:I

    invoke-static {v0}, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    move-result-object v0

    return-object v0
.end method

.method public getCmdType(Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;
    .locals 3
    .parameter "cmd"

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, cmdType:I
    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    .line 69
    .local v1, type:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v0

    .line 74
    .end local v1           #type:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/HtcIfAppInterface$CommandType;

    move-result-object v2

    return-object v2
.end method

.method public getEventSettings()Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage$EventSettings;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage;->mEventSettings:Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage$EventSettings;

    return-object v0
.end method

.method public getEventSettings(Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage$EventSettings;
    .locals 3
    .parameter "cmd"

    .prologue
    .line 54
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage$EventSettings;

    invoke-direct {v0, p0}, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage$EventSettings;-><init>(Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage;)V

    .line 55
    .local v0, event_settings:Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage$EventSettings;
    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getEventSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    move-result-object v1

    .line 57
    .local v1, settings:Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;
    if-eqz v1, :cond_0

    .line 58
    iget-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;->eventList:[I

    iput-object v2, v0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage$EventSettings;->eventList:[I

    .line 62
    .end local v1           #settings:Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;
    :cond_0
    return-object v0
.end method

.method public setCmdType(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 2
    .parameter "cmd"

    .prologue
    .line 39
    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    .line 41
    .local v0, type:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v1

    iput v1, p0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage;->mCmdType:I

    .line 45
    .end local v0           #type:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    :cond_0
    return-void
.end method

.method public setEventSettings(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 3
    .parameter "cmd"

    .prologue
    .line 25
    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getEventSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    move-result-object v0

    .line 27
    .local v0, settings:Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;
    if-eqz v0, :cond_0

    .line 28
    new-instance v1, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage$EventSettings;

    invoke-direct {v1, p0}, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage$EventSettings;-><init>(Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage;)V

    iput-object v1, p0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage;->mEventSettings:Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage$EventSettings;

    .line 29
    iget-object v1, p0, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage;->mEventSettings:Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage$EventSettings;

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;->eventList:[I

    iput-object v2, v1, Lcom/htc/wrap/com/android/internal/telephony/cat/HtcWrapCatCmdMessage$EventSettings;->eventList:[I

    .line 32
    .end local v0           #settings:Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;
    :cond_0
    return-void
.end method
