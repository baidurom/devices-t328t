.class public Lcom/htc/fm/uihelper/helper/AudioPathHelper;
.super Ljava/lang/Object;
.source "AudioPathHelper.java"


# static fields
.field private static final PREFS_MUTE:Ljava/lang/String; = "mute"

.field private static final PREFS_NAME:Ljava/lang/String; = "audio.state"

.field private static final PREFS_SPEAKER:Ljava/lang/String; = "speaker"


# instance fields
.field private isMute:Z

.field private isSpeaker:Z

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "audio.state"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 20
    invoke-direct {p0}, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->loadMute()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->isMute:Z

    .line 21
    invoke-direct {p0}, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->loadSpeaker()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->isSpeaker:Z

    .line 22
    return-void
.end method

.method private loadMute()Z
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mute"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private loadSpeaker()Z
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "speaker"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isMute()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->isMute:Z

    return v0
.end method

.method public isSpeaker()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->isSpeaker:Z

    return v0
.end method

.method public setMute(Z)V
    .locals 2
    .parameter "isMute"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->isMute:Z

    .line 43
    iget-object v0, p0, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mute"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 44
    return-void
.end method

.method public setSpeaker(Z)V
    .locals 2
    .parameter "isSpeaker"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->isSpeaker:Z

    .line 34
    iget-object v0, p0, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "speaker"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 35
    return-void
.end method
