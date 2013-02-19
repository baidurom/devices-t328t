.class Lcom/android/server/PowerManagerService$BrightnessState;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BrightnessState"
.end annotation


# instance fields
.field animating:Z

.field curValue:F

.field private customizedAnimation:Z

.field private customizedDelay:I

.field delta:F

.field difference:F

.field initialized:Z

.field final mask:I

.field previousValue:F

.field targetValue:I

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;I)V
    .locals 1
    .parameter
    .parameter "m"

    .prologue
    .line 2987
    iput-object p1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->customizedAnimation:Z

    .line 3103
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDelayInterval:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$5900(Lcom/android/server/PowerManagerService;)I

    move-result v0

    iput v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->customizedDelay:I

    .line 2988
    iput p2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    .line 2989
    return-void
.end method

.method private finishAnimationLocked(ZI)V
    .locals 2
    .parameter "more"
    .parameter "curIntValue"

    .prologue
    .line 3092
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    .line 3093
    if-nez p1, :cond_0

    .line 3094
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/PowerManagerService;->mIsScreenOnAnimatingDone:Z
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$5602(Lcom/android/server/PowerManagerService;Z)Z

    .line 3095
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 3096
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffReason:I
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)I

    move-result v1

    #calls: Lcom/android/server/PowerManagerService;->screenOffFinishedAnimatingLocked(I)I
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$5800(Lcom/android/server/PowerManagerService;I)I

    .line 3099
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 2992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "animating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targetValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " curValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->delta:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2996
    return-void
.end method

