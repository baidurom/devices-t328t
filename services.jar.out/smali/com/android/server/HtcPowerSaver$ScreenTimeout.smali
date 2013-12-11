.class final Lcom/android/server/HtcPowerSaver$ScreenTimeout;
.super Lcom/android/server/HtcPowerSaver$Feature;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcPowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenTimeout"
.end annotation


# instance fields
.field private final DEFAULT_N_SCREEN_TIMEOUT:I

.field private final DEFAULT_SCREEN_TIMEOUT_VALUE:I

.field private final KEY_N_SCREEN_TIMEOUT:Ljava/lang/String;

.field private final KEY_SCREEN_TIMEOUT_SETTINGS:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/HtcPowerSaver;


# direct methods
.method constructor <init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V
    .locals 7
    .parameter
    .parameter "ctx"

    .prologue
    const/16 v6, 0x7530

    .line 758
    iput-object p1, p0, Lcom/android/server/HtcPowerSaver$ScreenTimeout;->this$0:Lcom/android/server/HtcPowerSaver;

    .line 759
    const-string v2, "ScreenTimeout"

    const-string v3, "powersaver_screen_timeout"

    const/4 v4, 0x1

    const-string v5, "sys.psaver.timeout"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/HtcPowerSaver$Feature;-><init>(Lcom/android/server/HtcPowerSaver;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 750
    const-string v0, "powersaver_screen_timeout_settings"

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver$ScreenTimeout;->KEY_SCREEN_TIMEOUT_SETTINGS:Ljava/lang/String;

    .line 751
    iput v6, p0, Lcom/android/server/HtcPowerSaver$ScreenTimeout;->DEFAULT_SCREEN_TIMEOUT_VALUE:I

    .line 753
    const-string v0, "psaver_normal_screen_timeout"

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver$ScreenTimeout;->KEY_N_SCREEN_TIMEOUT:Ljava/lang/String;

    .line 754
    iput v6, p0, Lcom/android/server/HtcPowerSaver$ScreenTimeout;->DEFAULT_N_SCREEN_TIMEOUT:I

    .line 760
    iput-object p2, p0, Lcom/android/server/HtcPowerSaver$ScreenTimeout;->mContext:Landroid/content/Context;

    .line 761
    return-void
.end method

.method private setSysSettings(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 764
    iget-object v1, p0, Lcom/android/server/HtcPowerSaver$ScreenTimeout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 765
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 766
    const-string v1, "HtcPowerSaver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSysSettings: Set value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :goto_0
    return-void

    .line 768
    :cond_0
    const-string v1, "HtcPowerSaver"

    const-string v2, "setSysSettings: Set Screen Timeout fail."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected applyPowerSaverSettings()I
    .locals 8

    .prologue
    const/16 v6, 0x7530

    const/4 v7, 0x0

    .line 789
    iget-object v4, p0, Lcom/android/server/HtcPowerSaver$ScreenTimeout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 790
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/server/HtcPowerSaver$ScreenTimeout;->this$0:Lcom/android/server/HtcPowerSaver;

    iget-object v5, p0, Lcom/android/server/HtcPowerSaver$ScreenTimeout;->mContext:Landroid/content/Context;

    #calls: Lcom/android/server/HtcPowerSaver;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    invoke-static {v4, v5}, Lcom/android/server/HtcPowerSaver;->access$400(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 791
    .local v2, sp:Landroid/content/SharedPreferences;
    if-nez v2, :cond_1

    .line 792
    const-string v4, "HtcPowerSaver"

    const-string v5, "applyPowerSaverSettings: Get SharedPreferences fail."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_0
    :goto_0
    return v7

    .line 795
    :cond_1
    const-string v4, "powersaver_screen_timeout_settings"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 796
    .local v1, pValue:I
    const-string v4, "screen_off_timeout"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 798
    .local v3, sysValue:I
    const-string v4, "HtcPowerSaver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyPowerSaverSettings: pValue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sysValue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    if-ltz v3, :cond_2

    if-ge v1, v3, :cond_0

    .line 803
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/HtcPowerSaver$ScreenTimeout;->setSysSettings(I)V

    goto :goto_0
.end method

.method protected restoreSystemSettings()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 809
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$ScreenTimeout;->this$0:Lcom/android/server/HtcPowerSaver;

    iget-object v3, p0, Lcom/android/server/HtcPowerSaver$ScreenTimeout;->mContext:Landroid/content/Context;

    #calls: Lcom/android/server/HtcPowerSaver;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    invoke-static {v2, v3}, Lcom/android/server/HtcPowerSaver;->access$400(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 810
    .local v1, sp:Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 811
    const-string v2, "HtcPowerSaver"

    const-string v3, "restoreSystemSettings: Get SharedPreferences fail."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :goto_0
    return v4

    .line 814
    :cond_0
    const-string v2, "psaver_normal_screen_timeout"

    const/16 v3, 0x7530

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 815
    .local v0, normalValue:I
    invoke-direct {p0, v0}, Lcom/android/server/HtcPowerSaver$ScreenTimeout;->setSysSettings(I)V

    goto :goto_0
.end method

.method protected saveSystemSettings()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 774
    iget-object v3, p0, Lcom/android/server/HtcPowerSaver$ScreenTimeout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 775
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/server/HtcPowerSaver$ScreenTimeout;->this$0:Lcom/android/server/HtcPowerSaver;

    iget-object v4, p0, Lcom/android/server/HtcPowerSaver$ScreenTimeout;->mContext:Landroid/content/Context;

    #calls: Lcom/android/server/HtcPowerSaver;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    invoke-static {v3, v4}, Lcom/android/server/HtcPowerSaver;->access$400(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 776
    .local v1, sp:Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 777
    const-string v3, "HtcPowerSaver"

    const-string v4, "saveSystemSettings: Get SharedPreferences fail."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :goto_0
    return v6

    .line 780
    :cond_0
    const-string v3, "screen_off_timeout"

    const/16 v4, 0x7530

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 782
    .local v2, sysTimeout:I
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "psaver_normal_screen_timeout"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 783
    const-string v3, "HtcPowerSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveSystemSettings: sysTimeout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
