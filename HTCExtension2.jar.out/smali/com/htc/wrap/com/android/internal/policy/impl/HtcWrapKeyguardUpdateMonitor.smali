.class public Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "HtcWrapKeyguardUpdateMonitor.java"


# static fields
.field public static final DEVICE_LOCK_TYPE_CS:I = 0x1

.field public static final DEVICE_LOCK_TYPE_DM:I = 0x2

.field public static final DEVICE_LOCK_TYPE_NONE:I


# instance fields
.field private mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 430
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 431
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 432
    return-void
.end method

.method public static getIccDetailStatus(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)[I
    .locals 1
    .parameter "updateMonitor"

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getIccDetailStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public static getIccDetailStatusExt(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)[I
    .locals 1
    .parameter "updateMonitor"
    .parameter "phoneType"

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getIccDetailStatusExt(I)[I

    move-result-object v0

    return-object v0
.end method

.method public static getKeyboardFly(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "updateMonitor"

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getKeyboardFly()Z

    move-result v0

    return v0
.end method

.method public static getNetowrkServiceStatus(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I
    .locals 1
    .parameter "updateMonitor"

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getNetowrkServiceStatus()I

    move-result v0

    return v0
.end method

.method public static getNetworkLockType(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I
    .locals 1
    .parameter "updateMonitor"

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getNetworkLockType()I

    move-result v0

    return v0
.end method

.method public static getSimState(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)Lcom/android/internal/telephony/IccCard$State;
    .locals 1
    .parameter "updateMonitor"
    .parameter "phoneType"

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    return-object v0
.end method

.method public static getSubNetowrkServiceStatus(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I
    .locals 1
    .parameter "updateMonitor"

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSubNetowrkServiceStatus()I

    move-result v0

    return v0
.end method

.method public static getSubTelephonyPlmn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "updateMonitor"

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSubTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getSubTelephonySpn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "updateMonitor"

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSubTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getUimState(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Lcom/android/internal/telephony/IccCard$State;
    .locals 1
    .parameter "updateMonitor"

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getUimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    return-object v0
.end method

.method public static registerHtcIccStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;)V
    .locals 0
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 347
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerIccStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;)V

    .line 348
    return-void
.end method

.method public static registerHtcInfoPlusCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoPlusCallback;)V
    .locals 0
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoPlusCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoPlusCallback;)V

    .line 352
    return-void
.end method

.method public static registerIccStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/HtcIfIccStateCallback;)V
    .locals 0
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 355
    check-cast p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerIccStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;)V

    .line 356
    return-void
.end method

.method public static registerInfoPlusCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/HtcIfInfoPlusCallback;)V
    .locals 0
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 359
    check-cast p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoPlusCallback;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoPlusCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoPlusCallback;)V

    .line 360
    return-void
.end method

.method public static registerNewIccStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/HtcIfNewIccStateCallback;)V
    .locals 0
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerHtcIccStateCallback(Lcom/android/internal/policy/impl/HtcIfNewIccStateCallback;)V

    .line 364
    return-void
.end method

.method public static registerNewInfoPlusCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/HtcIfNewInfoPlusCallback;)V
    .locals 0
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 367
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerHtcInfoPlusCallback(Lcom/android/internal/policy/impl/HtcIfNewInfoPlusCallback;)V

    .line 368
    return-void
.end method

.method public static registerSimExtraStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/HtcIfSimExtraStateCallback;)V
    .locals 0
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 421
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimExtraStateCallback(Lcom/android/internal/policy/impl/HtcIfSimExtraStateCallback;)V

    .line 422
    return-void
.end method

.method public static registerSubSimExtraStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/HtcIfSubSimExtraStateCallback;)V
    .locals 0
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 417
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSubSimExtraStateCallback(Lcom/android/internal/policy/impl/HtcIfSubSimExtraStateCallback;)V

    .line 418
    return-void
.end method