.method forceValueLocked(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 2999
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    .line 3000
    int-to-float v0, p1

    iput v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 3001
    iget-object v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    #calls: Lcom/android/server/PowerManagerService;->setLightBrightness(II)V
    invoke-static {v0, v1, p1}, Lcom/android/server/PowerManagerService;->access$5500(Lcom/android/server/PowerManagerService;II)V

    .line 3002
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    if-eqz v0, :cond_0

    .line 3003
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/PowerManagerService$BrightnessState;->finishAnimationLocked(ZI)V

    .line 3005
    :cond_0
    return-void
.end method

.method jumpToTargetLocked()V
    .locals 4

    .prologue
    .line 3083
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$3600()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jumpToTargetLocked targetValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3084
    :cond_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    iget v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    #calls: Lcom/android/server/PowerManagerService;->setLightBrightness(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/PowerManagerService;->access$5500(Lcom/android/server/PowerManagerService;II)V

    .line 3085
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    .line 3086
    .local v0, tv:I
    int-to-float v1, v0

    iput v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 3087
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    .line 3088
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/PowerManagerService$BrightnessState;->finishAnimationLocked(ZI)V

    .line 3089
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 3116
    iget-object v5, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPowerState:I
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$1200(Lcom/android/server/PowerManagerService;)I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    .line 3117
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v5

    monitor-enter v5

    .line 3118
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3119
    .local v2, now:J
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$6000(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/PowerManagerService$BrightnessState;->stepLocked()Z

    move-result v1

    .line 3121
    .local v1, more:Z
    if-eqz v1, :cond_2

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->customizedAnimation:Z

    if-nez v4, :cond_2

    .line 3122
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$2500(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDelayInterval:I
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$5900(Lcom/android/server/PowerManagerService;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3129
    :cond_0
    :goto_0
    monitor-exit v5

    .line 3144
    .end local v1           #more:Z
    .end local v2           #now:J
    :cond_1
    :goto_1
    return-void

    .line 3123
    .restart local v1       #more:Z
    .restart local v2       #now:J
    :cond_2
    if-eqz v1, :cond_3

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->customizedAnimation:Z

    if-eqz v4, :cond_3

    .line 3124
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$2500(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v4

    iget v6, p0, Lcom/android/server/PowerManagerService$BrightnessState;->customizedDelay:I

    int-to-long v6, v6

    invoke-virtual {v4, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3129
    .end local v1           #more:Z
    .end local v2           #now:J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3125
    .restart local v1       #more:Z
    .restart local v2       #now:J
    :cond_3
    if-nez v1, :cond_0

    .line 3126
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->customizedAnimation:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3130
    .end local v1           #more:Z
    .end local v2           #now:J
    :cond_4
    sget-boolean v5, Lcom/android/server/PowerManagerService;->ANIMATE_SCREEN_LIGHTS:Z

    if-eqz v5, :cond_1

    .line 3131
    iget-object v5, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v5

    monitor-enter v5

    .line 3133
    :try_start_2
    iget-boolean v6, p0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    if-nez v6, :cond_6

    const/4 v0, 0x1

    .line 3134
    .local v0, animate:Z
    :goto_2
    if-eqz v0, :cond_5

    .line 3137
    iget-object v6, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v7, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffReason:I
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_7

    :goto_3
    #calls: Lcom/android/server/PowerManagerService;->nativeStartSurfaceFlingerAnimation(I)V
    invoke-static {v6, v4}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;I)V

    .line 3141
    :cond_5
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$6000(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/PowerManagerService$BrightnessState;->jumpToTargetLocked()V

    .line 3142
    monitor-exit v5

    goto :goto_1

    .end local v0           #animate:Z
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    :cond_6
    move v0, v4

    .line 3133
    goto :goto_2

    .line 3137
    .restart local v0       #animate:Z
    :cond_7
    :try_start_3
    iget-object v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAnimationSetting:I
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$2400(Lcom/android/server/PowerManagerService;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v4

    goto :goto_3
.end method

.method protected setCustomizedDelay(I)V
    .locals 1
    .parameter "delayInterval"

    .prologue
    .line 3106
    if-ltz p1, :cond_0

    .line 3107
    iput p1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->customizedDelay:I

    .line 3108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->customizedAnimation:Z

    .line 3112
    :goto_0
    return-void

    .line 3110
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->customizedAnimation:Z

    goto :goto_0
.end method

.method setTargetLocked(IIII)Z
    .locals 5
    .parameter "target"
    .parameter "stepsToTarget"
    .parameter "initialValue"
    .parameter "nominalCurrentValue"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3009
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->initialized:Z

    if-nez v3, :cond_1

    .line 3010
    iput-boolean v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->initialized:Z

    .line 3011
    int-to-float v3, p3

    iput v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 3012
    iget v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    iput v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->previousValue:F

    .line 3018
    :cond_0
    if-ne p1, p4, :cond_2

    .line 3046
    :goto_0
    return v1

    .line 3013
    :cond_1
    iget v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    if-ne v3, p1, :cond_0

    goto :goto_0

    .line 3026
    :cond_2
    iput p1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    .line 3027
    iget v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    int-to-float v3, v1

    if-ltz p4, :cond_5

    int-to-float v1, p4

    :goto_1
    sub-float v1, v3, v1

    int-to-float v3, p2

    div-float/2addr v1, v3

    iput v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->delta:F

    .line 3028
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$3600()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3029
    int-to-float v1, p4

    iget v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_6

    const-string v0, ""

    .line 3030
    .local v0, noticeMe:Ljava/lang/String;
    :goto_2
    const-string v1, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTargetLocked: mask="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", target="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", targetValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", delta="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->delta:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nominalCurrentValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    .end local v0           #noticeMe:Ljava/lang/String;
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    .line 3041
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$3600()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3042
    const-string v1, "PowerManagerService"

    const-string v3, "scheduling light animator"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    :cond_4
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$2500(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3045
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$2500(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v1, v2

    .line 3046
    goto/16 :goto_0

    .line 3027
    :cond_5
    iget v1, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    goto/16 :goto_1

    .line 3029
    :cond_6
    const-string v0, "  ******************"

    goto :goto_2
.end method

.method stepLocked()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3050
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->animating:Z

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 3079
    :goto_0
    return v1

    .line 3051
    :cond_0
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$3600()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3052
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Step target "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": cur="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " target="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " delta="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->delta:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    :cond_1
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    iget v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->delta:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 3056
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    float-to-int v0, v2

    .line 3057
    .local v0, curIntValue:I
    const/4 v1, 0x1

    .line 3058
    .local v1, more:Z
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->delta:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_5

    .line 3059
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    int-to-float v2, v0

    iput v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 3060
    const/4 v1, 0x0

    .line 3072
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$3600()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Animating curIntValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    :cond_3
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->previousValue:F

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    .line 3075
    iget-object v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->this$0:Lcom/android/server/PowerManagerService;

    iget v3, p0, Lcom/android/server/PowerManagerService$BrightnessState;->mask:I

    #calls: Lcom/android/server/PowerManagerService;->setLightBrightness(II)V
    invoke-static {v2, v3, v0}, Lcom/android/server/PowerManagerService;->access$5500(Lcom/android/server/PowerManagerService;II)V

    .line 3076
    int-to-float v2, v0

    iput v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->previousValue:F

    .line 3078
    :cond_4
    invoke-direct {p0, v1, v0}, Lcom/android/server/PowerManagerService$BrightnessState;->finishAnimationLocked(ZI)V

    goto/16 :goto_0

    .line 3061
    :cond_5
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->delta:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_6

    .line 3062
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    if-lt v0, v2, :cond_2

    .line 3063
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    int-to-float v2, v0

    iput v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 3064
    const/4 v1, 0x0

    goto :goto_1

    .line 3067
    :cond_6
    iget v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    if-gt v0, v2, :cond_2

    .line 3068
    iget v0, p0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    int-to-float v2, v0

    iput v2, p0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    .line 3069
    const/4 v1, 0x0

    goto :goto_1
.end method
