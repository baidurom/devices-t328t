.class public Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;
.super Ljava/lang/Object;
.source "HtcWrapSimSlotManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager$HtcWrapSimSlot;
    }
.end annotation


# static fields
.field public static final BROADCAST_SSM_ABILITY:Ljava/lang/String; = "com.basewin.braodcast.ability"

.field public static final BROADCAST_SSM_STATE:Ljava/lang/String; = "com.basewin.braodcast.state"

.field public static final PREFERENCES:Ljava/lang/String; = "SimSlotManager"

.field public static final SIM_SLOT_1:I = 0x1

.field public static final SIM_SLOT_2:I = 0x2

.field public static final SSM_PHONE_TYPE_BOTH:I = 0x3

.field public static final SSM_PHONE_TYPE_CDMA:I = 0x1

.field public static final SSM_PHONE_TYPE_GSM:I = 0x2

.field public static final SSM_PHONE_TYPE_SUB_GSM:I = 0x4

.field public static instance:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;


# instance fields
.field public mSSM:Lcom/android/internal/telephony/SimSlotManager;

.field public mSlot1:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager$HtcWrapSimSlot;

.field public mSlot2:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager$HtcWrapSimSlot;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/android/internal/telephony/SimSlotManager;->getInstance()Lcom/android/internal/telephony/SimSlotManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;->mSSM:Lcom/android/internal/telephony/SimSlotManager;

    .line 38
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager$HtcWrapSimSlot;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager$HtcWrapSimSlot;-><init>(Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;I)V

    iput-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;->mSlot1:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager$HtcWrapSimSlot;

    .line 39
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager$HtcWrapSimSlot;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager$HtcWrapSimSlot;-><init>(Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;I)V

    iput-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;->mSlot2:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager$HtcWrapSimSlot;

    .line 40
    return-void
.end method

.method public static getInstance()Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;->instance:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;

    invoke-direct {v0}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;-><init>()V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;->instance:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;

    .line 45
    :cond_0
    sget-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;->instance:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;

    return-object v0
.end method


# virtual methods
.method public getPhoneForSlot(I)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "slot"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;->mSSM:Lcom/android/internal/telephony/SimSlotManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SimSlotManager;->getPhoneForSlot(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneTypeById(I)I
    .locals 1
    .parameter "slotId"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;->mSSM:Lcom/android/internal/telephony/SimSlotManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SimSlotManager;->getPhoneTypeById(I)I

    move-result v0

    return v0
.end method

.method public getSimSlot(I)Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager$HtcWrapSimSlot;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 49
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;->mSlot1:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager$HtcWrapSimSlot;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;->mSlot2:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager$HtcWrapSimSlot;

    goto :goto_0
.end method

.method public isSwitchable(I)Z
    .locals 1
    .parameter "slotId"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;->mSSM:Lcom/android/internal/telephony/SimSlotManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SimSlotManager;->isSwitchable(I)Z

    move-result v0

    return v0
.end method

.method public isSwitching()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;->mSSM:Lcom/android/internal/telephony/SimSlotManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimSlotManager;->isSwitching()Z

    move-result v0

    return v0
.end method

.method public setPhoneTypeForSlot(II)V
    .locals 1
    .parameter "slotId"
    .parameter "phoneType"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;->mSSM:Lcom/android/internal/telephony/SimSlotManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/SimSlotManager;->setPhoneTypeForSlot(II)V

    .line 82
    return-void
.end method

.method public startManualGsmNetworkSelection()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;->mSSM:Lcom/android/internal/telephony/SimSlotManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimSlotManager;->startManualGsmNetworkSelection()V

    .line 66
    return-void
.end method

.method public startMonitor()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;->mSSM:Lcom/android/internal/telephony/SimSlotManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimSlotManager;->startMonitor()V

    .line 62
    return-void
.end method

.method public stopManualGsmNetworkSelection()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapSimSlotManager;->mSSM:Lcom/android/internal/telephony/SimSlotManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimSlotManager;->stopManualGsmNetworkSelection()V

    .line 70
    return-void
.end method
