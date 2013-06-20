.class public Lcom/htc/fm/uihelper/manager/AudioPathManager;
.super Ljava/lang/Object;
.source "AudioPathManager.java"


# static fields
.field private static final ACTION_FM:Ljava/lang/String; = "android.intent.action.FM"

.field private static final LOGTAG:Ljava/lang/String; = "AudioPathManager"

.field public static final PATH_HEADSET:I = 0x0

.field public static final PATH_SPEAKER:I = 0x1


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mAudioPathHelper:Lcom/htc/fm/uihelper/helper/AudioPathHelper;

.field private final mListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 2
    .parameter "context"
    .parameter "audioManager"
    .parameter "listener"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "AudioPathManager"

    const-string v1, "+AudioPathManager()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/htc/fm/uihelper/helper/AudioPathHelper;

    invoke-direct {v0, p1}, Lcom/htc/fm/uihelper/helper/AudioPathHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/fm/uihelper/manager/AudioPathManager;->mAudioPathHelper:Lcom/htc/fm/uihelper/helper/AudioPathHelper;

    .line 43
    iput-object p2, p0, Lcom/htc/fm/uihelper/manager/AudioPathManager;->mAudioManager:Landroid/media/AudioManager;

    .line 44
    iput-object p3, p0, Lcom/htc/fm/uihelper/manager/AudioPathManager;->mListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 45
    const-string v0, "AudioPathManager"

    const-string v1, "-AudioPathManager()"

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static getAudioStreamPathIntent(I)Landroid/content/Intent;
    .locals 4
    .parameter "path"

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    const-string v1, "path"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    const-string v1, "AudioPathManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioStreamPathIntent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-object v0
.end method

.method public static getAudioStreamReadyIntent(Z)Landroid/content/Intent;
    .locals 4
    .parameter "isReady"

    .prologue
    const/4 v2, 0x0

    .line 18
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "state"

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    const-string v1, "path"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    const-string v1, "AudioPathManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioStreamReadyIntent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-object v0

    :cond_0
    move v1, v2

    .line 19
    goto :goto_0
.end method