.method public static reportPinUnlocked(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "updateMonitor"
    .parameter "phoneType"

    .prologue
    .line 392
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportPinUnlocked(I)V

    .line 393
    return-void
.end method

.method public static reportUimPinUnlocked(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "updateMonitor"

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportUimPinUnlocked()V

    .line 383
    return-void
.end method

.method public static updateIccDetailStatus(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;III)V
    .locals 0
    .parameter "updateMonitor"
    .parameter "phoneType"
    .parameter "pin1RetryCount"
    .parameter "puk1RetryCount"

    .prologue
    .line 372
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->updateIccDetailStatus(III)V

    .line 373
    return-void
.end method

.method public static updateNetworkLockType(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "updateMonitor"
    .parameter "type"

    .prologue
    .line 413
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->updateNetworkLockType(I)V

    .line 414
    return-void
.end method

.method public static updateSimDetailStatus(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;II)V
    .locals 0
    .parameter "updateMonitor"
    .parameter "pin1RetryCount"
    .parameter "puk1RetryCount"

    .prologue
    .line 405
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->updateSimDetailStatus(II)V

    .line 406
    return-void
.end method


# virtual methods
.method public getAvailableTimeStamp()J
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getAvailableTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceLock()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDeviceLock()Z

    move-result v0

    return v0
.end method

.method public getDeviceLockType()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDeviceLockType()I

    move-result v0

    return v0
.end method

.method public getIccDetailStatus()[I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getIccDetailStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getIccDetailStatusExt(I)[I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getIccDetailStatusExt(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getKeyboardFly()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getKeyboardFly()Z

    move-result v0

    return v0
.end method

.method public getKeyboardFlyHeight()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getKeyboardFlyHeight()I

    move-result v0

    return v0
.end method

.method public getNetowrkServiceStatus()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getNetowrkServiceStatus()I

    move-result v0

    return v0
.end method

.method public getNetworkLockType()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getNetworkLockType()I

    move-result v0

    return v0
.end method

.method public getPasswordTimeout()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPasswordTimeout()Z

    move-result v0

    return v0
.end method

.method public getPinEnable()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPinEnable()Z

    move-result v0

    return v0
.end method

.method public getShowing()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getShowing()Z

    move-result v0

    return v0
.end method

.method public getSimState(I)Lcom/android/internal/telephony/IccCard$State;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    return-object v0
.end method

.method public getSubNetowrkServiceStatus()I
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSubNetowrkServiceStatus()I

    move-result v0

    return v0
.end method

.method public getSubTelephonyPlmn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSubTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSubTelephonySpn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSubTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUimState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getUimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    return-object v0
.end method

.method public getUnlockType()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getUnlockType()I

    move-result v0

    return v0
.end method

.method public isShowCallDeclinedAnimation()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isShowCallDeclinedAnimation()Z

    move-result v0

    return v0
.end method

.method public isWaitFirstFrame()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isWaitFirstFrame()Z

    move-result v0

    return v0
.end method

.method public registerHtcIccStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerIccStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;)V

    .line 286
    return-void
.end method

.method public registerHtcInfoPlusCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoPlusCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoPlusCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoPlusCallback;)V

    .line 290
    return-void
.end method

.method public registerIccStateCallback(Lcom/android/internal/policy/impl/HtcIfIccStateCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    check-cast p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerIccStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;)V

    .line 294
    return-void
.end method

.method public registerInfoPlusCallback(Lcom/android/internal/policy/impl/HtcIfInfoPlusCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    check-cast p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoPlusCallback;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoPlusCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoPlusCallback;)V

    .line 298
    return-void
.end method

.method public registerSimExtraStateCallback(Lcom/android/internal/policy/impl/HtcIfSimExtraStateCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    check-cast p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimExtraStateCallback;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimExtraStateCallback(Lcom/android/internal/policy/impl/HtcIfSimExtraStateCallback;)V

    .line 58
    return-void
.end method

.method public removeCallback(Ljava/lang/Object;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 322
    return-void
.end method

.method public reportAvailableTimeStamp(J)V
    .locals 1
    .parameter "timeStamp"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportAvailableTimeStamp(J)V

    .line 88
    return-void
.end method

.method public reportPinUnlocked(I)V
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportPinUnlocked(I)V

    .line 318
    return-void
.end method

.method public reportSimUnlocked()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 270
    return-void
.end method

.method public reportUimPinUnlocked()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportUimPinUnlocked()V

    .line 310
    return-void
.end method

.method public setKeyboardFly(I)V
    .locals 1
    .parameter "height"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setKeyboardFly(I)V

    .line 211
    return-void
.end method

.method public setKeyboardFly(Z)V
    .locals 1
    .parameter "bFly"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setKeyboardFly(Z)V

    .line 193
    return-void
.end method

.method public setPasswordTimeout(Z)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setPasswordTimeout(Z)V

    .line 154
    return-void
.end method

.method public setShowCallDeclinedAnimation(Z)V
    .locals 1
    .parameter "bShow"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setShowCallDeclinedAnimation(Z)V

    .line 184
    return-void
.end method

.method public setShowing(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setShowing(Z)V

    .line 104
    return-void
.end method

.method public setUnlockType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setUnlockType(I)V

    .line 230
    return-void
.end method

.method public setWaitFirstFrame(Z)V
    .locals 1
    .parameter "wait"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setWaitFirstFrame(Z)V

    .line 247
    return-void
.end method

.method public updateIccDetailStatus(III)V
    .locals 1
    .parameter "phoneType"
    .parameter "pin1RetryCount"
    .parameter "puk1RetryCount"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->updateIccDetailStatus(III)V

    .line 302
    return-void
.end method

.method public updateNetworkLockType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->updateNetworkLockType(I)V

    .line 75
    return-void
.end method

.method public updateSimDetailStatus(II)V
    .locals 1
    .parameter "pin1RetryCount"
    .parameter "puk1RetryCount"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->updateSimDetailStatus(II)V

    .line 67
    return-void
.end method