.method private setAudioStreamSpeaker(Z)Landroid/content/Intent;
    .locals 3
    .parameter "isSpeaker"

    .prologue
    .line 83
    const-string v0, "AudioPathManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioStreamSpeaker() isSpeaker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    if-eqz p1, :cond_0

    .line 85
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/fm/uihelper/manager/AudioPathManager;->getAudioStreamPathIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/fm/uihelper/manager/AudioPathManager;->getAudioStreamPathIntent(I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public disable()V
    .locals 4

    .prologue
    .line 58
    const-string v1, "AudioPathManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+disable() isMute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fm/uihelper/manager/AudioPathManager;->mAudioPathHelper:Lcom/htc/fm/uihelper/helper/AudioPathHelper;

    invoke-virtual {v3}, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->isMute()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/htc/fm/uihelper/manager/AudioPathManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/htc/fm/uihelper/manager/AudioPathManager;->mListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    .line 60
    .local v0, result:I
    const-string v1, "AudioPathManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-disable() isMute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fm/uihelper/manager/AudioPathManager;->mAudioPathHelper:Lcom/htc/fm/uihelper/helper/AudioPathHelper;

    invoke-virtual {v3}, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->isMute()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public enable()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 49
    const-string v2, "AudioPathManager"

    const-string v3, "+enable()"

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v2, p0, Lcom/htc/fm/uihelper/manager/AudioPathManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/htc/fm/uihelper/manager/AudioPathManager;->mListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 51
    iget-object v2, p0, Lcom/htc/fm/uihelper/manager/AudioPathManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/htc/fm/uihelper/manager/AudioPathManager;->mListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 52
    .local v0, tRequestAudioFocusState:I
    if-ne v1, v0, :cond_0

    .line 53
    .local v1, tResult:Z
    :goto_0
    const-string v2, "AudioPathManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-enable() requestAudioFocus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return v1

    .line 52
    .end local v1           #tResult:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMute()Z
    .locals 3

    .prologue
    .line 97
    const-string v0, "AudioPathManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMute() isMute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/uihelper/manager/AudioPathManager;->mAudioPathHelper:Lcom/htc/fm/uihelper/helper/AudioPathHelper;

    invoke-virtual {v2}, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->isMute()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/htc/fm/uihelper/manager/AudioPathManager;->mAudioPathHelper:Lcom/htc/fm/uihelper/helper/AudioPathHelper;

    invoke-virtual {v0}, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->isMute()Z

    move-result v0

    return v0
.end method

.method public isSpeaker()Z
    .locals 3

    .prologue
    .line 92
    const-string v0, "AudioPathManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSpeaker() isSpeaker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/uihelper/manager/AudioPathManager;->mAudioPathHelper:Lcom/htc/fm/uihelper/helper/AudioPathHelper;

    invoke-virtual {v2}, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->isSpeaker()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/htc/fm/uihelper/manager/AudioPathManager;->mAudioPathHelper:Lcom/htc/fm/uihelper/helper/AudioPathHelper;

    invoke-virtual {v0}, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->isSpeaker()Z

    move-result v0

    return v0
.end method

.method public mute()V
    .locals 3

    .prologue
    .line 64
    const-string v0, "AudioPathManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+mute() isMute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/uihelper/manager/AudioPathManager;->mAudioPathHelper:Lcom/htc/fm/uihelper/helper/AudioPathHelper;

    invoke-virtual {v2}, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->isMute()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/htc/fm/uihelper/manager/AudioPathManager;->mAudioPathHelper:Lcom/htc/fm/uihelper/helper/AudioPathHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->setMute(Z)V

    .line 66
    const-string v0, "AudioPathManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-mute() isMute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/uihelper/manager/AudioPathManager;->mAudioPathHelper:Lcom/htc/fm/uihelper/helper/AudioPathHelper;

    invoke-virtual {v2}, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->isMute()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public switchSpeaker()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 76
    const-string v0, "AudioPathManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+switchSpeaker() isSpeaker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/fm/uihelper/manager/AudioPathManager;->isSpeaker()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/htc/fm/uihelper/manager/AudioPathManager;->mAudioPathHelper:Lcom/htc/fm/uihelper/helper/AudioPathHelper;

    iget-object v0, p0, Lcom/htc/fm/uihelper/manager/AudioPathManager;->mAudioPathHelper:Lcom/htc/fm/uihelper/helper/AudioPathHelper;

    invoke-virtual {v0}, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->isSpeaker()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->setSpeaker(Z)V

    .line 78
    const-string v0, "AudioPathManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-switchSpeaker() isSpeaker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/fm/uihelper/manager/AudioPathManager;->isSpeaker()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/htc/fm/uihelper/manager/AudioPathManager;->mAudioPathHelper:Lcom/htc/fm/uihelper/helper/AudioPathHelper;

    invoke-virtual {v0}, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->isSpeaker()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/fm/uihelper/manager/AudioPathManager;->setAudioStreamSpeaker(Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unmute()V
    .locals 3

    .prologue
    .line 70
    const-string v0, "AudioPathManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+unmute() isMute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/uihelper/manager/AudioPathManager;->mAudioPathHelper:Lcom/htc/fm/uihelper/helper/AudioPathHelper;

    invoke-virtual {v2}, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->isMute()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/htc/fm/uihelper/manager/AudioPathManager;->mAudioPathHelper:Lcom/htc/fm/uihelper/helper/AudioPathHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->setMute(Z)V

    .line 72
    const-string v0, "AudioPathManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-unmute() isMute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/uihelper/manager/AudioPathManager;->mAudioPathHelper:Lcom/htc/fm/uihelper/helper/AudioPathHelper;

    invoke-virtual {v2}, Lcom/htc/fm/uihelper/helper/AudioPathHelper;->isMute()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/components/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method
